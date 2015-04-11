# its-puppet

Basic Puppet configuration to start up a Vagrant dev box.

## Instructions

Clone this repo, then go into the project folder you just created and start vagrant.

```sh
git clone git@git.it.ucla.edu:alroman/iam-puppet.git <your project name>
cd <your project name>
vagrant up
```

Running that for the first time will provision the VM image and will take a while.  Vagrant is also configured to use NFS mount
, this will require admin privileges in your local instance.

### Setting up a project

Your project should be inside the `<your project name>` directory.  This will usually be a git clone of a separate project.

### Apache server

Once your box is up and running, the HTTP server is listening on port `9090` 