===========================
Instalación de Meikian Live
===========================

Existen diferentes procedimientos para copiar el contenido del archivo .iso que se descarga a un medio físico. Dichos procedimientos van a depender básicamente del medio físico en el que se quiera instalar la distribución y del sistema operativo que se empleé para realizar el proceso.

Grabación a DVD
===============

No representa ningún problema en cuanto a S.O. o plataforma, puesto que cualquier programa de grabación de DVD que permita grabar imágenes .iso sirve para realizar la grabación.

Copia a un dispositivo de almacenamiento USB
============================================

Utilizando GNU/Linux
---------------------------

* Con el comando "dd":

  El primer paso será enchufar la unidad de almacenamiento que se quiere emplear para la copia de la distribución, debiendo ser ésta de tamaño suficiente como para que pueda albergar el fichero .iso descargado. En caso de querer crear una o más particiones adicionales para la persistencia de los datos, el tamaño necesario habrá de aumentarse en consonancia con el tamaño de dichas particiones.

  Una vez enchufada, desde una consola de comandos se puede utilizar el comando "dmesg" para ver las últimas líneas de mensajes del kernel y obtener el dispositivo de sistema que se le ha asignado. 

  Conociendo el dispositivo de sistema asignado ya es posible hacer la copia del fichero .iso descargado y para ello se podrán emplear dos métodos diferentes:

  * El primero, el más correcto, utilizando los comandos "isoinfo" y "dd":

    Por ejemplo, para obtener la información del fichero "meikian-live_beta1.iso", se ejecuta el siguiente comando::

      $ isoinfo -d -i meikian-live_beta1.iso
           
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


    De la información que devuelve el comando son necesarios los valores de "Logical block size" y "Volume size".

    ATENCION: el siguiente paso elimina la tabla de particiones y toda la información contenida en el dispositivo que se indique, por eso es imprescindible asegurarse de que se trata del dispositivo correcto :ATENCIÓN

    Para un pendrive al que se le ha asignado el dispositivo de sistema "sdb", se ejecutará con permisos de superusuario (como root o con sudo) el siguiente comando::

      # dd if="ruta al archivo descargado" bs="Logical block size" count="Volume size" of=/dev/"dispositivo de sistema del destino"
    
    Si se usan los datos del ejemplo anterior, el comando final quedará de la siguente manera::

      # dd if=meikian-live_beta1.iso bs=2048 count=749984 of=/dev/sdb

* El segundo, más rápido y que normalmente suele funcionar, usando únicamente el comando "dd": 

  ATENCION: el siguiente paso elimina la tabla de particiones y toda la información contenida en el dispositivo que se indique, por eso es imprescindible asegurarse de que se trata del dispositivo correcto :ATENCIÓN

  Para un pendrive al que se le ha asignado el dispositivo de sistema "sdb", se ejecutará con permisos de superusuario (como root o con sudo) el siguiente comando::

    # dd if="ruta al archivo descargado" of=/dev/"dispositivo de sistema del destino"
    
  Si se usan los datos del ejemplo anterior, el comando final quedará de la siguiente manera::

    # dd if=meikian-live_beta1.iso of=/dev/sdb
    
  Una vez finalizado el comando, la copia ya se ha realizado. Para arrancar la distribución es necesario asegurarse de que el equipo permita el arranque desde dispositivos "USB" y que, en la "BIOS" del mismo, esté seleccionado correctamente el orden de la secuencia de arranque.

