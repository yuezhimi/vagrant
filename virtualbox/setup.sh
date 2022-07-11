#!/usr/bin/env sh

echo 'zerosky123' | passwd --stdin vagrant
sed -i 's/#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no//' /etc/ssh/sshd_config
systemctl restart sshd
timedatectl set-timezone Asia/Shanghai
#echo 'VAGRANT_EXPERIMENTAL="disks"' > /etc/profile.d/vagrant.sh
#source /etc/profile.d/vagrant.sh
#yum update -y
yum install -y epel-release
yum install -y vim wget git gcc glibc-static telnet psmisc tcping net-tools cloud-utils-growpart bash-com*

#mkdir -pv /data
#growpart /dev/sda 1
#xfs_growfs /dev/sda1
#cat /etc/fstab | grep '/data'
#if [[ $? -eq 1 ]];then
# mkfs.xfs /dev/sdb
# uuid=$(blkid /dev/sdb | awk -F '[ "]' '{print$3}')
# echo "UUID=${uuid} /data xfs defaults 0 0" >> /etc/fstab
# mount -a
# cat /etc/fstab
# df -Th
#else
# echo "data disk is mounted!"
# cat /etc/fstab
# df -Th
#fi