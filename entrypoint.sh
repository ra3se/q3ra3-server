#!/bin/sh

if [ -z "$G_ADMINPASS" ]; then
  G_ADMINPASS=$(cat /proc/sys/kernel/random/uuid | tr -d '-')
  export G_ADMINPASS
fi

if [ -z "$RCONPASSWORD" ]; then
  RCONPASSWORD=$(cat /proc/sys/kernel/random/uuid | tr -d '-')
  export RCONPASSWORD
fi

exec "$@"