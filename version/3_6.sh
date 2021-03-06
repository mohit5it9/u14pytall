#!/bin/bash -e

echo "================= Installing Python 3.6 ==================="
sudo apt-get install -y \
  python3.6=3.6.4* \
  python3.6-dev=3.6.4*

# Install virtualenv
virtualenv -p python3.6 $HOME/venv/3.6

# Install pip packages
. $HOME/venv/3.6/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.6 ==================="
