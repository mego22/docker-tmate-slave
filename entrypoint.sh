#!/bin/sh
set -e

mode="$1"

case $mode in

run)
  if [ -n "${HOST}" ]; then
    hostopt="-h ${HOST}"
  fi
  exec /bin/tmate-slave $hostopt -p ${PORT:-2222} -k /etc/tmate-keys 2>&1
  ;;

config)
  /bin/sh /tmp/message.sh
  ;;
*)
  $mode
  ;;

esac
