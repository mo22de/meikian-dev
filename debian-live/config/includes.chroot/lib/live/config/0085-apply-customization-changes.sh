#!/bin/sh

# apply customization changes at boot
#

echo ""
echo "I: applying customization changes"

## get the parameters selected at the boot menu
export `cat /proc/cmdline | \
   sed -e 's/live-config//' | sed -e 's/keyboard-layouts/keyb/'`


DEFAULT_EXT="en"
FILE_EXT=`echo $locales | cut -d '_' -f1`

## change the locale settings for CW-Live
[ -f /etc/live/config/live-setup.conf ] && rm -f /etc/live/config/live-setup.conf

if [ -f /etc/cwlive.d/etc/live/config/live-setup.conf.${FILE_EXT} ]; then
    cp /etc/cwlive.d/etc/live/config/live-setup.conf.${FILE_EXT} /etc/live/config/live-setup.conf
else
    cp /etc/cwlive.d/etc/live/config/live-setup.conf.${DEFAULT_EXT} /etc/live/config/live-setup.conf
fi

[ -f /etc/live/config/user-setup.conf ] && rm -f /etc/live/config/user-setup.conf

if [ -f /etc/cwlive.d/etc/live/config/user-setup.conf.${FILE_EXT} ]; then
    cp /etc/cwlive.d/etc/live/config/user-setup.conf.${FILE_EXT} /etc/live/config/user-setup.conf
else
    cp /etc/cwlive.d/etc/live/config/user-setup.conf.${DEFAULT_EXT} /etc/live/config/user-setup.conf
fi

