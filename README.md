# ibex-miniconda-install
Bash scripts for Ibex users that install (or uninstall) Miniconda

## Installing Miniconda

Login to Ibex using your KAUST credentials.

```bash
ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Clone this git repository in your Ibex home directory.

```bash
cd ~/
git clone https://github.com/kaust-rccl/ibex-miniconda-install.git
```

Change into the newly cloned repository directory and source the install script. Sourcing the 
install script runs each of the commands in the script as if you had entered them manually at 
the prompt and insures that changes made to your `~./bashrc` take effect without your having 
to logout of Ibex.

```bash
cd ibex-miniconda-install/
source install-miniforge-ibex.sh
```

This script automates the installation of Mambaforge (**Provides same commands as Miniconda**) with user-specified options, sets up environment variables, configures Mambaforge behavior, and provides instructions for activating Mambaforge. It is designed for use in environments where Conda package management is needed. On ibex /ibex/user/$USER, you will find your folder for the WekaIO partition. However, if the following prompt appears ...

```
Do you wish the installer to initialize Miniconda3
by running conda init?
```

...we recommend that you type `no` to avoid having to manually initialize Conda for Bash later. 

<!-- If you accidentally type `no`, don't worry. When the script finishes you simply need to type the  -->
<!-- following commands. -->

<!-- ```bash
conda init bash
source ~/.bashrc
``` -->
As we recomend `base` to be deactivated , to activate it , you will need to source it
```bash 
source /ibex/user/$USER/mambaforge/bin/activate 
```


<!-- By default, the Conda `base` environment is deactivated when you login to Ibex.  -->
If you would prefer that the Conda `base` environment be activated on login then you 
can run the following command to set the `auto_activate_base` configuration parameter to `true`.

```bash
conda config --set auto_activate_base true
```

If you are still a little unsure about the whole process, we have created a tutorial on our 
YouTube channel that will walk you through the above steps in detail.

[![](http://img.youtube.com/vi/X-W7aVXH3_w/0.jpg)](http://www.youtube.com/watch?v=X-W7aVXH3_w "How to install Miniconda3 into your Ibex home directory")

## Updating Conda

Conda is a rapidly developing tool and it is important that you keep your versions on 
Ibex updated to the most recent version available. We have included an `update-conda.sh` script 
that will update Conda for you. Change into the `ibex-miniconda-install` directory and source 
the update script.

```bash
cd ~/ibex-miniconda-install
source update-conda.sh
```

## Uninstalling Miniconda

Login to Ibex using your KAUST credentials.

```bash
ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Change into the `ibex-miniconda-install` directory and source the uninstall script. Sourcing 
the install script insures that you don't need to logout of Ibex in order for the changes made 
by the uninstaller script to take effect. 

```bash
cd ~/ibex-miniconda-install/
source uninstall-miniconda.sh
```

**Running `uninstall-miniconda.sh` will delete all Conda environments stored in the
`~/miniconda3/envs` directory.**
