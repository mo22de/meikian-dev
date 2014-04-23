#!/bin/sh

# Disable services at boot
#

echo ""
echo "I: disabling services"

for service in nfs-common rpcbind ; do
    echo "I: disable ${service}"
    update-rc.d -f ${service} remove > /dev/null
done

