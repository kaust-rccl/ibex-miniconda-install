# ibex-miniconda-install
Bash scripts for Ibex users that install (or uninstall) Miniconda

## Installing Miniconda

Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Clone this git repository somewhere in your Ibex home directory.

```bash
$ cd ~/path/to/target-directory/
$ git clone https://github.com/kaust-rccl/ibex-miniconda-install.git
```

Change into the newly cloned repository directory and source the install script. Sourcing the 
install script runs each of the comands in the script as if you had entered them manually at 
the prompt and insures that changes made to your `~./bashrc` take effect without your having 
to logout of Ibex.

```bash
$ cd ibex-miniconda-install/
$ . install-miniconda.sh
```

The script will present several prompts that allow you to customise the Miniconda install. We 
recommend that you  accept the default settings.

## Uninstalling Miniconda

Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Change into the `ibex-miniconda-install` directory and source the uninstall script. Sourcing 
the install script insures that you don't need to logout of Ibex in order for the changes made 
by the uninstaller script to take effect. 

```bash
$ cd ~/path/to/target-directory/ibex-miniconda-install/
$ . uninstall-miniconda.sh
```
