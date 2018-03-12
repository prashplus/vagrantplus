# Vagrant Plus

All the sample Vagrant files and pre-built projects on it.


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

## Getting Started

If you are looking to get started with Vagrant then just follow the steps:

### Step 1:

Create a directory.
```
> mkdir test
```

### Step 2:

Initialize the directory with the vagrant file

```
> vagrant init
```

or if you want to prespecify the OS

```
> vagrant init ubuntu/xenial64
```

### Step 3:

Edit the vagrant file created in the previous step with your favourite text editor.
You can refer to my project vagrant files.

### Step 4:

Just start the VM by executing:
```
> vagrant up
```

## Running the projects

Just clone the repository, browse into the required directory and execute:
```
> vagrant up
```

## Authors

* **Prashant Piprotar** - - [PrashPlus](https://github.com/prashplus)
and visit my blog for more Tech Stuff
# http://www.prashplus.com
