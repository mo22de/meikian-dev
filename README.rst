===============
Clone-Wars Live
===============

La idea detrás del origen de Clone-Wars Live es la de proporcionar un entorno de trabajo con las herramientas más habituales para el trabajo con impresoras 3d (diseño de piezas e impresión), Arduino, circuitos electrónicos, etc, así como documentación relacionada. 

Los puntos principales que se han tenido en cuenta a la hora de desarrollarla son:

* Que sea un sistema libre. Ha de permitir su libre uso, modificación y redistribución a cualquier persona que lo quiera utilizar.

* Un consumo de recursos bajo. Es importante que los recursos necesarios para su funcionamiento sean bajos, ya que esto posibilitará su uso en una mayor cantidad de equipos y al mismo tiempo permitirá la reutilización y aprovechamiento de máquinas más antiguas.

¿Qué es una distribución "Live"?
================================

Una distribución "Live" es un un conjunto formado por un sistema operativo, programas adicionales y configuraciones, que está preparado para arrancar y ejecutarse desde un dispositivo extraible (CD/DVD-ROM, memoria o disco duro USB, etc), permitiendo trabajar con él sin afectar al sistema operativo y a los programas o configuraciones del equipo en el que se ejecuta.

Base tecnológica
================

Para el desarrollo de la distribución se ha empleado `Debian`_ GNU/Linux como sistema operativo base. Es una de las distribuciones GNU/linux más antiguas que existen en la actualidad y que goza de una salud excelente, tal y como lo demuestra el hecho de que se siga usando como base para muchas distribuciones, algunas de ellas muy populares, como es el caso de `Ubuntu`_ o `LinuxMint`_.

El sistema utilizado para su desarrollo es "`LiveDebian`_", un sistema propio de Debian para la creación de sistemas "Live" personalizados.

.. _`Debian`: http://www.debian.org
.. _`Ubuntu`: http://www.ubuntu.com
.. _`LinuxMint`: http://www.linuxmint.com
.. _`LiveDebian`: http://live.debian.net


Requisitos de hardware
======================

Los requerimientos necesarios para hacer funcionar Clone-Wars Live son relativamente modestos si se comparan con los recursos de hardware de los que dispone cualquier equipo actual, por lo que únicamente se enumeran los mínimos recomendados. Dependiendo de las tareas que se quieran llevar a cabo, y aunque el sistema funcione con menos recursos de los expuestos, no es recomendable si se quiere trabajar con un mínimo de comodidad en la mayoría de los programas incluidos:

* Memoria: cantidad mínima recomendada de 512MB de memoria RAM

 Si se dispone de espacio libre NO PARTICIONADO en el disco duro del equipo, o en el dispositivo desde el que se está arrancando, se puede mejorar el rendimiento creando particiones para "memoria de intercambio" o "swap" y/o para "persistencia de datos". De esta manera se libera parte de la memoria RAM utilizada y se deja disponible para que pueda ser usada por el sistema operativo y los programas.

* Procesador: procesador mínimo recomendado Intel Pentium3/Pentium4 o equivalente.

Hardware probado con la distribución
====================================

Equipos
-------

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

* Arduino Mega 2560 + RAMPS 1.4
* Gen7 1.4.1
* Gen7 1.5
* Megatronics v2
* Megatronics v3
* Sanguinololu 1.3a
* SAV MKI + SAV LCD