#!/bin/bash
#
# Install SQL Server
#
sudo apt update
sudo apt -y upgrade
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"
sudo apt update
sudo apt install mssql-server
sudo /opt/mssql/bin/mssql-conf setup
#
# Here you will select configurations
# Choose Developer as your edition
# Accept license and create password
#
systemctl status mssql-server --no-pager
#
# Install the SQL Server command-line tools
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt update 
#sudo ACCEPT_EULA=Y apt install mssql-tools unixodbc-dev
sudo apt-get install mssql-tools unixodbc-dev
# To update to the latest version of mssql-tools run the following command
sudo apt-get install mssql-tools
#
# ~/.bashrc
echo '' >> ~/.bashrc
echo '# Add SQL Server' >> ~/.bashrc
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