*  Con la utilidad `UNetbootin`_:

  Al igual que en el apartado anterior, el primer paso será enchufar la unidad de almacenamiento que se quiere usar para copiar en élla la distribución. Es necesario que contenga una partición con sistema de ficheros "FAT32" con espacio suficiente para albergar el fichero .iso descargado. En caso no ser así habrá que crearla previamente.

  El siguiente paso será conocer el dispositivo de sistema asignado a dicha partición. En el caso de que que la partición ya existiese al enchufar la unidad de almacenamiento, desde una consola de comandos se puede utilizar el comando "dmesg" para ver las últimas líneas de mensajes del kernel y obtener así el dispositivo de sistema asignado. Si en cambio se ha creado posteriormente, éste ya será conocido por nosotros.

  Para poder continuar con el proceso de volcado de la imagen, la partición deberá estar montada.

  Una vez conocido el dispositivo de sistema de la partición y con ésta montada, se ejecutará la utilidad `UNetbootin`_

  Pasos a seguir una vez se ha lanzado la aplicación:

  * Seleccionar "DiscoImagen", formato "ISO" e introducir la ruta al fichero .iso descargado con la imagen de la distribución. Esto último se puede hacer a través del explorador de archivos incorporado.

  * Seleccionar el tipo "Unidad USB" y como "Unidad" el dispositivo de sistema asignado a la partición en donde se va a instalar que, normalmente, se puede seleccionar desde el propio botón desplegable.

  * Pulsar el botón "Aceptar" y esperar a que termine el proceso.

    La utilidad `UNetbootin`_ efectua una modificación en la configuración del menú de arranque de la distribución que hace que no funcione correctamente, por lo que para restaurarlo a su estado normal hay que realizar la siguiente operación:

  * Dentro del directorio raíz de la unidad de almacenamiento en donde se ha volcado la distribución, existe un directorio llamado "syslinux" que contiene un fichero con nombre "syslinux.cfg". Es necesario borrar dicho fichero para a continuación proceder a renombrar el fichero "syslinux.cfg.orig" a "syslinux.cfg".

    A partir de este momento la distribución ya estará volcada a la unidad de almacenamiento. A la hora de arrancarla es necesario asegurarse de que el equipo permita el arranque desde dispositivos "USB" y que, en la "BIOS" del mismo, esté seleccionado correctamente el orden de la secuencia de arranque.

.. _`UNetbootin`: http://unetbootin.sourceforge.net

Utilizando MAC OSX
------------------

En equipos con MAC OSX es posible emplear los mismos métodos que para GNU/Linux, variando únicamente el nombre del dispositivo en el que se va a volcar el contenido de la imagen.

Es importante resaltar que trás haber realizado múltiples pruebas con diferentes equipos Apple, los pendrives generados con "UNetbootin" no siempre arrancan en dichos equipos, por lo que se recomienda utilizar el comando "dd" desde una consola de comandos para copiar la imagen.


Utilizando MS Windows
---------------------

Para los equipos con MS Windows también es posible recurrir al empleo de "UNetbootin" y al igual que en el caso de MAC OSX, la única diferencia en el proceso respecto a lo mencionado para GNU/Linux viene determinada por el nombre de la unidad en la que vamos a volcar la imagen.


Uso de persistencia para los datos del usuario
----------------------------------------------

Para conservar la información, archivos, configuraciones, etc o los cambios que se realicen entre reinicios de la distribución "Live", se puede recurrir al uso de particiones auxiliares en las que dicha información quede almacenada de manera permanente. Se puede elegir entre dos clases de persistencia:

* De datos de sistema: en la que se almacenan todos los cambios que se realicen en el sistema, incluidos los de los directorios del usuario.
* De datos de usuario: en la que se almacenan únicamnete los cambios que se realicen en el directorio del usuario.

Para activarla es necesario crear una partición adicional, en el espacio libre en el dispositivo USB o en el disco duro, usando un sistema de ficheros "ext3" o "ext4" y asignándole una de las siguientes etiquetas de volumen:

* "live-rw": para tener persistencia de datos de sistema.
* "home-rw": para tener persistencia de datos de usuario.

Si se crean desde la propia distribución "Live", será necesario el reinicio del sistema para que reconozca en el arranque la nueva partición y se generen la estructura de directorios y los ficheros necesarios para su funcionamiento.


Usuarios
--------

Los usuarios definidos en la distribución, tanto en modo "Live" como instalada en disco duro, son los siguientes:

* "root": deshabilitado por defecto, por lo que para ejecutar acciones o comandos con privilegios de superusuario habrá que recurrir al uso de los comandos "sudo" o "gksudo".
* "user": es el usuario por defecto de la distribución, tiene por contraseña "live". Cuando la distribución esté instalada en disco duro, se nos pedirá la contraseña para la ejecución de ciertos comandos o acciones que necesitan privilegios de superusuario, no siendo así en el modo "Live".
