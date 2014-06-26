#!/bin/sh

# applying customization changes at boot
#

echo ""
echo "I: applying customization changes"

## get the parameters selected at the boot menu
export `cat /proc/cmdline | \
   sed -e 's/live-config//' | sed -e 's/keyboard-layouts/keyb/'`


DEFAULT_EXT="en"
FILE_EXT=`echo $locales | cut -d '_' -f1`
DEFAULT_USER="cw"

## applying changes
#if [ "${FILE_EXT}" = "es" ]; then
#    mkdir -p "/home/${DEFAULT_USER}/Escritorio" "/home/${DEFAULT_USER}/Descargas"
#    chown ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/Escritorio" "/home/${DEFAULT_USER}/Descargas"
#else
#    mkdir -p "/home/${DEFAULT_USER}/{Desktop,Downloads}"
#    chown ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/{Desktop,Downloads}"
#fi
#
### /home/${DEFAULT_USER}/.gtk-bookmarks
#if [ -f "/etc/cwlive.d/etc/skel/.gtk-bookmarks.${FILE_EXT}" ]; then
#    cp -f "/etc/cwlive.d/etc/skel/.gtk-bookmarks.${FILE_EXT}" "/home/${DEFAULT_USER}/.gtk-bookmarks"
#else
#    cp -f "/etc/cwlive.d/etc/skel/.gtk-bookmarks.${DEFAULT_EXT}" "/home/${DEFAULT_USER}/.gtk-bookmarks"
#fi
#chown ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/.gtk-bookmarks"
#
### /home/${DEFAULT_USER}/.config/user-dirs.dirs and user-dirs.locale
#for file in user-dirs.dirs user-dirs.locale; do
#
#    if [ -f "/etc/cwlive.d/etc/skel/.config/${file}.${FILE_EXT}" ]; then
#        cp -f "/etc/cwlive.d/etc/skel/.config/${file}.${FILE_EXT}" "/home/${DEFAULT_USER}/.config/${file}"
#    else
#        cp -f "/etc/cwlive.d/etc/skel/.config/${file}.${DEFAULT_EXT}" "/home/${DEFAULT_USER}/.config/${file}"
#    fi
#    chown ${DEFAULT_USER}:${DEFAULT_USER} "/home/${DEFAULT_USER}/.config/${file}"
#
#done

