# its-puppet

CentOS environment with LAMP stack for Symfony development.

## Instructions

Clone this repo.  Go into the repo folder and run `vagrant up`.  Example:

```sh
git clone git@git.it.ucla.edu:alroman/iam-puppet.git centosvm
cd <your project name>
vagrant up
```

The VM will run on VirtualBox and VMWare.  You may need to specify that you want to run with VMWare provider

```sh
vagrant up --provider vmware_fusion
```

The Vagrantfile is configured to use an NFS mount -- this will require admin privileges in your local instance.  On first run, the machine will be automatically provisioned with all the software you need to start developing.  By default, the forwarding port is `8000`, if there is a collision, Vagrant will select a different port.  In most cases, you'll be able to reach the server at `locahost:8000`.

## Sites

The VM is configured with two pre-set sites.  `localhost:8000/boltools` and `localhost:8000/iamucla`.  These correspond to sites that you will set up in the `projects` folder.  You will have to clone these sites and update the dependencies via `composer`.

### Setting up the Symfony projects

`@todo`

### phpMyAdmin

To view the local databases, view phpMyAdmin on `localhost:8000/phpmyadmin`
