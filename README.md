Qt5 sandbox
===========

Docker based environment to experiment with Qt5 with QML support. Uses Ubuntu 20.04 as base layer.

Contents
--------

1. Docker environment.
2. Examples.


Docker
------

Build:

~~~bash
./build.sh
~~~

Usage:

~~~bash
./run.sh <workspace-path>
~~~

Examples
--------

Build from QTCreator or from command line:

~~~bash
cd hello-qml
mkdir build
cd build
qmake ..
qmake
./hello
~~~
