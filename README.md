try_clojerl
=====

A web application that provides a Clojerl REPL.

Build
-----

    $ git clone https://github.com/clojerl/try_clojerl
    $ cd try_clojerl
    $ make

Start Web Application
---------------------

    $ make repl
    ===> Verifying dependencies...
    (...)
    ===> Clojerl Compiling try_clojerl
    23:11:20.745 [info] Application lager started on node nonode@nohost
    23:11:20.789 [info] Application try_clojerl started on node nonode@nohost
    Clojure 0.0.0-1263.7db08a5
    clje.user=>

Then visit http://localhost:8080/.

Acknowledgments
---------------

The "Basic Introduction [...]" tutorial is copied almost verbatim from Raynes'[tryclojure](https://github.com/Raynes/tryclojure/tree/master/resources/public/tutorial) repo. At the time of writing the [tryclj.com](http://tryclj.com/) web page is no longer working so I thought it would be nice to keep the tutorial alive, even if it's not for the JVM implementation of Clojure.
