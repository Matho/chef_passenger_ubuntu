# passenger_ubuntu

## Run on localhost VM
```bash
cd ~/learn-chef/cookbooks
git clone https://github.com/Matho/chef_passenger_ubuntu.git
cd ~/learn-chef/cookbooks/passenger_ubuntu
```

Show status of your VM

```bash
kitchen list
```

Create virtual machine for kitchen

```bash
kitchen create
```


Apply the cookbook to ubuntu virtual machine

```bash
kitchen converge
```

Login to your vm, if you want to check changes

```bash
kitchen login
```



Show your deployed webapp. Open this ip in your browser. You should see your rails app 

```bash
192.168.34.34
```

## Cleaning
If you want to clean your vm

```bash
kitchen destroy
```

## Bugs
* sudo recipes make problems
* create default ruby not working, problems with rvm running in non interactive shell?



