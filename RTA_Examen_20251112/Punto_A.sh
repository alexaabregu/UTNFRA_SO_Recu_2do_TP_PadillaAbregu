sudo docker run hello-world
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo fdisk -l
sudo fdisk /dev/sdd1
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc2
sudo lvcreate -L 1.5G vg_datos -n lv_multimedia
sudo fdisk -l
sudo lvcreate -L 10M  vg_datos -n lv_docker
sudo vgs
p
sudo lvcreate -L 4M  vg_datos -n lv_docker
sudo vgs
sudo lvs
sudo fdisk -l
sudo mkswap /dev/sdc1
free -h
sudo swapon /dev/sdc1
free -h
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
ls -l /
sudo mkdir /Multimedia
ls -l /
df -h
sudo systemctl restart docker
sudo systemctl status docker
history
ls
cd RTA_Examen_20251112
ls
history │ tail -n 30 >> Punto_A.sh
history │ tail -n 30 > Punto_A.sh
history │ tail -n 30 │ cut -c 8- > Punto_A.sh
bash -c "history │ tail -n 30" > Punto_A.sh
cd
