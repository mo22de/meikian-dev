=========
Licenses
=========

`Meikian Live`_ is `Free Software`_. It consists on 2 main elements, the system to build the distribution and he distribution itself, counting each one with specific peculiarities in terms of their licenses.

The source code of all the software included in both cases, which is necessary to make publicly accesible to meet the requirements of the different licenses, is available through the following sources:

* The official `repositories`_ of `Debian`_ GNU/Linux

* The official webpages of the companies and developers who release those programs

* The official `Meikian Live`_ `repository`_ on `GitHub`_


Distribution building system
--------------------------------------

The distribution building system is based on `DebianLive`_, a `Debian`_ GNU/Linux system for building custimised *Live* systems::

    Copyright ©  2006-2013 Debian Live Project

    This program is free software: you can redistribute it and/or modify it under the terms 
    of the GNU General Public License as published by the Free Software Foundation, either 
    version 3 of the License, or (at your option) any later version.
 
Link to the `GNU General Public License`_


Own scripts and custom content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``scripts`` and other own content made specifically for `Meikian Live`_::

    Copyright ©  2014 The Meikian Project

    This program is free software: you can redistribute it and/or modify it under the terms 
    of the GNU General Public License as published by the Free Software Foundation, either 
    version 3 of the License, or (at your option) any later version.

    Link to the `GNU General Public License`_


Other included files or projects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Grub Legacy`_ ::

    Copyright ©  1996  Erich Boleyn <erich@uruk.org>
    Copyright ©  1999-2000  Free Software Foundation, Inc.

    This program is free software; you can redistribute it and/or modify it under the terms 
    of the GNU General Public License as published by the Free Software Foundation; either
    version 3 of the License, or (at your option) any later version.

    Link to the `GNU General Public License`_


* `Grub`_ ::

    Copyright © 1999-2009  Free Software Foundation, Inc.

    This program is free software; you can redistribute it and/or modify it under the terms
    of the GNU General Public License as published by the Free Software Foundation; either 
    version 3 of the License, or (at your option) any later version.

    Link to the `GNU General Public License`_


* `Memtest86+`_ ::

    Copyright © 2004,2005,2007,2009 by Samuel Demeulemeester <memtest@memtest.org>, based on
    memtest86 by Chris Brady <cbrady@sgi.com>, and various contributors.

    This program is free software; you can redistribute it and/or modify it under the terms
    of the GNU General Public License as published by the Free Software Foundation; version
    2 dated June, 1991.

    Link to the `GNU General Public License v2`_


* `pci.ids`_ ::

    Maintained by Martin Mares <mj@ucw.cz> and other volunteers from the PCI ID Project at 
    http://pci-ids.ucw.cz/.

    This file can be distributed under either the GNU General Public License (version 2 or 
    higher) or the 3-clause BSD License.

  Link to the `3-clause BSD License`_

  Link to the `GNU General Public License v2`_


* `Syslinux`_ ::

    Copyright © 1994-2011 H. Peter Anvin <hpa@zytor.com>

    This program is free software; you can redistribute it and/or modify it under the terms
    of the GNU General Public License as published by the Free Software Foundation; either 
    version 2 of the License, or (at your option) any later version.

  Link to the `GNU General Public License v2`_



Meikian Live Distribution
-------------------------

All software included in the distribution use free licenses, with the exception of `Repetier-host`_ that only allows its free use and redistribution.


Software contained in Debian GNU/Linux repositories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All the software listed in the official `Debian`_ GNU/Linux repositories, save the information corresponding to ``copyright`` and their licenses in the documentation directory of each package.

This information can be found from the distribution itself, accessing to ``/usr/share/doc/"package name"``. 


Software specifically packaged for the distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All software specifically packaged for the distribution  store the information corresponding to ``copyright`` and the licenses they are subject to within the directory of the program itself or the documentation of each package.

In most cases it is available from the distribution itself accessing to ``/usr/local/doc/"package name"``.


Other software or projects included
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `LinuxCNC`_ ::

    Most of LinuxCNC is covered by the GNU General Public License. Some portions are
    covered by the GNU Lesser General Public License (mostly interface definitions).

  Link to the `GNU General Public License v2`_

  Link to the `GNU Lesser General Public License v2.1`_


Software subject to "non-free" licenses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Repetier-host`_ ::

    EULA (End User License Agreement) for Repetier-Host (hereinafter called software)

    IMPORTANT, PLEASE READ THIS AGREEMENT CAREFULLY before you start installing the
    software.

    This EULA is a legal agreement between you (hereinafter called licensee) and the
    company Hot-World GmbH & Co. KG (hereinafter called licensor). By installing or 
    using the software, you agree that you accept this agreement binding. If you do 
    not agree with this agreement, do not install and use the software.

    The software is protected by copyright. All rights to the program remain with the
    licensor.

    · 1 License
    The licensor grants you a non-exclusive, non-sublicensable, non-transferable, 
    limited license for this software. The software is free for personal and 
    commercial use. It can be installed on as many computers as you like. It can be 
    freely distributed and copied.

     · 2 Support und Updates
     The licensor is not obligated to provide support, fix bugs or provide updates. 
     In what type and frequency this happens is solely the responsibility of the 
     licensor.

     · 3 Costs
     By installing and using the software no costs arise.

     · 4 Restrictions
     Reverse engineering, decompilation and disassembling the software are prohibited.
     The software is based on Repetier-Host version 0.90 with Apache License, Version
     2.0. Newly developed codes including bug fixes are no longer under the Apache 
     License, Version 2.0. Exceptions are the translations, which still have an Apache
     License, Version 2.0.

     · 5 Warranty restriction
     The Software is provided "as is" without warranty of any kind, either express or
     implied, including without limitation any implied warranties of condition, 
     uninterrupted use, merchantability, fitness for a particular purpose, or 
     non-infringement. The Licensor does not give any guarantee or warranty to the 
     accuracy or completeness of the software and the provided functions or their 
     products. The licensor is not liable for any damages or viruses, trojans, 
     malware or other malicious software that result from the use of the software. 
     The program was written by the licensor to the best of knowledge and belief 
     without malicious programs.

     · 6 Limitation of Liability
     The author of this program is not liable for damage to software or hardware, or
     property damage caused by the use of the program, unless they are based on gross
     negligence or intent on the part of the author, his agents or his legal 
     representatives.

     Warning: 3D printers contain parts that are very hot and can cause a fire in 
     case of errors or misuse. Therefore, 3D printers may only be operated under 
     constant supervision. Also, toxins can be set free upon melting the filament 
     depending on the material. Contact the manufacturer of the filament to ask for 
     risks and dangers. The 3D printer may therefore be used only in well-ventilated 
     areas.

     · 7 Privacy Policy
     The Repetier-Host will automatically connect to the Internet to retrieve data 
     from web servers to check for updates or to download advertising contents. It 
     will not transmit personal data, statistics or files.

     · 8 Third-Party Software
     This software contains or is accompanied by third-party software, data or other 
     materials, which supplement the Repetier-Host functionality. For these programs,
     the licenses of the software applies. By accepting this license, you acknowledge
     and agree that you comply with the third-party terms and conditions and that the
     licensor has no responsibility and gives no warrenties for third-party software.
     You find these terms and conditions on the third-party web pages or in the about
     boxes.



