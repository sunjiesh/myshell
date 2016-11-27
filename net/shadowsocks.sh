#!/bin/bash
if [ $# != 2 ] ; then
echo "USAGE: $0 IP PASSWORD"
echo " e.g.: $0 127.0.0.1 password"
exit 1;
fi
sslocal -s$1 -k$2 -p443 -m aes-256-cfb -v
