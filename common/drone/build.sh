#!/bin/sh
#
# build.sh

[ "$XLINT" ] && exit 0 

PKGS=$(./xbps-src sort-dependencies $(cat /tmp/templates | sed '/=>/d' | sed '/\n/d') | sed '/=>/d' | sed '/\n/d')

echo "$PKGS"

for pkg in ${PKGS}; do
	./xbps-src pkg "$pkg"
	[ $? -eq 1 ] && exit 1
done

exit 0
