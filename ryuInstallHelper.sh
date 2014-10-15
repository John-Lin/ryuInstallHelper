#!/bin/sh
# This is a quick install script for ryu and dependencies.

# On Ubuntu 12.04 LTS
# Do NOT use 512MB VM to compile ryu source code since there is not enough memory to compile source code 

# Get the latest package lists
apt-get update

echo "##############################################################################"
echo "#                          RYU DEPENDENCY CHECK                              #"
echo "##############################################################################"
apt-get install git python-pip build-essential python-dev libxml2-dev libxslt1-dev python-paramiko python-webob python-routes python-eventlet -y

# Upgrade pip
pip install -U pip 

# install setuptools
wget https://bootstrap.pypa.io/ez_setup.py -O - | python

echo "##############################################################################"
echo "#                         DOWNLOADING RYU FROM GIT                           #"
echo "##############################################################################"

cd $HOME
git clone https://github.com/osrg/ryu.git

echo "##############################################################################"
echo "#                              BUILDING RYU                                  #"
echo "##############################################################################"

cd ryu; python ./setup.py install

echo "##############################################################################"
echo "#                                    DONE                                    #"
echo "##############################################################################"

