#!/bin/bash

# 告知注意事项
echo -e '\n=====================  注   意  ====================='
echo '下载官方软件包可能需要较长时间，有时甚至无法下载。'
echo '一次下载安装，多次复用，这样就可以加快每次部署的进程。'
echo '====================================================='
echo
sleep 10

# 安装 IBM Cloud CLI
echo -e '\nDownload IBM Cloud CLI ...'
curl -Lo IBM_Cloud_CLI_amd64.tar.gz https://clis.cloud.ibm.com/download/bluemix-cli/latest/linux64
echo -e '\nInstall IBM Cloud CLI ...'
tar -zxf IBM_Cloud_CLI_amd64.tar.gz
cd Bluemix_CLI
sudo ./install_bluemix_cli
ibmcloud config --usage-stats-collect false

# 安装 IBM Cloud CLI 插件
echo -e '\nInstall IBM Cloud CLI plugin ...'
ibmcloud plugin install container-service -r Bluemix
ibmcloud plugin install container-registry -r Bluemix
ibmcloud ks init

# 安装 kubectl
echo -e '\nDownload kubectl ...'
KUBECTLVER=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTLVER/bin/linux/amd64/kubectl
echo -e '\nInstall kubectl ...'
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# 显示 kubectl 版本
echo -e '\nKubectl version:'
echo 'Client Version: '$KUBECTLVER
echo
