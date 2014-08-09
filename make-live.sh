#!/bin/bash

###
### Debian-Live v3.x-CW
### 2014/01/05

if [ $# = 0 ]; then
    echo -e "\nError: please add the image type to build (iso|iso-hybrid|usb-hdd|tar)\n"
    exit 0
fi 


## default values
HOME_DIR="/home/debian-live/"
BUILD_DIR="${HOME_DIR}/cw-live"

file_date=`date +"%Y%m%d"`
file_name="cw-live_${file_date}"
msgs_date=`date +"%Y/%m/%d"`


## raise the hard-limit and soft-limit values for the permitted maximum number of opened files
ulimit -Hn 32768
ulimit -Sn 32768

## clean the working directory
lb clean --all

## update the current date in the isolinux menu
if [ -e "${BUILD_DIR}/config/bootloaders/isolinux/stdmenu.cfg.in" ]; then
    sed "s#<DATE>#${msgs_date}#" "${BUILD_DIR}/config/bootloaders/isolinux/stdmenu.cfg.in" \
      > "${BUILD_DIR}/config/bootloaders/isolinux/stdmenu.cfg"
fi

## create a compressed file with all the files needed to build the distro
if [ ! -e "${HOME_DIR}/${file_name}.tgz" ]; then
    rm -f "${HOME_DIR}/${file_name}.tgz"
    tar cvfzp "${HOME_DIR}/${file_name}.tgz" "${BUILD_DIR}"    \
        --exclude "${BUILD_DIR}/cache"
    # uncomment the following line to include the compressed file within the .iso file
    #mv -f "${HOME_DIR}/${file_name}.tgz" "${BUILD_DIR}/config/includes.binary"
fi

## setup the "live" system
lb config                                                             \
    --distribution wheezy --system live                               \
    --architectures i386 --linux-flavours "486 686-pae"               \
    --linux-packages linux-image-3.2.0-4                              \
    --apt apt --apt-indices false --apt-recommends false              \
    --apt-secure true --security true --apt-source-archives true      \
    --updates false                                                   \
    --parent-mirror-bootstrap "http://ftp.es.debian.org/debian/"      \
    --parent-mirror-chroot "http://ftp.es.debian.org/debian/"         \
    --parent-mirror-chroot-security "http://security.debian.org"      \
    --parent-mirror-chroot-updates "http://ftp.es.debian.org/debian/" \
    --parent-mirror-binary "http://ftp.es.debian.org/debian/"         \
    --parent-mirror-binary-security "http://security.debian.org"      \
    --parent-mirror-binary-updates "http://ftp.es.debian.org/debian/" \
    --mirror-bootstrap "http://ftp.es.debian.org/debian/"             \
    --mirror-chroot "http://ftp.es.debian.org/debian/"                \
    --mirror-chroot-security "http://security.debian.org"             \
    --mirror-chroot-updates "http://ftp.es.debian.org/debian/"        \
    --mirror-binary "http://ftp.es.debian.org/debian/"                \
    --mirror-binary-security "http://security.debian.org"             \
    --mirror-binary-updates "http://ftp.es.debian.org/debian/"        \
    --parent-archive-areas "main contrib non-free"                    \
    --archive-areas "main contrib non-free"                           \
    --binary-images ${1}                                              \
    --iso-volume "CloneWars_${file_date}"                             \
    --iso-application "CloneWars LiveCD"                              \
    --iso-publisher "CloneWars"                                       \
    --bootappend-live "boot=live config hostname=cw-live username=cw noeject" \
    --memtest none                                                    \
    --win32-loader true                                               
#    --win32-loader true                                              \
#    --debian-installer live

## start the building process
lb build | tee "${BUILD_DIR}/${file_name}.log" 2>&1

