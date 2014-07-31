=============================
Instalación de CloneWars Live
=============================

Existen diferentes procedimientos para transferir el contenido del archivo ``.iso`` que se descarga a un medio físico. Esos procedimientos dependerán del medio físico en el que se va a instalar la distribución y del sistema operativo que se empleé.

Grabación a DVD
===============

No representa ningún problema en cuanto a sistema operativo o plataforma puesto que cualquier programa de grabación a DVD, que permita grabar imágenes ``.iso``, servirá para realizar tal operación.

Copia a un dispositivo de almacenamiento USB
============================================

Utilizando GNU/Linux
---------------------------

* Utilizando el comando ``dd``:

  El primer paso será conectar la unidad de almacenamiento que se quiere emplear para la copia de la distribución, debiendo tener ésta el tamaño suficiente como para poder albergar el fichero ``.iso`` descargado. En caso de querer crear una o más particiones adicionales para utilizar persistencia de los datos, el tamaño necesario habrá de aumentarse en consonancia con el tamaño requerido para dichas particiones.

  Una vez conectada la unidad de almacenamiento, desde una consola de comandos se puede utilizar el comando ``dmesg`` para inspeccionar las últimas líneas de mensajes del ``kernel`` y obtener el identificador de dispositivo que el sistema le ha asignado. 

  Conociendo el identificador de dispositivo ya es posible hacer la copia del fichero ``.iso``, para lo que se podrán emplear dos métodos diferentes:

  * El primero, más correcto, será utilizando los comandos ``isoinfo`` y ``dd``:

    Por ejemplo, para obtener la información del fichero ``cwlive-alpha3.iso`` se ejecutará el siguiente comando::

      $ isoinfo -d -i cwlive-alpha3.iso
           
      CD-ROM is in ISO 9660 format
      System id: 
      Volume id: CloneWars_20140201
      Volume set id: 
      Publisher id: CLONEWARS
      Data preparer id: LIVE-BUILD 3.0.5-1; HTTP://PACKAGES.QA.DEBIAN.ORG/LIVE-BUILD
      Application id: CLONEWARS LIVECD
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


    De la información que devuelve el comando, es necesario quedarse con los valores de los campos ``Logical block size`` y ``Volume size``.

    .. warning::
      El siguiente proceso elimina la tabla de particiones y toda la información contenida en el dispositivo que se indique, por eso es imprescindible asegurarse de que se trata del dispositivo correcto

    Para un pendrive al que se le ha asignado un identificador de dispositivo ``sdb``, se ejecutará el siguiente comando con permisos de superusuario (como ``root`` o usando el comando ``sudo``)::

      # dd if="ruta al archivo descargado" bs="Logical block size" count="Volume size" of=/dev/"dispositivo de sistema del destino"
    
    Usando los datos del ejemplo anterior el comando final quedará de la siguente manera::

      # dd if=cwlive-alpha3.iso bs=2048 count=749984 of=/dev/sdb

  * El segundo, más rápido y que normalmente suele ser suficiente, usando únicamente el comando ``dd``: 

    .. warning::
      El siguiente proceso elimina la tabla de particiones y toda la información contenida en el dispositivo que se indique, por eso es imprescindible asegurarse de que se trata del dispositivo correcto

    Para un pendrive al que se le ha asignado un identificador de dispositivo ``sdb``, se ejecutará el siguiente comando con permisos de superusuario (como ``root`` o usando el comando ``sudo``)::

    # dd if="ruta al archivo descargado" of=/dev/"dispositivo de sistema del destino"

    Usando los datos del ejemplo anterior el comando final quedará de la siguiente manera::

    # dd if=cwlive-alpha3.iso of=/dev/sdb
    
  Una vez el comando devuelve el control a la consola, y si no se ha producido ningún error durante el proceso, la copia ya estará realizada. Para arrancar la distribución es necesario asegurarse de que el equipo permita el arranque desde dispositivos ``USB`` y que en la ``BIOS`` del equipo esté seleccionado correctamente el orden de la secuencia de arranque.

