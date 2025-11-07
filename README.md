# Ubuntu-NVIDIA-drivers
CUDA drivers installation, this repository will help to install CUDA Drivers, CUDA Toolkit and NVIDIA fabric manager, this applies to Nvidia H100, H200 GPUS

1.Clone the repository in your Ubuntu server
```
git clone https://github.com/cpoc-internal/Ubuntu-Nvidia-drivers.git
```
2. Change directory to the new folder
```
cd Ubuntu-Nvidia-drivers
```
3. Install Nvidia-drivers ubuntu 2204, the installation will last about 10 minutes
```
chmod +x install-nvidia-drivers-2204.sh
 ./install-nvidia-drivers-2204.sh
```
4. Install Nvidia-drivers ubuntu 2404, the installation will last about 10 minutes
```
 chmod +x install-nvidia-drivers-2404.sh
 ./install-nvidia-drivers-2404.sh
```

5. provision Nic ip address UCS C885 H100 NON persistent
```
 chmod +x provision-nics.sh
 ./provision-nics.sh
```

6. Create new netplan config for UCS C885 H100 server persistent config 
```
 chmod +x netplan-config-H100.sh
 ./netplan-config-H100.sh
```
6. Create new netplan config for UCS C885 H200 server persistent config 

Server 1
```
 chmod +x netplan-config-H200-1.sh
 ./netplan-config-H200-1.sh
```

Server 2
```
 chmod +x netplan-config-H200-2.sh
 ./netplan-config-H200-2.sh
```
