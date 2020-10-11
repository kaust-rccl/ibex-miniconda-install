# ibex-miniconda-install
Bash scripts for Ibex users that install (or uninstall) Miniconda

## Installing Miniconda

Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

Clone this git repository in your Ibex home directory.

```bash
$ cd ~/
$ git clone https://github.com/kaust-rccl/ibex-miniconda-install.git
```

Change into the newly cloned repository directory and source the install script. Sourcing the 
install script runs each of the commands in the script as if you had entered them manually at 
the prompt and insures that changes made to your `~./bashrc` take effect without your having 
to logout of Ibex.

```bash
$ cd ibex-miniconda-install/
$ source install-miniconda.sh
```

The script will present several prompts that allow you to customize the Miniconda install. We generally 
recommend that you accept the default settings. However, when prompted with the following...

```
Do you wish the installer to initialize Miniconda3
by running conda init?
```

...we recommend that you type `yes` to avoid having to manually initialize Conda for Bash later. 

If you accidentally type `no`, don't worry. When the script finishes you simply need to type the 
following commands.

```bash
conda init bash
source ~/.bashrc
```

### Deactivating Conda's `base` environment on login

After installing Miniconda whenever you login to Ibex your prompt will now look as follows.

```
(base) $
```

This is because, by default, the Conda `base` environment is activated when you login to Ibex. 
If you would prefer that the Conda `base` environment not be activated on login then you 
can run the following command to set the `auto_activate_base` configuration parameter to `false`.

```
conda config --set auto_activate_base false
```

If you are still a little unsure about the whole process, we have created a tutorial on our 
YouTube channel that will walk you through the above steps in detail.

[![](http://img.youtube.com/vi/X-W7aVXH3_w/0.jpg)](http://www.youtube.com/watch?v=X-W7aVXH3_w "How to install Miniconda3 into your Ibex home directory")

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
$ source uninstall-miniconda.sh
```

**Running `uninstall-miniconda.sh` will delete all Conda environments stored in the
`~/miniconda3/envs` directory.**
