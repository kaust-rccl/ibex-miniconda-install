#!/bin/bash --login

set -e

# reverse modifications to ~/.bashrc
conda init --reverse bash

# remove miniconda directory
rm -rf ~/miniconda3

# remove the ~/.conda directory
rm -rf ~/.conda

# remove the ~/.condarc config file if necessary
rm ~/.condarc
