# dotfiles / ansible bootstrap

As you may mantioned, this isn't a default dotfiles repository.
All dotfiles located in this repository are ensured and installed via ansible.
In addition to the above mentioned dotfiles, the system that needs to be boostrapped, is configured with ansible too.

## So...how to use this ?

The simple answer for all those, who are familliar with ansible: **run the bootstrap playbook**.
The more or less complex answer for all those who are not so experienced with ansible, follow the **getting started** section below.

## requirements

The following is required to get this repository working locally.
- ansible 2.10
- git
- pip3
- python 3.9
- sshpass ( only when `--ask-pass` option is used )

## getting started

### prerequisites

First I would recommend, to install **python3**, **pip3** and **git**.
Since this is dependent of your operating system, you have to do this on your own.

### git clone

After you installed the three packages above, we can now clone this repository to your local system with:
```sh
git clone https://github.com/timrabl/dotfiles.git
```

### virtual environment

If the repository cloned successfully, navigate into it and create a virtual environment.
```sh
cd dotfiles/
python3 -m venv venv
source venv/bin/activate
```

### install requirements

After your done that, we can now install all requirements in our virtual environment.
```sh
pip3 install -r requirements.txt
```

### testing ansible

You can test the ansible installation, easily by pinging yourself wiht:
```sh
ansible -m ping localhost
```

### host_vars/

Now, ansible is successfully installed and we can go further on with the **host_vars/** folder.

Every useable role config find their place in a yaml configuration file, that is located in the **host_vars/** folder.
You should find a exmaple config file in located in the **host_vars/** folder.

Note: The filename of this config file needs to be exactly like the hostname or the target file.

Every role has / should have a good description and an explanation of every useable variable and their type.
This description is located in the different roles sub folders.

### inventory/

If you done the host_vars/ step, the only thing before running the playbook is to add the target hosts to your inventory file.
The inventory files, - as you may mentioned - are located in the **inventory/** folder.
Your'll find an example file there, containing the localhost under the local group and some example servers under the remote section.
I highly recommend to remove / replace these file with a production file, containing your target hosts.

### run the bootstrap playbook

So, you did it, you're now good to go to run the bootstrap playbook.
To do so, run tho following:
```sh
anible-playbook -i inventory/<REPLACE THIS WITH YOUR INVENTORY FILE NAME> playbooks/bootstrap.yaml
```
If this command succeded, Congratulations, you did it !

## errors

### Permission denied (publickey,password)

If not, you may run into the following problem: **Permission denied (publickey,password)**.
This could be easily fixed by providing the additional ansible option `--ask-pass` to the above command.
Note: the `sshpass` programm is required to use this option.

### Missing sudo password

OR your may run into the folloing problem: **Missing sudo password**.
This can also be easily fixed by providing: `--ask-become` to the above command.
