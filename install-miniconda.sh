#!/bin/bash --login

set -e

# install miniconda in user's $HOME directory
wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64

# update conda to most recent version (if necessary)
conda update --name base --channel defaults --yes conda

# initialize conda for bash shell (modifies ~/.bashrc)
conda init bash

# source ~/.bashrc to load modifications
source ~/.bashrc
