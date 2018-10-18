# rbrossi-vgrant-docker-swarm

This is a vgrant docker sample. 

The aim of this studies are connect different cockroachDBs in an cluster of docker. 

There is an issue regarding the proxy plugin on vagrant. 

## Pre requiremetns 

[Donwload the virtual box](https://www.virtualbox.org/wiki/Downloads)

Ensure that you have the Vagrant installed 

if you have throbles to start 
```kotlin
sudo /Library/StartupItems/VirtualBox/VirtualBox restart
```

[Vagrant 2.2.0 download](https://www.vagrantup.com/downloads.html)


run the following command line in order to have the proxy plugin configured. 
```kotlin
$vagrant plugin install vagrant-proxyconf
```

To start the example, please run the following command line 
```kotlin
$export AUTO_START_SWARM=true && vagrant up
```

the provision.sh will create add the portainer tool to manage all the instances and stacks of your system. 