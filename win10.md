## win10子系统开发环境

### 安装wsl2

- 安装文档：[安装 WSL | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows/wsl/install)

- 开发环境配置：[设置 WSL 开发环境 | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows/wsl/setup/environment)

- 终端工具：[Windows 终端安装 | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows/terminal/install)

### VS code编辑器

- vscode安装下载：[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

  ```tiki wiki
  ### vscode常用扩展插件
  Chinese # 中文汉化 
  # Remote-WSL # 远程WSL
  MaterialTheme # 主题设置
  Prettier-Code formatter # 代码格式化
  BracketPair Colorizer2 # 括号高亮显示
  indent-rainbow # 缩进高亮显示
  RemoteDevelopment #包含Remote-WSL、Remote-SSH、Remote-Containers
  GitLens # 加强版git插件
  
  python	# python代码插件
  pylance # python扩展支持
  
  HashiCorp Terraform
  Terraform #
  
  PlantUML # 时序图
  ```

### WSL设置ZSH

```bash
sudo apt install zsh
```

- ohmyzsh配置管理

  项目地址：https://github.com/ohmyzsh/ohmyzsh.git

  ```bash
  # 安装ohmyzsh
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
  # zsh添加插件
  # vi ~/.zshrc
  plugins=(
    git
    minikube
    ...
  )
  
  # 第三方插件
  cd ~/.oh-my-zsh/plugins/
  git clone https://github.com/zsh-users/zsh-autosuggestions.git
  ```

### WSL配置python环境

- 安装pip

  ```bash
  # python3 -m pip install pip
  sudo apt-get install python-pip
  
  # 安装python虚拟环境
  sudo apt-get install python3-venv
  # 创建虚拟环境
  python3 -m venv env
  source env/bin/activate
  
  # 在虚拟环境安装python依赖包
  pip install flask
  #pip install autopep8
  # 卸载包
  pip uninstall flask
  
  # python虚拟环境中使用vscode
  mkdir python-demo 
  cd python-demo && code .
  
  # 退出虚拟环境
  deactivte
  ```

### wsl安装docker

- 安装脚本：

  ```bash
  # install docker
  curl -fsSL get.docker.com -o get-docker.sh
  sh get-docker.sh
  if  [ ! $(getent group docker) ];
  then
      sudo groupadd docker;
  else
      echo "docker user group already exists"
  fi
  sudo gpasswd -a $USER docker
  sudo service docker restart
  #  sudo systemctl enable docker
  ```

### WSL配置terraform环境

- 下载地址：[Downloads | Terraform by HashiCorp](https://www.terraform.io/downloads)

  ```bash
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt-get update && sudo apt-get install terraform
  ```