.. _`3-clause BSD License`: http://opensource.org/licenses/BSD-3-Clause
.. _`Debian`: http://www.debian.org
.. _`DebianLive`: http://live.debian.net
.. _`GitHub`: https://github.com
.. _`GNU General Public License v2`: http://www.gnu.org/licenses/gpl-2.0.txt
.. _`GNU General Public License`: http://www.gnu.org/licenses/gpl-3.0.txt
.. _`GNU Lesser General Public License v2.1`: http://www.gnu.org/licenses/lgpl-2.1.txt
.. _`GNU Lesser General Public License`: http://www.gnu.org/licenses/lgpl-3.0.txt
.. _`GRUB Legacy`: https://www.gnu.org/software/grub/grub-legacy.html
.. _`GRUB`: https://www.gnu.org/software/grub/index.html
.. _`HDT`: http://hdt-project.org
.. _`LinuxCNC` : http://www.linuxcnc.org
.. _`Meikian Live`: http://www.meikian.eu
.. _`Memtest86+`: http://www.memtest.org
.. _`pci.ids`: http://pci-ids.ucw.cz
.. _`Repetier-host`: http://www.repetier.com/documentation/repetier-host
.. _`repository`: https://github.com/ctemescw/meikian-dev
.. _`repositories`: http://packages.debian.org
.. _`Free Software`: http://es.wikipedia.org/wiki/Software_libre
.. _`Syslinux`: http://www.syslinux.org

