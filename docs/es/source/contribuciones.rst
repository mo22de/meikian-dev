==============
Contribuciones
==============

Las contribuciones son bienvenidas y muy apreciadas. Todo pequeño aporte ayuda y siempre tendrá el reconocimiento correspondiente.

Se puede contribuir de muchas maneras:


Tipos de contribuciones
-----------------------

Comunicación de errores
~~~~~~~~~~~~~~~~~~~~~~~

Pueden comunicarse los errores encontrados creando nuevas entradas para ellos en el apartado `issues`_ del repositorio de `GitHub`_.

Cuando se esté comunicando un error, es conveniente incluir:

* El nombre del sistema operativo y su versión.
* Cualquier detalle relacionado con su configuración local que pueda ser útil en la resolución del problema.
* Pasos detallados para poder reproducir el error.


Corrección de errores
~~~~~~~~~~~~~~~~~~~~~

Dentro del listado de entradas que aparecen en el apartado `issues`_ del repositorio de  `GitHub`_, todas aquellas que aparecen etiquetadas como ``bug`` están disponibles para cualquiera que quiera solucionarlas.


Implementación de funcionalidades
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dentro del listado de entradas que aparecen en el apartado `issues`_ del repositorio de  `GitHub`_, todas aquellas que aparecen etiquetadas como ``feature`` están disponibles para cualquiera que quiera implementarlas.


Escritura de documentación
~~~~~~~~~~~~~~~~~~~~~~~~~~

*Meikian Live* siempre puede beneficiarse de más documentación, ya sea como parte de la documentación oficial, como comentarios dentro del código o incluso en la web, como entradas de blog, artículos y similares.


Envío de comentarios
~~~~~~~~~~~~~~~~~~~~

La mejor manera de proporcionar retroalimentación al proyecto es añadiendo comentarios y nuevas entradas en el apartado `issues`_ del repositorio de `GitHub`_.

Si se está proponiendo una funcionalidad, es conveniente tener en cuenta:

* Incluir una explicación detallada de como funcionaría.
* Mantener su campo de aplicación tan reducido como sea posible, para que sea más fácil de implementar.
* Recordar que se trata de un proyecto mantenido por voluntarios y que toda contribución es bienvenida :)


¡Comenzar!
----------

¿Preparado para contribuir? a continuación se detalla cómo preparar *Meikian Live* para poder hacer desarrollo localmente.

1. Hacer un fork del repositorio `meikian-dev`_ en `GitHub`_.
2. Clonar el repositorio que se acaba de crear, localmente::

    $ git clone git@github.com:"nombre de usuario"/meikian-dev.git

3. ToDo

4. Crear una rama para el desarrollo en el repositorio local::

    $ git flow feature start "nombre de la corrección del error o de la funcionalidad"

  A partir de este momento ya pueden hacerse los cambios localmente.

5. ToDo

6. Confirmar los cambios y sincronizar el repositorio local con `GitHub`_::

    $ git add .
    $ git commit -m "descripción detallada de los cambios."
    $ git flow feature publish

7. Hacer una solicitud de "pull request" a traves del interfaz web de `GitHub`_.


Instrucciones para efectuar un "pull request"
---------------------------------------------

Antes de solicitar un "pull request" debe comprobarse que cumple con las siguientes pautas:

`meikian-dev`_ utiliza `git-flow`_ para la gestión de sus ramas.

1. Implementar cambios en nuevas ramas de `git`_ siguiendo el modelo de `git-flow`_:
 
 * Los cambios centrados en la rama *develop* serán aceptados más fácilmente.
       
 * Los cambios centrados en la rama de una *release* (en caso de que exista) tenderán a considerarse, especialmente para pequeñas correcciones de errores que afecten a dicha versión. No se aceptarán en cambio nuevas funcionalidades en la rama de una *release*.
       
 * Los cambios centrados en la rama *master* o en las de versiones anterior difícilmente serán aceptados. En ciertos casos es posible que se tengan en cuenta parches para solucionar errores graves en versiones anteriores, pero es preferible que dichos cambios sigan el proceso normal de `git-flow`_.
       
   En ningún caso se aceptarán nuevas funcionalidades centradas en la rama *master* o en las de versiones anteriores.

2. Limitar el alcance de los cambios a una sola corrección de errores o funcionalidad por rama.
 
3. Tratar la documentación como una parte esencial de cualquier cambio.
 
4. Actualizar el registro de cambios de manera apropiada.

.. _`git`: http://git-scm.com
.. _`git-flow`: https://github.com/nvie/gitflow
.. _`GitHub`: https://github.com
.. _`issues`: https://github.com/ctemescw/meikian-dev/issues
.. _`meikian-dev`: https://github.com/ctemescw/meikian-dev

