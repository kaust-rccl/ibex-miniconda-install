# ibex-miniconda-install
Bash scripts for Ibex users that install (or uninstall) Miniconda

## Installing Miniconda

1. Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

2. Clone this git repository somewhere in your Ibex home directory.

```bash
$ cd ~/path/to/target-directory/
$ git clone https://github.com/kaust-rccl/ibex-miniconda-install.git
```

3. Change into the cloned repository directory and run the install script.

```bash
$ cd ibex-miniconda-install/
$ ./install-miniconda.sh
```

## Uninstalling Miniconda

1. Login to Ibex using your KAUST credentials.

```bash
$ ssh $USERNAME@ilogin.ibex.kaust.edu.sa # use glogin.kaust.edu.sa if you need GPU nodes
```

3. Change into the cloned repository directory and run the uninstall script.

```bash
$ cd ~/path/to/target-directory/ibex-miniconda-install/
$ ./uninstall-miniconda.sh
```
