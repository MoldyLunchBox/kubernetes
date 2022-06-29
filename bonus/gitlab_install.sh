#!/bin/bash


IP=$(hostname -I | awk '{print $1}')


sudo curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
sudo EXTERNAL_URL="http://$IP" apt-get install gitlab-ee
sudo  sh -c 'echo "prometheus_monitoring['enable'] = false\ngrafana['enable'] = false\n" >>  /etc/gitlab/gitlab.rb'
sudo gitlab-ctl reconfigure
printf "################## gitlab ###################"
echo  "Username: root" 
sudo cat /etc/gitlab/initial_root_password | grep -v "#" | grep "\S" 
echo "gitlab link: $IP "
printf "#####################################\n"
#-------------------------------------------------------------------------------
