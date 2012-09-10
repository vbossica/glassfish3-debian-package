Glassfish3 Debian Package
=========================

The purpose of this project is to provide a debian package for the Glassfish3 application server. A special user (_glassfish_) will own the server's process and the local domain will run by default in a secure mode. The server can also be started and stopped with a `sudo service glassfish3`.  

Build
-----

The package is build using Gradle (http://gradle.org) version 1.1 so make sure it is installed on your system. Then you will have to download the official Glassfish archive and place it at the root of this checked out project:

    wget http://download.java.net/glassfish/3.1.2.2/release/glassfish-3.1.2.2.zip .
    gradle unzip

and create the package

    gradle clean debian

Finally, copy or publish the file `build/glassfish3-3.1.2.2.deb`.

Installation
------------

To install the package, follow the usual Debian way of doing things (if you haven't set up a apt repository):

    sudo dpkg -i glassfish3-3.1.2.2.deb

After having installed the package, you can modify the following files to customize the installation:

  * `/etc/glassfish3/passfile.txt` defines the passwords for the _admin_ user (_adminadmin_ by default)
  * `/etc/default/glassfish` defines some of the server's configuration values (domain's name, admin user and port...)

The domain is created with

    sudo service glassfish3 create-domain

Finally, the server is started and stopped with:

    sudo service glassfish3 {start|stop|restart}

A couple of facts
-----------------

Here's what you should know about what you've just installed:

* a new user and group both named _glassfish_ have been created to run the server
* the server's passfile is located at `/etc/glassfish3/passfile.txt`
* the server's configuration file (like domain name) is located at `/etc/default/glassfish`
* the Glassfish distribution files are located under `/usr/share/glassfish3`
* the default domain is located under `/var/glassfish3`
* the server's log file can be found under `/var/log/glassfish3`

Testing
-------

For testing purposes, the project contains a Vagrant [configuration file] [1] as well as a [provisioning script] [2]; executing `vagrant up` will create an Ubuntu (precise32) server with a running Glassfish3 server, accessible with the port (https://192.168.1.100:8080).

  [1] https://github.com/vbossica/glassfish3-debian-package/blob/master/Vagrantfile
  [2] https://github.com/vbossica/glassfish3-debian-package/blob/master/src/test/resources/provisioning.sh
