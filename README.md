# Vagrant

This document describes how to use [vagrant](https://www.vagrantup.com) to automate setting up a development environment for Kubedirector.

The vagrant environment contains:

 - Minikube 1.18.3
 - Operator SDK 1.5.2
 - Thiea IDE

## Pre-requisites

The following should be installed on your development environment

 - [Virtualbox](https://www.virtualbox.org/)
 - [Vagrant](https://www.vagrantup.com/downloads)
 - Linux/OSX local environment (cygwin may work but hasn't been tested)

## Usage

### Start environment

Open a terminal, then enter the following:

```
git clone https://github.com/hpe-container-platform-community/kubedirector-lab
cd kubedirector-lab
git clone https://github.com/bluek8s/kubedirector
vagrant plugin install vagrant-vbguest

# this step can take quiet a long time
vagrant up

# if you don't want git configured inside vagrant 
./run_lab.sh

# if you do want git configured inside vagrant 
./run_ide.sh
```

Open a browser and navigate to: [http://localhost:3000](http://localhost:3000) - this will load the Theia IDE.

Open a terminal in Theia, from here you can:

 - Change to the source code folder for kubedirector (/vagrant/src/github.com/bluek8s/kubedirector)
 - Build and Deploy Kubedirector
   - `make`
   - `make deploy`
   - `make redeploy # if make deploy reports an error`
 - Use `kubectl` to interact with minikube

### Stop environment

 - Open the terminal on your developement machine where you cloned kubedirector
 - Navigate to the `vagrant` folder
 - Issue `vagrant suspend` 
