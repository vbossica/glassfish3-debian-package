Glassfish Debian Package README
===============================

Preparation
-----------

* Gradle (http://gradle.org) must be installed
* Download the official Glassfish version locally and unzip it under the 'work' directory:

    wget http://download.java.net/glassfish/3.1.2/release/glassfish-3.1.2.zip .
    unzip glassfish-3.1.2.zip -d work

Building the package
--------------------

* Modify the `src/debian/bin/glassfish` startup script according to your needs
* Execute `gradle clean debian`
* Install the glassfish3 package

    sudo dpkg -i build/glassfish-3.1.2.deb

* Manage the Glassfish server with

    sudo /etc/init.d/glassfish
