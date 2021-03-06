#!/bin/sh
rm -f /usr/lib/libgnutls.la

exit_status=0

cygport mailutils.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    cygport mailutils.cygport inst pkg || exit_status=1
    cygport mailutils.cygport test || echo "Test(s) failed."
fi

tar -cJf artifact.tar.xz mailutils-*/dist mailutils-*/log

exit $exit_status
