#!/bin/sh
rm -f /usr/lib/libgnutls.la

if cygport mailutils.cygport fetch prep compile
then
    cygport mailutils.cygport test inst pkg
fi

tar -cJf artifact.tar.xz mailutils-*/dist mailutils-*/log
