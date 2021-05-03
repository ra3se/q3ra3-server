# q3ra3-server

Based on [docker-quake3](https://github.com/InAnimaTe/docker-quake3) with minor tweaks to work as Rocket Arena 3 server. Requires pak0.pk3 from Quake 3.

## docker example

```console
docker run -d \
    --name q3ra3 \
    -p 27960:27960/udp \
    -v "${PWD}/pak0.pk3:/usr/share/games/quake3/baseq3/pak0.pk3" \
    -v "${PWD}/server.cfg:/usr/share/games/quake3/arena/server.cfg"
    -v "${PWD}/arena.cfg:/usr/share/games/quake3/arena/arena.cfg"
    ra3se/q3ra3-server
```

## docker-compose example

```yaml
version: "3"

services:
  q3ra3:
    image: ra3se/q3ra3-server
    ports:
      - "27960:27960/udp"
    volumes:
      - "${PWD}/pak0.pk3:/usr/share/games/quake3/baseq3/pak0.pk3"
      - "${PWD}/server.cfg:/usr/share/games/quake3/arena/server.cfg"
      - "${PWD}/arena.cfg:/usr/share/games/quake3/arena/arena.cfg"
```