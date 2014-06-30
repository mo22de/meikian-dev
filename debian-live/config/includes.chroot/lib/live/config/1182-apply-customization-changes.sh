#!/bin/sh

# applying customization changes at boot
#

echo "I: applying customization changes"

## get the parameters selected at the boot menu
export `cat /proc/cmdline | \
   sed -e 's/live-config//' | sed -e 's/keyboard-layouts/keyb/'`


DEFAULT_EXT="en"
FILE_EXT=`echo $locales | cut -d '_' -f1`
DEFAULT_USER="cw"

## applying changes
su -l ${DEFAULT_USER} -c 'xdg-user-dirs-update; xdg-user-dirs-gtk-update'

if [ "${FILE_EXT}" = "es" ]; then
    for file in "/etc/cwlive.d/desktop/${FILE_EXT}/*"; do
        cp -f "${file}" "/home/${DEFAULT_USER}/Escritorio/"
        chown -R ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/Escritorio/"
    done
else
    for file in "/etc/cwlive.d/desktop/${DEFAULT_EXT}/*"; do
        cp -f "${file}" "/home/${DEFAULT_USER}/Desktop/"
        chown -R ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/Desktop/"
    done
fi
