# Vagrant Plus

![alt text](https://i2.wp.com/www.zenofcoding.com/wp-content/uploads/2015/07/687474703a2f2f6572696b6168656964692e636f6d2f7468656d652f6661746361747a2f696d616765732f76616772616e742f6c6f676f5f76616772616e742e706e67.png?fit=750%2C206&ssl=1)


All the sample Vagrant files and pre-built projects are here.


### Prerequisites

Get the latest version of Virtual Box and Vagrant.
Links are:
Virtual box: https://www.virtualbox.org/wiki/Downloads
Vagrant    : https://www.vagrantup.com/downloads.html

Note: For Linux don't go for apt-get install....
those vagrant repositories are not updated and will not be able to fetch the required box when running vagrant up. So, please download and install the lastest deb package by using:

```
> sudo dpkg -i package_name.deb
```

## Quick Vagrant Guide

Vagrant is one of the mainstream developer tool if you really want to be more productive in working with VMs. Vagrant uses Ruby for the configuration files. So, we have to edit the VM config file i.e., Vagrantfile before starting any VM. So, let's take a look at the common commands and snippets of Vagrant.

### Step 1: Create a Directory/folder for the VM.

Since Vagrant commands are needed to be executed from the directory where VM is originated.
```
mkdir test
```
```

cd test
```

### Step 2: (Need to execute one time) Add the box to the system/OS if you don't have any.

Like docker we have to pull/add image before using any VM.
Likewise, we have to call:

```
vagrant box add ubuntu/xenail64  #Let's add ubuntu xenial
```
This will download an image of size around 500MB, so take your time to have some coffee if your intenet is slow.

Note: This image is very much similar to the Ubuntu server i.e., it doesn't have GUI/Desktop ENV.

### Step 3: Initializing the vagrant by creating the Vagrantfile

Creation of the Vagrantfile is the first step before starting any VM.

```
vagrant init
```
or you can specify the box/image during init step if you want to skip editing of the Vagrantfile
```
vagrant init ubuntu/xenial64
```

### Step 4: Editing of the Vagrantfile

The Vagrantfile is very easy to edit thanks to the pre-commented commands provided by Vagrant.
Just uncomment the things that you want to add to your VM configuration and you are ready to go. Just look at the few snippets provided below if you are in a hurry to use Vagrant.

CPU and memory config:

config.vm.provider "virtualbox" do |vb|
   vb.cpus = "2"
   vb.memory = "1024"
end

Addition of bridge network adaptor:

config.vm.network "public_network"

Addition of Shell code needed to be executed just starting the VM:

config.vm.provision "shell", path: "script/dockerinstall.sh"

### Step 5: Running the VM

Now, you are all ready to start you first VM.

```
vagrant up
```

### Step 6: Access your VM

Vagrant use the Public key method to access the VM, so you don't need the Password to access the VM. So, just ssh to VM by typing:

```
vagrant ssh
```
Note: For multimachine configuration you have to specify the name of the VM before doing SSH to the VM.

### Step 7: Stop or Destory the VM

Like normal VM you can stop or destory the VM by:
To stop:
```
vagrant halt
```

To Destory:
```
vagrant destroy
```



Note: 
1. Remember to execute the following commands inside the directory of the VM.
2. By default, all you VMs will be in your C Drive. So, don't forget to destroy your VMs after your work is done.
3. Vagrant recommends Virtual Box as the Hypervisor, but you can use VM Workstation or Hyper-V.


## Running the projects

Just clone the repository, browse into the required directory and execute:
```
> vagrant up
```

## Authors

* **Prashant Piprotar** - - [PrashPlus](https://github.com/prashplus)
and visit my blog for more Tech Stuff
### http://www.prashplus.com
