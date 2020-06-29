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

Change into the newly cloned repository directory and run the install script.

```bash
$ cd ibex-miniconda-install/
$ ./install-miniconda.sh
```

The script will present several prompts that allow you to customise the Miniconda install. We 
recommend that you  accept the default settings.

After the installer script finishes, you will likely need to log out of Ibex and then log back in 
for the changes made by the install script to take effect.

## Uninstalling Miniconda

Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Change into the `ibex-miniconda-install` directory and run the uninstall script.

```bash
$ cd ~/path/to/target-directory/ibex-miniconda-install/
$ ./uninstall-miniconda.sh
```

After the uninstaller script finishes you, will likely need to log out of Ibex and then log back in 
for the	changes	made by the uninstall script to take effect.
