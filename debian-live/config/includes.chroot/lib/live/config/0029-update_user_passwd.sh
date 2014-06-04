#!/bin/sh

# Change the default user password to "cw"
#

# "cw":"cw"
echo "I: update user password"

#echo "cw" | mkpasswd -s
sed -i -e 's/\(_PASSWORD=\)\(.*\)/\1\"nw4JRqljKcAHg\"/' /lib/live/config/0030-user-setup

