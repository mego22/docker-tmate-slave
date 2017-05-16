#!/bin/sh

RSA=`ssh-keygen -l -f /etc/tmate-keys/ssh_host_rsa_key -E md5 2>&1 | cut -d\  -f 2 | sed s/MD5://`
ECDSA=`ssh-keygen -l -f /etc/tmate-keys/ssh_host_ecdsa_key -E md5 2>&1 | cut -d\  -f 2 | sed s/MD5://`

echo "export RSA=\"${RSA}\"" >> /tmp/exportkeys.sh
echo "export ECDSA=\"${ECDSA}\"" >> /tmp/exportkeys.sh
