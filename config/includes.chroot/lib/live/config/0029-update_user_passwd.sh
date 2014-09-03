#!/bin/sh

# Change the default user password to "live"
#

# "user":"live"
echo "I: update user password"

#echo "live" | mkpasswd -s
sed -i -e 's/\(_PASSWORD=\)\(.*\)/\1\"yAt6i2bk8VBHc\"/' /lib/live/config/0030-user-setup

