# setting to execute python3 command without 3
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10

# install pip3
sudo apt-get update
sudo apt-get install -y python3-pip

# setting to execute pip3 command without 3
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# install python3-venv library to build a python virtual environment
sudo apt-get install python3-venv -y

# check python & pip
python --version
pip --version
