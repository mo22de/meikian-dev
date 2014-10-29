=================== 
Using Live Meikian 
=================== 

*Meikian Live* distribution download can be made through the links on `www.meikian.eu`_ download page.

Once you download the ``iso`` file containing the distribution, you the content need to be transfered to a physical device. Procedures for performing the operation depend on both the physical device and the operating system used.

Recording to DVD 
--------------- 

No problem about the platform or operating system used, since any ``CD``/``DVD`` recording program that allows ``iso`` images recording will be able to perform this operation.

Copy to a USB storage device 
-------------------------------------------- 

Using GNU / Linux 
~~~~~~~~~~~~~~~~~~~~ 

* Using ``dd`` `command`: 

   The first step will be to connect the storage unit you want used for the copy of the distribution, it must have capacity enough to accommodate the downloaded ``iso``. If you want to create one or more additional partitions to use data persistence, the size needed space will increase depending on the size you want for those partitions. 

   After connecting the storage unit from a command console ``dmesg`` command can be used to see last message lines from ``kernel`` and get the device ID that the system assigned to it. 

   To copy the ``iso`` file, two diffeent methods can be used: 

   * The first, more correct, will be using the commands ``isoinfo`` and ``dd``: 

     For example, to obtain the information of ``meikian-live_beta1.iso`` file, the following command will be executed::


      user@meikian-dev:~$ isoinfo -d -i meikian-live_beta1.iso
           
      CD-ROM is in ISO 9660 format
      System id: 
      Volume id: Meikian_20140915
      Volume set id: 
      Publisher id: MEIKIAN
      Data preparer id: LIVE-BUILD 3.0.5-1; HTTP://PACKAGES.QA.DEBIAN.ORG/LIVE-BUILD
      Application id: MEIKIAN LIVECD
      Copyright File id: 
      Abstract File id: 
      Bibliographic File id: 
      Volume set size is: 1
      Volume set sequence number is: 1
      Logical block size is: 2048
      Volume size is: 749984
      El Torito VD version 1 found, boot catalog is in sector 76
      Joliet with UCS level 3 found
      Rock Ridge signatures version 1 found
      Eltorito validation header:
        Hid 1
        Arch 0 (x86)
        ID ''
        Key 55 AA
        Eltorito defaultboot header:
          Bootid 88 (bootable)
          Boot media 0 (No Emulation Boot)
          Load segment 0
          Sys type 0
          Nsect 4
          Bootoff 19B32 105266


From the information that the command returns the values ??of ``Logical block size`` and ``Volume size`` fields are needed.

    .. warning::
      The following process eliminates the partition table and all the information contained in the specified device, so it is imperative to be sure it is the correct device.

    The command that must be executed is::

      dd if="path to the downloaded file" bs="Logical block size" count="Volume size" of=/dev/"device identifier"
    
    Using data from the previous example for a flash drive that has been assigned a device identifier``sdb``, the following command will be executed with root privileges, either by using ``su`` or ``sudo`` command::

      user@meikian-dev:~$ sudo dd if=meikian-live_beta1.iso bs=2048 count=749984 of=/dev/sdb

  * The second, faster and usually enough, using only ``dd`` command: 

    .. warning::
      The following process eliminates the partition table and all the information contained in the specified device, so it is imperative to be sure it is the correct device.

    The command to be executed is::

      dd if="path to downloaded file" of=/dev/"device identifier"


    Using data from the previous example for a flash drive that has been assigned a device identifier``sdb``, the following command will be executed with root privileges, either by using ``su`` or ``sudo`` command::

      user@meikian-dev:~$ sudo dd if=meikian-live_beta1.iso of=/dev/sdb
    
Once the command returns control to the console, and if there has been no error during the process, the copy will be made. To start the distribution is necessary to ensure that the computer allows booting from ``USB`` devices and that the boot sequence order is correctly selected on the computer ``BIOS``.

*  With `UNetbootin`_ utility:

