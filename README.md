Glassfish3 Debian Package
=========================

The purpose of this project is to provide a debian package for the Glassfish3 application server. It also features a rudimentary start/stop service for a single local domain.

Build
-----

The package is build using Gradle (http://gradle.org) version 1.0-rc3 so make sure it is installed on your system. Then you will have to download the official Glassfish archive locally and unzip it into the `work` directory

    wget http://download.java.net/glassfish/3.1.2/release/glassfish-3.1.2.zip .
    unzip glassfish-3.1.2.zip -d work

To build the package, simply execute

    gradle clean debian

Then copy the file `glassfish3-3.1.2.deb` wherever you want to install it.

Installation
------------

To install the package, follow the usual Debian way of doing things:

    sudo dpkg -i glassfish3-3.1.2.deb

and start/stop the server as usual:

    sudo service glassfish3 {start|stop|restart}

A couple of facts
-----------------

Here's what you should know about what you've just installed:

* a new user and group both named _glassfish_ have been created to run the server
* the Glassfish distribution files are under `/usr/share/glassfish3`
* the default domain is located at `/var/glassfish3/domain1`
* the server's log file can be found in `/var/log/glassfish3`
