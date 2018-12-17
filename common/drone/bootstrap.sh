#!/bin/sh
#
# bootstrap.sh

[ "$XLINT" ] && exit 0

./xbps-src binary-bootstrap $1
