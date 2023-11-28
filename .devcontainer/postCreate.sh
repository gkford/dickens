#!/bin/sh

#UAP: Ubuntu Aider Python

echo "🚧 Setting up your environment. Please wait..."

# Create the conda environment
conda create -n UAP -y

# Activate the environment
# Note: 'conda activate' doesn't work directly in a subshell script
# So we use a source activate alternative.
source activate UAP || conda activate UAP

# Install pip
conda install pip -y

conda init bash

# Install the Python packages from requirements.txt
pip install -r requirements.txt
pip install git+https://github.com/paul-gauthier/aider.git
echo "✅ Setup completed. You can now use the environment!"