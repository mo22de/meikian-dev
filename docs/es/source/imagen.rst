====================================
Generar una imagen de CloneWars live
====================================

*CloneWars Live* se desarrolla con `Debian`_ GNU/Linux 7.x ``Wheezy`` para arquitectura ``x86`` utilizando para ello `LiveDebian`_, el sistema de creación de sistemas ``live`` propio de dicha distribución. Es posible utilizar otras versiones o arquitecturas, o incluso usar distribuciones derivadas, pero en dichos casos ya no se puede garantizar que funcione el proceso detallado a continuación o que sea el mismo.

Para generar una imagen de *CloneWars Live* partiendo de cero se necesitan previamente una serie de requisitos.

.. _`Debian`: http://www.debian.org
.. _`LiveDebian`: http://live.debian.net

Acceso de superusuario
----------------------

El ``script`` de creación se necesita ejecutar con permisos de susperusuario, ya sea mediante el uso del comando ``su`` o de ``sudo``.

Utilidades necesarias
---------------------

Se necesitan una serie de utilidades instaladas previamente, para lo que se puede recurrir al siguiente comando::

  user@cw-dev:~$ sudo apt-get install apt-utils debootstrap dosfstools debian-keyring fakeroot genisoimage genext2fs gnu-fdisk loadlin mtd-utils parted squashfs-tools syslinux uuid-runtime win32-loader xorriso

También se necesita tener instalado el conjunto de utilidades de `LiveDebian`_ en su rama ``3.x`` que es la actualmente disponible en `Debian`_ GNU/Linux 7.x ``Wheezy``. Para ello también se puede utilizar el comando::

  user@cw-dev:~$ sudo apt-get install live-build

Repositorio de CloneWars Live en GitHub
---------------------------------------

Se necesita disponer de una copia del contenido del repositorio de *CloneWars Live* en `GitHub`_. Esto se puede hacer de dos maneras diferentes, mediante el clonado del repositorio o descargándose un archivo ``zip`` con su contenido desde la propia página de `GitHub`_.

.. _`GitHub`: https://www.github.com

 * Para clonar el repositorio se necesita tener instalado ``git``. En caso de que no esté disponible en el sistema se puede instalar con el siguiente comando::

    user@cw-dev:~$ sudo apt-get install git

  A continuación se necesita crear un directorio para almacenarlo y proceder a clonar el contenido del repositorio en él, para lo que se pueden utilizar los siguientes comandos::

    user@cw-dev:~$ mkdir my_cwlive
    user@cw-dev:~$ git clone https://github.com/ctemescw/cwlive-dev.git my_cwlive

 * Si en cambio se descarga el archivo comprimido con el contenido del repositorio, se necesita tener instalado un descompresor para archivos en formato ``zip`` como puede ser ``unzip``. En caso de no estar disponible en el sistema se puede instalar ejecutando el siguiente comando::

    user@cw-dev:~$ sudo apt-get install unzip

  A continuación se descomprime el archivo ``zip`` descargado previamente y se renombra para hacer más fácil el trabajo con él::

    user@cw-dev:~$ unzip develop.zip
    user@cw-dev:~$ mv cwlive-dev-development my_cwlive

Modificación del script de creación de CloneWars Live
-----------------------------------------------------

Se necesitan modificar un par de parámetros dentro del ``script`` de creación para especificar la ruta dónde se ha copiado el contenido del repositorio de *CloneWars Live*.

Dentro del directorio que se ha utilizado para albergar el contenido del repositorio se encuentra el ``script`` ``make-live.sh``, en el cual se tendrán que modificar las líneas ``14`` y ``15`` para especificar las rutas correspondientes.

El contenido original de dichas líneas es::

    ## default values
    HOME_DIR="/home/debian-live/"
    BUILD_DIR="${HOME_DIR}/cw-live"

* ``HOME_DIR`` representa la ruta al directorio padre del directorio con los contenidos del repositorio
* ``BUILD_DIR`` representa la ruta completa al directorio con los contenidos del repositorio

Como ejemplo para el caso de un usuario ``user`` que tiene su directorio de usuario en ``/home/user`` y que crea dentro de él un directorio ``my_cwlive`` para los datos del repositorio de *CloneWars Live*, los valores por los que se han de sustituir los originales son::

    ## default values
    HOME_DIR="/home/user/"
    BUILD_DIR="${HOME_DIR}/my_cwlive"


Creación de la iso de CloneWars Live
------------------------------------

El ``script`` de creación permite generar varios tipos de imágenes con finalidades diferentes. Los tipos disponibles son:

 * ``iso`` imagen en formato ISO9660 estándar destinada a la grabación en ``DVD``
 * ``iso-hybrid`` imagen ``iso`` híbrida que permite la grabación a ``DVD`` o la copia a una memoria ``USB``
 * ``usb-hdd`` imagen para la copia a disco duro ``USB``
 * ``tar`` genera un archivo que contiene todo el sistema de ficheros de la distribución

Una vez se han cumplido todos los requisitos especificados en los apartados anteriores, se puede proceder a crear una imagen de *CloneWars Live*.

  .. note::
    Factores que se deben tener en cuenta:

     * El proceso puede durar entre una y varias horas dependiendo de los recursos del equipo en el que se realice
     * Es necesario disponer de al menos 15GB de espacio libre en el disco duro
     * Es necesario que el equipo tenga conexión a ``Internet`` durante el proceso

El comando para la creación de la imagen de la distribución es::

    make-live.sh <tipo de la imagen> 

Si se utiliza el mismo caso de ejemplo que en apartados anteriores, los comandos necesarios para generar la imagen de la distribución quedan de la siguiente manera::

    user@cw-dev:~$ cd my_cwlive
    user@cw-dev:~/my_cwlive$ sudo ./make-live.sh iso-hybrid
