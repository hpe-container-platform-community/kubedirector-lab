#!/bin/bash

export SHELL=/bin/bash
export THEIA_DEFAULT_PLUGINS=local-dir:/home/vagrant/plugins 
export GOPATH=/home/project
export PATH=$PATH:$GOPATH/bin

cd /home/vagrant
    
node ./src-gen/backend/main.js /vagrant/src/github.com/bluek8s/kubedirector/ --hostname=0.0.0.0