As in the previous section, the first step is to connect the storage unit you want to use to copy the distribution in it. It must contain a partition with ``FAT32`` file system with enough space to hold the downloaded ``iso`` file. That partition should also be mounted. If not,  one must be previously created and mounted.

The device ID assigned to the partition must be known to be selected later in `UNetbootin`_. If the partition already existed before connecting the unit, it can be obtained from a command prompt using the ``dmesg`` command to view the last lines of ``kernel`` messages. If it was created later instead, this data is already known.


Next proceed to run the ÙNetbootin`_ utility. The steps to follow once the application has been launched are:

  * Select ``Diskimage``, ``ISO`` format and browse for the ``iso`` path trough the file browser included on the application.

  * Select ``USB Drive`` and as ``Drive``, use the device ID assigned to the partition where it is going to be installed. This is normally possible from the dropdown button itself.

  * Press ``OK`` button and wait until the process is completed.

  `UNetbootin`_ modifies the distribution boot menu causing malfunction. Perform the following operation to restore it to normal.

  * The root directory of the storage unit where the distribution has been shifted contains a folder named ``syslinux`` containing a file named ``syslinux.cfg``. This file needs to be erased for then, proceed to rename the file ``syslinux.cfg.orig`` to ``syslinux.cfg``.

  From this moment the distribution will be transferred to the storage unit. When booting it is mandatory to be sure that the system allows booting from ``USB`` devices and that the proper booting sequence has been selected in the "BIOS".


Using MAC OSX
~~~~~~~~~~~~~~~~~~

On computers with MAC OSX is possible to use the same methods as for GNU/Linux, changing only the name of the device being used to dump the content of the image.

  .. note::
    It is important to note that after several test with different Apple computers, flash drives created with  `UNetbootin`_ not always start on those teams, so we recommend using the ``dd`` command from a command console to copy the distribution image.

To facilitate the utilisation of the command, `dd-gui`_ utility may be used, allowing you to use a graphical interface to perform the operations.


Using MS Windows
~~~~~~~~~~~~~~~~~~~~~

As in MAC OSX case, for computers running MS Windows it is possible to resort to using `UNetbootin`_. The only significant difference from mentioned to GNU/Linux will be the name of the storage units we are going to transfer the image of the distribution.

Another utility to perform the operation, similar to GNU/Linux ``dd`` command but using a graphical interface is `win32diskimager`_.


Using persistence for user data
----------------------------------------------

To store the information, files, settings, etc. or changes made between reboots of the *Live* distribution, it may be resorted to the use of auxiliary partitions in which the information can be stored permanently. To do this, two different types of data persistance may be chosen:

* **System data** in which all changes made in the system including the user directory is stored.
* **User data** in which only the changes made in the user directory are stored.

They are not mutually exclusive, so we can create both or either separately.

To enable data persistence it is needed to create one or both additional partitions in the free space of the ``USB`` device or hard disk and use them for a ``ext3`` or ``ext4`` type filsystem within the following volume labels:

* ``live-rw`` to enable system data persistence.
* ``home-rw`` to enable user data persistence.

If created from the *Live* distribution itself, the system must be restarted to recognize the new partitions at startup and to generate the files and directory structure required for operation.

Users
--------

Default users defined in the distribution are as follows:

* ``root`` is the admin user and is disabled by default, so to execute actions or commands with root privileges you have to resort to using ``su``, ``sudo`` or ``gksudo`` commands.
* ``user`` is the common use user of the distribution and its password is ``live``.

  .. note::
    When the distribution is installed on a hard drive it will be needed to enter the user password to execute certain commands or actions that need root privileges, but not in *Live* mode.


.. _`dd-gui`: http://www.gingerbeardman.com/dd-gui
.. _`www.meikian.eu`: http://www.meikian.eu
.. _`UNetbootin`: http://unetbootin.sourceforge.net
.. _`win32diskimager`: http://sourceforge.net/projects/win32diskimager

