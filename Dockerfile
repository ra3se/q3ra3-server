FROM debian:latest as builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    gcc \
    libcurl4-openssl-dev \
    make \
    unzip \
    wget \
    git \
    zip \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /build
WORKDIR /build

RUN git clone https://github.com/inolen/ra3_176_decomp.git && \
    cd ra3_176_decomp/ra3-sdk && \
    ENABLE_QVM=1 make && \
    mkdir -p vm && \
    mv build/qagame.qvm vm/ && \
    zip -m vmarena.pk3 vm/qagame.qvm

RUN wget http://ftp2.de.freebsd.org/pub/misc/ftp.idsoftware.com/idstuff/quake3/linux/linuxq3apoint-1.32b-3.x86.run && \
    chmod +x linuxq3apoint-1.32b-3.x86.run && \
    ./linuxq3apoint-1.32b-3.x86.run --tar xvf && \
    rm linuxq3apoint-1.32b-3.x86.run

RUN wget https://github.com/ec-/Quake3e/archive/refs/tags/latest.zip && \
    unzip latest.zip && \
    rm latest.zip && \
    cd Quake3e-latest && \
    make install BUILD_CLIENT=0 BUILD_SERVER=1 DESTDIR=/quake3

# =====================================

FROM debian:latest 
RUN useradd -ms /bin/bash -d /quake3 q3
RUN mkdir -p /quake3/arena/vm && \
    mkdir -p /arena && \
    chown -R q3:q3 /quake3 && \
    chown -R q3:q3 /arena

# Perl is already included in the image, no need to install

WORKDIR /quake3

COPY --from=builder --chown=q3 /build/baseq3 /quake3/baseq3
COPY --from=builder --chown=q3 /quake3 /quake3

COPY --chown=q3 ./arena /quake3/arena
COPY --from=builder --chown=q3 /build/ra3_176_decomp/ra3-sdk/vmarena.pk3 /quake3/arena/vmarena.pk3
COPY --chown=q3 ./getstatus.pl /quake3/getstatus.pl

USER q3
EXPOSE 27960/udp

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s --retries=3 \
    CMD /quake3/getstatus.pl | grep -q "statusResponse" || exit 1

ENV SV_STRICTAUTH 0    
ENV ARENACFG arena.cfg
ENV COM_HUNKMEGS 64
ENV G_CHATFLOOD 5:5:2
ENV G_MOTD Welcome to Rocket Arena 3...
ENV G_TRACKPLAYERS 1
ENV G_TRACKSTATS 1
ENV G_VOTEINTERVAL 30
ENV G_VOTEPERCENT 60
ENV SV_FLOODPROTECT 0
ENV SV_FPS 30
ENV SV_HOSTNAME Rocket Arena 3 1.7 Server
ENV SV_MAXCLIENTS 16
ENV SV_PRIVATECLIENTS 0
ENV SV_PRIVATEPASSWORD qwerty
ENV SV_STRICTAUTH 0
ENV TIMELIMIT 30
ENV LOCATION 0
ENV MAP ra3map10

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD /quake3/quake3e.ded.x64 \
    +set fs_game arena \
    +set net_port 27960 \
    +set vm_game 0 \
    +set sv_pure 0 \
    +set bot_enable 0 \
    +set dedicated 2 \
    +set sv_strictauth ${SV_STRICTAUTH} \
    +set arenacfg ${ARENACFG} \
    +set com_hunkmegs ${COM_HUNKMEGS} \
    +set g_adminpass ${G_ADMINPASS} \
    +set g_chatFlood ${G_CHATFLOOD} \
    +set g_motd ${G_MOTD} \
    +set g_trackPlayers ${G_TRACKPLAYERS} \
    +set g_trackStats ${G_TRACKSTATS} \
    +set g_voteInterval ${G_VOTEINTERVAL} \
    +set g_votePercent ${G_VOTEPERCENT} \
    +set rconPassword ${RCONPASSWORD} \
    +set sv_floodprotect ${SV_FLOODPROTECT} \
    +set sv_fps ${SV_FPS} \
    +set sv_hostname ${SV_HOSTNAME} \
    +set sv_maxclients ${SV_MAXCLIENTS} \
    +set sv_privateClients ${SV_PRIVATECLIENTS} \
    +set sv_privatePassword ${SV_PRIVATEPASSWORD} \
    +set sv_strictauth ${SV_STRICTAUTH} \
    +set timelimit ${TIMELIMIT} \
    +sets location ${LOCATION} \
    +map ${MAP} \
    +exec server.cfg