*  Con la utilidad `UNetbootin`_:

  Al igual que en el apartado anterior, el primer paso será conectar la unidad de almacenamiento que se quiere emplear para copiar la distribución en élla. Es necesario que contenga una partición con el sistema de ficheros ``FAT32`` y que ésta cuente con espacio suficiente para albergar el fichero ``.iso`` descargado. En caso de no ser así habrá que crearla previamente.

  El siguiente paso será conocer el identificador de dispositivo asignado por el sistema a dicha partición. En el caso de que la partición ya existiese previamente, desde una consola de comandos se podrá utilizar el comando ``dmesg`` para inspeccionar las últimas líneas de mensajes del ``kernel`` y obtener así el identificador de dispositivo asignado. Si en cambio se ha creado posteriormente, éste ya será conocido por nosotros.

  Para poder continuar con el proceso de transferencia del contenido de la imagen, la partición deberá estar montada.

  Una vez conocido el identificador de dispositivo de la partición y con ésta montada, se procederá a ejecutar la utilidad `UNetbootin`_

  Pasos a seguir una vez se ha lanzado la aplicación:

  * Seleccionar ``DiscoImagen``, formato ``ISO`` e introducir la ubicación del fichero ``.iso`` con la imagen de la distribución. Esto último se puede hacer a través del explorador de archivos incorporado.

  * Seleccionar el tipo ``Unidad USB`` y como ``Unidad`` el identificador de dispositivo asignado a la partición en donde se va a instalar. Esto último normalmente es posible hacerlo desde el propio botón desplegable.

  * Pulsar el botón ``Aceptar`` y esperar a que termine el proceso.

  La utilidad `UNetbootin`_ modifica la configuración del menú de arranque de la distribución haciendo que no funcione correctamente, por lo que para restaurarlo a su estado normal hay que realizar la siguiente operación:

  * Dentro del directorio raíz de la unidad de almacenamiento en donde se ha volcado la distribución, existe un directorio con nombre ``"syslinux`` que contiene un fichero ``syslinux.cfg``. Es necesario borrar dicho fichero para, a continuación, proceder a renombrar el fichero ``syslinux.cfg.orig`` a ``syslinux.cfg``.

  A partir de este momento la distribución ya estará transferida a la unidad de almacenamiento. A la hora de arrancarla es necesario asegurarse de que el equipo permita el arranque desde dispositivos ``USB`` y que en la "BIOS" del equipo esté seleccionado correctamente el orden de la secuencia de arranque.

.. _`UNetbootin`: http://unetbootin.sourceforge.net

Utilizando MAC OSX
------------------

En equipos con MAC OSX es posible emplear los mismos métodos que para GNU/Linux, variando únicamente el nombre del dispositivo en el que se va a volcar el contenido de la imagen.

  .. note::
    Es importante resaltar que trás haber realizado múltiples pruebas con diferentes equipos Apple, los pendrives generados con `UNetbootin`_ no siempre arrancan en dichos equipos, por lo que se recomienda utilizar el comando ``dd`` desde una consola de comandos para copiar la imagen de la distribución.


Utilizando MS Windows
---------------------

Para los equipos con MS Windows también es posible recurrir al empleo de `UNetbootin`_ y al igual que en el caso de MAC OSX, la única diferencia en el proceso respecto a lo mencionado para GNU/Linux viene determinada por el nombre de la unidad a la que vamos a transferir la imagen de la distribución.


Uso de persistencia para los datos del usuario
----------------------------------------------

Para conservar la información, archivos, configuraciones, etc o los cambios que se realicen entre reinicios de la distribución *Live*, se puede recurrir al uso de particiones auxiliares en las que dicha información quede almacenada de manera permanente. Se puede elegir entre dos clases de persistencia:

* **De datos de sistema**: en la que se almacenan todos los cambios que se realicen en el sistema, incluidos los de los directorios del usuario.
* **De datos de usuario**: en la que se almacenan únicamente los cambios que se realicen en el directorio del usuario.

Para activarla es necesario crear una partición adicional, en el espacio libre en el dispositivo ``USB`` o en el disco duro, usando un sistema de ficheros ``ext3`` o ``ext4`` y asignándole una de las siguientes etiquetas de volumen:

* ``live-rw``: para tener persistencia de datos de sistema.
* ``home-rw``: para tener persistencia de datos de usuario.

Si se crean desde la propia distribución *Live*, será necesario el reinicio del sistema para que se reconozca en el arranque la nueva partición y se generen la estructura de directorios y los ficheros necesarios para su funcionamiento.


Usuarios
--------

Los usuarios definidos en la distribución, tanto en modo *Live* como instalada en disco duro, son los siguientes:

* ``root``: deshabilitado por defecto, por lo que para ejecutar acciones o comandos con privilegios de superusuario habrá que recurrir al uso de los comandos ``sudo`` o ``gksudo``.
* ``cw``: es el usuario por defecto de la distribución, tiene contraseña idéntica al nombre de usuario, es decir ``cw``.

  .. note::
    Cuando la distribución esté instalada en disco duro se nos pedirá la contraseña para la ejecución de ciertos comandos o acciones que necesitan privilegios de superusuario, no siendo así en el modo *Live*.
