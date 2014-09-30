#!/bin/sh
mkdir -p ~/learning-debian/gruezi/DEBIAN
mkdir -p ~/learning-debian/gruezi/usr/bin 
mkdir -p ~/learning-debian/gruezi/usr/share/man/man1
mkdir -p ~/learning-debian/gruezi/usr/share/doc/gruezi

cp debian-binary ~/learning-debian
cp control ~/learning-debian/gruezi/DEBIAN
cp gruezi ~/learning-debian/gruezi/usr/bin/gruezi
cp gruezi.1 ~/learning-debian/gruezi/usr/share/man/man1
cp copyright ~/learning-debian/gruezi/usr/share/doc/gruezi
cp changelog.Debian ~/learning-debian/gruezi/usr/share/doc/gruezi

cd ~/learning-debian

gzip -f9 gruezi/usr/share/man/man1/gruezi.1 
gzip -9 gruezi/usr/share/doc/gruezi/changelog.Debian

find gruezi/usr -type f -exec md5sum {} \; > gruezi/DEBIAN/md5sums

tar cz -C gruezi/DEBIAN -f control.tar.gz .
tar cz --exclude=DEBIAN -C gruezi -f data.tar.gz .

ar rcu gruezi.deb debian-binary control.tar.gz data.tar.gz

rm data.tar.gz
rm control.tar.gz
rm debian-binary
