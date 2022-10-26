#!/bin/bash
#AUTHOR:Yannick 
#Date: October 26 2022
#DESCRIPTION: installation of Sonarqube

# you need to be regular user to perform these

user_name=`whoami`

if [ $user_name != vagrant ]

then
echo "you need to be vagrant"
exit 2
fi

sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload
 ./sonar.sh start

echo "the installation was successfully get your ip address and access your sonarqube to the browser"






