==============
Contribuciones
==============

Contributions are welcome, and they are greatly appreciated! Every
little bit helps, and credit will always be given. 

You can contribute in many ways:

Tipos de contribuciones
-----------------------

Comunicar errores
~~~~~~~~~~~~~~~~~

Report bugs at https://github.com/ctemescw/meikian-dev/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.

Corregir errores
~~~~~~~~~~~~~~~~

Look through the `GitHub`_ issues for bugs. Anything tagged with ``bug``
is open to whoever wants to implement it.

.. _`GitHub`: https://github.com

Implementar funcionalidades
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Look through the `GitHub`_ issues for features. Anything tagged with ``feature``
is open to whoever wants to implement it.

.. _`GitHub`: https://github.com

Escribir documentación
~~~~~~~~~~~~~~~~~~~~~~

*Meikian Live* could always use more documentation, whether as part of the 
official docs, in docstrings, or even on the web in blog posts,
articles, and such.

Enviar comentarios
~~~~~~~~~~~~~~~~~~

The best way to send feedback is to file an issue at https://github.com/ctemescw/meikian-dev/issues.

If you are proposing a feature:

* Explain in detail how it would work.
* Keep the scope as narrow as possible, to make it easier to implement.
* Remember that this is a volunteer-driven project, and that contributions
  are welcome :)

¡Comenzar!
----------

Ready to contribute? Here's how to set up *Meikian Live* for local development.

1. Fork the `meikian-dev`_ repo on `GitHub`_.
2. Clone your fork locally::

    $ git clone git@github.com:your_name_here/meikian-dev.git

3. ToDo

4. Create a branch for local development::

    $ git flow feature start name-of-your-bugfix-or-feature

  Now you can make your changes locally.

5. ToDo

6. Commit your changes and push your branch to `GitHub`_::

    $ git add .
    $ git commit -m "Your detailed description of your changes."
    $ git flow feature publish

7. Submit a pull request through the `GitHub`_ website.

.. _`GitHub`: https://github.com
.. _`meikian-dev`: https://github.com/ctemescw/meikian-dev

Instrucciones para efectuar un "Pull Request"
---------------------------------------------

Before you submit a pull request, check that it meets these guidelines:

`meikian-dev_` uses `git-flow`_ for its branch management.

1. Implement changes in new git branches, following `git-flow`_'s model:
 
 * Changes based off of *develop* will receive the least amount of skepticism.
       
 * Changes based off of a *release* branches (if one exists) will be considered,
   especially for small bug fixes relevant to the release. We are not likely to 
   accept new features against *release* branches.
       
 * Changes based off of *master* or a prior release tag will be given the most 
   skepticism. We may accept patches for major bugs against past releases, but
   would prefer to see such changes follow the normal `git-flow`_ process.
       
    We will not accept new features based off of *master*.

2. Limit the scope of changes to a single bug fix or feature per branch.
 
3. Treat documentation as an essential part of any change.
 
4. Update the change log appropriately.

.. _`git-flow`: https://github.com/nvie/gitflow
.. _`meikian-dev`: https://github.com/ctemescw/meikian-dev

