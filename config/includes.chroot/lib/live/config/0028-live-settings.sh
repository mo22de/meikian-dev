#!/bin/sh

# changing the distro's default setup values at boot
#

echo ""
echo "I: changing the distro's default setup values"

## get the parameters selected at the boot menu
export `cat /proc/cmdline | \
   sed -e 's/live-config//' | sed -e 's/keyboard-layouts/keyb/'`


DEFAULT_EXT="en"
FILE_EXT=`echo $locales | cut -d '_' -f1`

## applying changes
for file in live-setup.conf user-setup.conf; do

    [ -f "/etc/live/config/${file}" ] && rm -f "/etc/live/config/${file}"

    if [ -f "/etc/meikian.d/etc/live/config/${file}.${FILE_EXT}" ]; then
        cp -f "/etc/meikian.d/etc/live/config/${file}.${FILE_EXT}" "/etc/live/config/${file}"
    else
        cp -f "/etc/meikian.d/etc/live/config/${file}.${DEFAULT_EXT}" "/etc/live/config/${file}"
    fi

done

