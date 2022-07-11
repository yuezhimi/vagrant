## Vagrant

### 安装

- Vagrant下载：[Downloads | Vagrant by HashiCorp (vagrantup.com)](https://www.vagrantup.com/downloads)

- box：[Discover Vagrant Boxes - Vagrant Cloud (vagrantup.com)](https://app.vagrantup.com/boxes/search)

- Hyper-v启用：[在 Windows 10 上启用 Hyper-V | Microsoft Docs](https://docs.microsoft.com/zh-CN/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

- VirtualBox下载：[Downloads – Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)

- vagrant基本操作

  ```powershell
  ### 管理员权限打开 powershell
  # 创建存放虚拟机的目录
  mkdir vagrant-demo
  cd .\vagrant-demo\
  
  # 生成Vgrantfile
  vagrant init $box
  
  # 创建虚拟机
  vagrant up --provider=hyperv
  
  # 查看虚拟机状态
  vagrant status
  # 查看虚拟机配置信息
  vagrant ssh-config $VM_HOSTNAME
  
  # 连接虚拟机
  vagrant ssh $VM_HOSTNAME
  ### 远程连接
  # ssh vagrant@$VM_IP -i private_key
  ### ssh-config > ~/.ssh/config
  ssh $VM_HOSTNAME
  
  # 停止虚拟机
  # vagrant suspend/resume/reload/halt
  vagrant halt $VM_HOSTNAME
  # 删除虚拟机
  vagrant destroy $VM_HOSTNAME
  ```

- box基本操作

  ```powershell
  # 下载box到本地，下载慢可以找国内源
  # vgrant box add centos7 https://mirrors.ustc.edu.cn/centos-cloud/centos/7/vagrant/x86_64/images/CentOS-7.box
  vgrant box add generic/ubuntu2004 --provider=virtualbox --box-version=3.1.22
  
  # 显示已存在的box
  vgrant box list
  
  #删除box 
  vgrant box remove generic/ubuntu2004 --provider=virtualbox --box-version=3.1.22
  
  # 打包自定义box
  vagrant halt 
  vagrant package --base $VM_NAME
  # 将打包的box添加到本地list。也可以上传vgrant cloud
  vgrant box add --name NEW_NAME --provider=virtualbox ./package.box
  
  # 同步文件
  # $HOME/.vgrant.d/boxes/xx/xx/vgrantfile
  ```

### vagrant安装插件

- ```powershell
  # 安装插件
  #vagrant plugin install vagrant-vbguest --plugin-version 0.21
  vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest
  vagrant plugin install vagrant-winnfsd
  ```
  
