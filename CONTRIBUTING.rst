============
Contributing
============

Contributions are welcome and really appreciated. Every single contribution helps and will always have the corresponding acknowledgement.

You can contribute in many ways:


Types of contributions
----------------------

Bugs/issues reporting
~~~~~~~~~~~~~~~~~~~~~

They can be reported creating new entries at `issues`_ section of `GitHub`_ repository.

When an issue is being reported, it is convenient to include:

* Operative System name and its version.
* Any detail related with your local settings that may be helpful to solve the problem.
* Detailed steps to reproduce the error.


Debugging
~~~~~~~~~

All entries tagged as `bug` on `issues`_ section of `GitHub`_ repository are available for anyone who wants to help debugging them.


Implementing features
~~~~~~~~~~~~~~~~~~~~~

All entries tagged as `feature` on `issues`_ section of `GitHub`_ repository are available for anyone who wants to help implementing them.


Writing documentation
~~~~~~~~~~~~~~~~~~~~~

*Meikian Live* can always benefit with more documentation, either as part of the official documentation, comments within the code or even on the web, or as blog posts, articles and similar.


Giving feedback
~~~~~~~~~~~~~~~

The best way to provide feedback to the project is adding comments and new entries at `issues`_ section of `GitHub`_ repository.

If a feature is being proposed, it is convenient to consider:

* To include a detailed explanation of how it would work.
* Keep the field of application as small as possible, to get it easier to implement.
* Remember that this is a project maintained by volunteers and any contribution is welcome :)


Starting!
---------

Ready to contribute? How to prepare *Meikian Live* to develop locally is detailed below.

1. Fork `meikian-dev`_ repository at `GitHub`_.
2. Clone locally the repository you have just created::

    $ git clone git@github.com:"username"/meikian-dev.git

3. ToDo

4. Create a new branch for local development::

    $ git flow feature start "name of bug or feature"

  From this moment local changes may be made.

5. ToDo

6. Confirm changes and synchronise local repository with `GitHub`_::

    $ git add .
    $ git commit -m "detailed changes description"
    $ git flow feature publish

7. Make a "pull request" through `GitHub`_ web interface.


Instructions to make a "pull request"
-------------------------------------

Before a "pull request", the following guideline should be checked:

`meikian-dev`_ uses `git-flow`_ for its branches management.

1. Implement changes on new`git`_ branches following `git-flow`_ model:
 
 * Changes focused on *develop* branch will be easier accepted.
       
 * Changes focused on *release* branches (if any) tend to be considered, especially for small bug fixes affecting this version. New features will not be accepted on *release* branches.
       
 * Changes focused on *master* branch or in older versions branches will probably never be accepted. In certain cases it is possible that patches to fix serious bugs in previous versions are taken into account, but it is preferable that these changes follow the normal process of `git-flow`_.
       
   In no case new features focused on *master* branch or in earlier versions will be accepted.

2. Limit changes scope to a single bug fixing or feature per branch.
 
3. Consider documentation as an essential part of any change.
 
4. Update the change log in a proper way.

.. _`git`: http://git-scm.com
.. _`git-flow`: https://github.com/nvie/gitflow
.. _`GitHub`: https://github.com
.. _`issues`: https://github.com/ctemescw/meikian-dev/issues
.. _`meikian-dev`: https://github.com/ctemescw/meikian-dev

