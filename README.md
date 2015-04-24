# its-puppet

Basic Puppet configuration to start up a LAMP dev box.

## Components

 - PHP + extensions
 - MySQL
 - Apache2
 - phpMyAdmin
 - Ruby/Compass

## Instructions

Clone this repo, then go into the project folder you just created and start vagrant.

```sh
git clone git@git.it.ucla.edu:alroman/iam-puppet.git centosvm
cd <your project name>
vagrant up
```

To run with VMWare provider

```sh
vagrant up --provider vmware_fusion
```

Running that for the first time will provision the VM image and will take a while.  Vagrant is also configured to use NFS mount
, this will require admin privileges in your local instance.

### Setting up a project

Your project should be inside `iam-centos66` under the `projects` directory.  The `projects` directory
is set to be ignored by `.gitignore`.  Clone your repos in that directory.

#### Adding iam-symfony

In the `iam-centos66/projects` dir, clone the iam-symfony project

```sh
git clone git@git.it.ucla.edu:alroman/iam-symfony.git
```

Go into the `iam-symfony` directory and install PHP Composer and run the package install:

```sh 
curl -sS https://getcomposer.org/installer | php
php composer.phar install
```

That will download all the required packages.  You may be asked for project configuration; just press <enter>
at the prompts to select defaults.  When that's done, browse to `localhost:9090/symfony/api_dev.php` and you'll
see the symfony dev page.

### Apache server

Once your box is up and running, the HTTP server is listening on port `9090`

### phpMyAdmin

You can access phpMyAdmin via `localhost:9090/phpmyadmin`