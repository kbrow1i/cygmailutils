#!/bin/sh
rm -f /usr/lib/libgnutls.la

set -e

echo fetching...
cygport mailutils.cygport fetch

echo prepping...
cygport mailutils.cygport prep

echo compiling...
cygport mailutils.cygport compile

echo installing...
cygport mailutils.cygport inst

echo packaging...
cygport mailutils.cygport pkg

set +e

echo testing...
cygport mailutils.cygport test

tar -cJf artifact.tar.xz mailutils-*/dist mailutils-*/log
