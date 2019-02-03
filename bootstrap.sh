#!/bin/bash

user="$USER"
prefix="ssh-"
username=${user#$prefix}
userdir=/www/htdocs/${username}
cd ${userdir}/bin
curl -sSLo brotli.zip https://dl.bintray.com/eustas/brotli/brotli-linux-2018-11-12.zip
unzip brotli.zip
rm brotli.zip
echo "alias brotli='${userdir}/bin/brotli'" >> ${userdir}/.bashrc
source /.bashrc
brotli --version