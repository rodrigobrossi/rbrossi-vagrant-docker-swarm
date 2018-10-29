# DOCKER VAGRANT SWARM 

This is a vagrant docker sample. 

The aim of this studies are connect different cockroachDBs in an cluster of docker. 

There is an issue regarding the proxy plugin on vagrant. 

## Pre requirements

[Donwload the virtual box](https://www.virtualbox.org/wiki/Downloads)

Ensure that you have the Vagrant installed 

if you have issue to start, try this one: 
```kotlin
sudo /Library/StartupItems/VirtualBox/VirtualBox restart
```


[Vagrant 2.2.0 download](https://www.vagrantup.com/downloads.html)


run the following command line in order to have the proxy plugin configured. And you will need to install the vagrant-disksize
```kotlin
$vagrant plugin install vagrant-proxyconf

$vagrant plugin install vagrant-disksize
```

To start the example, please run the following command line 
```kotlin
$export AUTO_START_SWARM=true && vagrant up
```

the provision.sh will create add the portainer tool to manage all the instances and stacks of your system. 