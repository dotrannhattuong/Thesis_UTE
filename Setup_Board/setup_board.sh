sudo apt update
sudo apt upgrade
sudo apt install nano
sudo apt install python3-pip
sudo apt install python3-pil
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran libopenblas-dev
pip3 install --upgrade pip
pip3 install --upgrade setuptools

# Jtop 
sudo pip3 install jetson-stats

# Nomachine
wget https://www.nomachine.com/free/arm/v8/deb -O nomachine.deb
sudo dpkg -i nomachine.deb

# Pytorch
wget https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl -O torch-1.8.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev libomp-dev
pip3 install Cython
pip3 install numpy torch-1.8.0-cp36-cp36m-linux_aarch64.whl
sudo apt install libopenblas-base libopenmpi-dev

# torchvision
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.9.0 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.9.0 
python3 setup.py install --user
cd ../

# Pycuda 
bash ./install_pycuda.sh