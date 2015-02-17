.. :changelog:

=========
Versiones
=========

2015.xx.xx
~~~~~~~~~~

* Actualización de Pronterface a la versión 2014.08.01


2015.04.xx
~~~~~~~~~~

**Version 1.1**

* Actualización de FreeCAD a la versión 0.14.3702 del repositorio de backports de Debian
* Actualización de Cura a la versión 15.01
* Actualización de S4A a la versión 1.6
* Eliminado el firmware de S4A del paquete meikian-misc y creado un paquete específico para él
* Cambiada la localización para los fondos de pantalla del escritorio
* Actualización de LinuxCNC a la versión 2.6.5
* Añadido FlatCAM 8.2
* Añadido Universal Gcode Sender 1.0.7


2014.11.07
~~~~~~~~~~

**Primera versión 'estable'**

* Actualización de Cura a la versión 14.09
* Cambiado el navegador Firefox por Iceweasel
* Actualizado el paquete meikian-arduino-extras con nuevas bibliotecas
* Eliminado Repetier-host debido a problemas con la licencia
* Añadidas FreeCAD Library, Printbot part library y Printbots library para usar con FreeCAD
* Añadida la traducción al inglés de la documentación
* Cambiadas las imágenes del menú de arranque y del fondo del escritorio


2014.09.28
~~~~~~~~~~

**Primera versión beta**

* Empaquetados los binarios de Arduino de arduino.cc por varios problemas en los paquetes de Debian testing
* Cambio de la imagen de arranque de isolinux
* Cambio de nombre del proyecto a Meikian Live 
* Añadido un segundo kernel con soporte para PAE y SMP como opción por defecto en el menú de arranque
* Añadido un tercer kernel con extensiones de tiempo real para LinuxCNC
* Añadida opción en el menú de arranque para equipos antiguos que utiliza el kernel de las versiones anteriores de la distro
* Migrado el sistema de documentación a RST y readthedocs.org
* Actualización de Fritzing a la versión 0.9.0b
* Actualización de Slic3r a la versión 1.1.7 stable
* Añadido LinuxCNC 2.6.3
* Añadido MeshLab 1.3.0
* Añadido Scratch 1.4
* Añadido S4A 1.5 
* Añadidas reglas de UDEV del proyecto OpenOCD
* Añadidos paquetes con bibliotecas y macros extra para FreeCAD
* Agregado directorio para acceso fácil a configuraciones de utilidades de impresión 3D
* Agregados varios enlaces al administrador de archivos
* Sustituido oracle-java7-installer por openjdk-7-jre debido a problemas con la licencia
* Eliminada la imagen de memtest86 debido a problemas con la licencia
* Eliminadas las imágenes de Balder y gPXE 
* Eliminado Netfabb Basic por problemas con la licencia


2014.07.12
~~~~~~~~~~

**Séptima versión alpha**

* Migrado todo el sistema de generación de la distro a GitHub
* Empaquetado todo el software necesario que no estaba disponible en paquetes .deb
* Restructuración del menú de arranque para hacerlo multi-idioma
* Cambio en scripts de arranque para permitir personalizaciones en función del idioma elegido
* Desactivación del instalador a disco duro
* Eliminado directorio de ejemplos
* Actualización de Printrun a la versión 2014.01.26
* Actualización de Cura a la versión 14.7
* Actualización de Netfabb Basic a la versión 5.1.1
* Actualización de Slic3r a la versión 1.1.6
* Actualización de FreeCAD a la versión 0.14.3692
* Añadido Fritzing 0.8.7b
* Inclusión de Graphviz para poder ver las dependencias de los objetos en FreeCAD
* Backport de PySerial desde Debian testing. Incluido un parche para permitir conexiones serie a cualquier velocidad
* Añadido soporte de Adobe Flash para el navegador chromium
* Corrección en la instalación del firmware para las tarjetas wireless Intel IPW


2014.03.23
~~~~~~~~~~

**Sexta versión alpha.**

* Añadido directorio con el código de los firmwares "/usr/local/share/firmwares"
* Añadido directorio con ejemplos y objetos de calibración "/usr/local/share/examples"
* Añadida versión del firmware Marlin de F.Malpartida para el soporte del LCD en la SAV
* Añadida librería v1.2.1 New LiquidCrystal v1.2.1 de F.Malpartida para su uso con el LCD de la SAV MKI
* Actualización de OpenSCAD a la versión 2014.03
* Añadida extensión Gcodetools v1.7 para InkScape
* Actualización de Cura a la versión 14.03


2014.02.19
~~~~~~~~~~

**Quinta versión alpha**

* Añadido Netfabb Basic 5.1.0
* Actualización de Slic3r a la versión 1.0.0RC3
* Añadidos los siguientes paquetes: unetbootin, unetbootin-translations, vinagre, x11vnc
* Creado directorio para poder acceder a archivos de configuración desde el escritorio


2014.02.13
~~~~~~~~~~

**Cuarta versión alpha.**

* Añadida una entrada en el menú de arranque para el Debian-installer
* Actualización de RepetierHost a la versión 0.95F
* Añadidos los siguentes paquetes: chromium, chromium-l10n, geda-xgsch2pcb, xchat
* Desterrados los siguientes paquetes: htop, mc
* Eliminados los siguientes paquetes: dia, firefox, gigolo, thunderbird
* Corregido el soporte de las controladoras Sanguinololu y Rambo en el IDE de Arduino


2014.02.01
~~~~~~~~~~

**Tercera versión alpha.**


2014.01.14
~~~~~~~~~~

**Segunda versión alpha.**


2014.01.09
~~~~~~~~~~

**Primera versión alpha.**

