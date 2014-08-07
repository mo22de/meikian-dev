==============
CloneWars Live
==============

La idea detrás del origen de *CloneWars Live* es la de proporcionar un entorno de trabajo con las herramientas más habituales para el trabajo con impresoras 3D (diseño de piezas e impresión), `Arduino`_, circuitos electrónicos, CNC, RC, robótica, etc, así como documentación relacionada. 

.. _`Arduino`: http://www.arduino.cc

Los puntos principales que se han tenido en cuenta en su desarrollo son:

* Que sea un **sistema libre**. Ha de permitir su libre uso, modificación y redistribución a cualquier persona interesada en su utilización.

* Un **bajo consumo de recursos**. Es importante que los recursos necesarios para su funcionamiento sean bajos, ya que esto posibilitará su uso en una mayor cantidad de equipos y al mismo tiempo permite la reutilización y aprovechamiento de máquinas más antiguas.

¿Qué es una distribución "Live"?
================================

Una distribución *Live* es un un conjunto formado por un sistema operativo, programas adicionales y configuraciones, que está preparado para arrancar y ejecutarse desde un dispositivo extraible (``CD``/``DVD-ROM``, memoria o disco duro ``USB``, etc), permitiendo trabajar con él sin afectar al sistema operativo y a los programas o configuraciones del equipo en el que se ejecuta.

Base tecnológica
================

Para el desarrollo de la distribución se ha empleado `Debian`_ GNU/Linux como sistema operativo base. Es una de las distribuciones GNU/Linux más antiguas que existen en la actualidad y que goza de una salud excelente, tal y como lo demuestra el hecho de que se siga usando como base para muchas distribuciones, algunas de ellas muy populares, como es el caso de `Ubuntu`_ o `LinuxMint`_.

El sistema utilizado para su desarrollo es `LiveDebian`_, un sistema propio de `Debian`_ para la creación de sistemas *Live* personalizados.

.. _`Debian`: http://www.debian.org
.. _`Ubuntu`: http://www.ubuntu.com
.. _`LinuxMint`: http://www.linuxmint.com
.. _`LiveDebian`: http://live.debian.net

Recursos
========

* La página `CWLive`_ creada dentro del ``Wiki`` de `RepRap.org`_.

* El código y ficheros necesarios para generar una imagen de la distribución partiendo de cero están disponibles en el repositorio `cwlive-dev`_ de `GitHub`_.

* La documentación completa del proyecto se encuentra disponible *on line* a través de la dirección `clonewars-live.readthedocs.org`_.

.. _`clonewars-live.readthedocs.org`: http://clonewars-live.readthedocs.org/es/latest
.. _`GitHub`: https://github.com
.. _`cwlive-dev`: https://github.com/ctemescw/cwlive-dev
.. _`RepRap.org`: http://reprap.org
.. _`CWLive`: http://reprap.org/wiki/Clone_Wars:_CWLive

Requisitos de hardware
======================

Los requerimientos necesarios para hacer funcionar *CloneWars Live* son relativamente modestos si se comparan con los recursos de hardware de los que dispone cualquier equipo actual, enumerándose únicamente los mínimos recomendados. A su vez, el consumo total de recursos también está determinado por las tareas que se lleven a cabo, por lo que no es aconsejable utilizar la distribución con menos recursos de los especificados para que sea posible trabajar con un mínimo de comodidad en la mayoría de los programas incluidos:

* **Memoria**: cantidad mínima recomendada de 512MB de memoria ``RAM``

  .. note::
    Si se dispone de espacio libre **no particionado** en el disco duro del equipo, o en el dispositivo desde el que se está arrancando, se puede mejorar el rendimiento creando particiones para ``memoria de intercambio`` o ``swap`` y/o para ``persistencia de datos``. De esta manera se libera parte de la memoria ``RAM`` utilizada y se deja disponible para que pueda ser usada por el sistema operativo y los programas.

* **Procesador**: procesador mínimo recomendado Intel Pentium3/Pentium4 o equivalente.

Hardware probado con la distribución
====================================

Equipos
-------

* Acer Aspire 7750G: OK
* Apple MacBook Air 11" 2011: OK
* Apple MacBook Pro 5.1 15" late 2008: No detecta el arranque. KO
* Apple MacBook Pro Retina 11.2 15" late 2013: Arranca con algunos problemas, aunque no detecta la tarjeta WiFi
* Apple MacMini 2012: Arranca con algunos problemas, aunque no detecta la tarjeta WiFi
* Asus A55VD: OK
* Asus EeePC T101MT: OK
* Asus X54H: ---
* Clevo D400E: OK
* Dell Inspiron n5050: OK
* Dell Latitude D610: Interfaz WiFi es "eth*" no "wlan*". OK
* Dell Latitude E6400: OK
* Dell XPS L521X: OK
* HP 500B MT: OK
* HP Compaq NX9030: Interfaz WiFi es "eth*" no "wlan*". OK
* Lenovo n500: OK
* Lenovo x200s: OK
* PackardBell EasyNote A7738: Interfaz WiFi es "eth*" no "wlan*". OK


Tarjetas controladoras
----------------------

* `Arduino Mega 2560`_ + `RAMPS 1.4`_
* `Gen7 1.4.1`_
* `Gen7 1.5`_
* `Megatronics v2.0`_
* Megatronics v3.0
* `Sanguinololu 1.3a`_
* `SAV MKI`_ + `SAV 3D LCD`_

.. _`Arduino Mega 2560`: http://arduino.cc/en/Main/arduinoBoardMega2560
.. _`Gen7 1.4.1`: http://reprap.org/wiki/Gen7_Board_1.4.1
.. _`Gen7 1.5`: http://reprap.org/wiki/Gen7_Board-AVR_1.5
.. _`Megatronics v2.0`: http://reprap.org/wiki/Megatronics_2.0
.. _`RAMPS 1.4`: http://reprap.org/wiki/RAMPS_1.4/es
.. _`Sanguinololu 1.3a`: http://reprap.org/wiki/Sanguinololu/es
.. _`SAV 3D LCD`: http://reprap.org/wiki/SAV_3D_LCD
.. _`SAV MKI`: http://reprap.org/wiki/SAV_MKI/es
