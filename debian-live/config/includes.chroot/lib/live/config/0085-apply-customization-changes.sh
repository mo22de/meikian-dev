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

## applying changes

