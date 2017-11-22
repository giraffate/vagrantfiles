## Go version
`go1.9`

## CentOS version
`6.7`

## Setup
Install Vagrant
- https://www.vagrantup.com/

Install VirtualBox
- https://www.virtualbox.org/

Add vagrant box
```
vagrant box add centos6.7 https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box
```

Rename `project` `yourprojectname` in these files

Set these files at `$GOPATH/src/project` and execute `vagrant up`
