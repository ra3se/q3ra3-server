# Quake 3 Rocket Arena 3 Server

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/ra3se/q3ra3-server)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ra3se/q3ra3-server)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/ra3se/q3ra3-server)

Quake 3 server for Rocket Arena 3 using Quake3e. Requires pak0.pk3 from original install.

## Options

You can change the most common settings using enviromental flags

| Option             | Default value                | Description                                                             |
| ------------------ | ---------------------------- | ----------------------------------------------------------------------- |
| ARENACFG           | arena.cfg                    | The name of the arena config file.                                      |
| COM_HUNKMEGS       | 64                           | Memory allocated for server                                             |
| G_ADMINPASS        | foo                          | In-game admin password                                                  |
| G_CHATFLOOD        | 5:5:2                        | Chat flood protection                                                   |
| G_MOTD             | Welcome to Rocket Arena 3... | This message will scroll on the bottom of the arena selection menu      |
| G_TRACKPLAYERS     | 1                            | Enable player tracking                                                  |
| G_TRACKSTATS       | 1                            | Enable stats tracking                                                   |
| G_VOTEINTERVAL     | 30                           | Minimum of seconds between allowed callvote command                     |
| G_VOTEPERCENT      | 60                           | Votepercent for callvote commands                                       |
| LOCATION           | 0                            | Set server region information, se list below                            |
| MAP                | ra3map10                     | Set initial map                                                         |
| RCONPASSWORD       | foo                          | Remote console password                                                 |
| SV_FLOODPROTECT    | 0                            | sv_floodprotect to 0                                                    |
| SV_FPS             | 30                           | Set server fps                                                          |
| SV_HOSTNAME        | Rocket Arena 3 1.7 Server    | Set your server's name                                                  |
| SV_MAXCLIENTS      | 16                           | Set the max number of clients to connect                                |
| SV_PRIVATECLIENTS  | 0                            | Uncomment this var to reserve spots for people with the privatePassword |
| SV_PRIVATEPASSWORD | qwerty                       | Set the private password to use the private spots with                  |
| SV_STRICTAUTH      | 0                            | You will want to disable strictauth because it's broken and not needed  |
| TIMELIMIT          | 30                           | Set the time to cycle maps, ra3 does not use fraglimit, only timelimit  |

### Locations

Use the following for location:

* Region 0: No Region Specified (any Region)
* Region 1: Southeast US
* Region 2: Western US
* Region 3: Midwest US
* Region 4: Northwest US, West Canada
* Region 5: Northeast US, East Canada
* Region 6: United Kingdom
* Region 7: Continental Europe
* Region 8: Central Asia, Middle East
* Region 9: Southeast Asia, Pacific
* Region 10: Africa
* Region 11: Australia / NZ / Pacific
* Region 12: Central, South America

## docker example

```console
docker run -d \
    --name q3ra3 \
    -p 27960:27960/udp \
    -e "G_ADMINPASS=CHANGE_THIS_PASSWORD" \
    -e "RCONPASSWORD=CHANGE_THIS_PASSWORD" \
    -v "./pak0.pk3:/quake3/baseq3/pak0.pk3" \
    -v "./server.cfg:/quake3/arena/server.cfg" \
    -v "./arena.cfg:/quake3/arena/arena.cfg" \
    ra3se/q3ra3-server
```

## docker-compose example

```yaml
version: "3"

services:
  q3ra3:
    image: ra3se/q3ra3-server
    restart: always
    environment:
      G_ADMINPASS: "CHANGE_THIS_PASSWORD"
      RCONPASSWORD: "CHANGE_THIS_PASSWORD"
    ports:
      - "27960:27960/udp"
    volumes:
      - "${PWD}/pak0.pk3:/usr/share/games/quake3/baseq3/pak0.pk3"
      - "${PWD}/server.cfg:/usr/share/games/quake3/arena/server.cfg"
      - "${PWD}/arena.cfg:/usr/share/games/quake3/arena/arena.cfg"
```
