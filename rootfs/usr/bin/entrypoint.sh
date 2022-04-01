#! /bin/sh
#
# entrypoint.sh

set -e

cd /frpc

if [ ! -f /config/frpc.ini ]; then
  cp /frpc/frpc.ini /config/
  fi

./frpc -c /config/frpc.ini
