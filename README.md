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
    Clojure 0.0.0-1263.7db08a5
    clje.user=> (application/ensure_all_started :try_clojerl)

Then visit http://localhost:8080/.
