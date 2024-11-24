# Define the log file path
log_file="/ibex/user/$USER/miniforge_installation.log"

# Function to log messages
log() {
    local message="$1"
    logger -t "Miniforge3 installation" "$message"
    echo "$(date): $message" >> "$log_file"
}

# Initialize the log file if it doesn't exist
touch "$log_file"
log "Miniforge installation script started"

# Check if the directory /ibex/user/$USER exists     
if [ ! -d "/ibex/user/$USER" ]; then
    echo "Please send an email to ibex@kaust.edu.sa to create a WekaIO Directory for you"
    exit 1
fi

# install Miniforge in user's WekaIO directory
export PREFIX=/ibex/user/$USER

# Check the output of the "which conda" command
conda_path=$(which conda 2>/dev/null)

# Check if conda is installed
if [ -n "$conda_path" ]; then

    # Get the main conda directory
    grandparent_dir=$(dirname "$(dirname "$conda_path")")
    log "Backing up old conda envs..."
    cp -r $grandparent_dir/envs $PREFIX/conda_envs_backup
    echo "Conda environments were backed up to $PREFIX/conda_envs_backup"
    log "Backup done"
    log "Deleting old conda version installed at: $grandparent_dir"
    rm -rf "$grandparent_dir"
else
    log "No previous conda version installed, resuming..."
fi

#Download and install latest Miniforge
wget --quiet https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
log "Installing Miniforge..."
bash Miniforge3-Linux-x86_64.sh -b -p $PREFIX/miniforge
source $PREFIX/miniforge/bin/activate
conda deactivate
conda init bash
rm Miniforge3-Linux-x86_64.sh
log "Miniforge3 installation completed."

# Create the conda_cache directory if it doesn't exist
if [ ! -d "$PREFIX/conda_cache" ]; then
    log "Creating conda_cache directory at $PREFIX/conda_cache"
    mkdir -p "$PREFIX/conda_cache"
fi

# Update the CONDA_PKGS_DIRS variable in ~/.bashrc
RELOCATE_CACHE="export CONDA_PKGS_DIRS=${PREFIX}/conda_cache"
if ! grep -qF "$RELOCATE_CACHE" ~/.bashrc; then
  # If the line is not found, append it to ~/.bashrc
  echo "$RELOCATE_CACHE" >> ~/.bashrc
fi

# source ~/.bashrc to load modifications
source ~/.bashrc

# make sure that base environment is not active by default
conda config --set auto_activate_base false

# move the envs installation path to weka
conda config --add envs_dirs $PREFIX/conda-environments

# second source required for update to conda config file to take effect
source ~/.bashrc

log "Miniforge installation script completed."
# Explain the user the steps
echo "Type these two lines to activate miniconda"
# echo "export CONDA_PKGS_DIRS=${PREFIX}/conda_cache"
echo "source ${PREFIX}/miniforge/bin/activate"