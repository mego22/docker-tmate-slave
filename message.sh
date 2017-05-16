#!/bin/sh

. /tmp/exportkeys.sh

echo "Add this to your ~/.tmate.conf file"
echo set -g tmate-server-host ${HOST:-<server ip/hostname>}
echo set -g tmate-server-port ${PORT:-<server port>}
echo set -g tmate-server-rsa-fingerprint   \"$RSA\" 
echo set -g tmate-server-ecdsa-fingerprint   \"$ECDSA\"
echo set -g tmate-identity \"\"
