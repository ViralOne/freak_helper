#!/bin/bash

_temp="/tmp/answer.$$"
_temp_var="$$"
alegere="off"
VER="0.4"

menu() {
 dialog --backtitle "Install all the tools you need" --title " Freak Helper - v$VER "\
        --cancel-label "Quit" \
        --menu "Move using [UP] [DOWN], [Enter] to select" 17 60 10\
        FrontEnd "Intall tools for Frontend Developer" \
        BackEnd "Intall tools for Backend Developer" \
        FullStack "Intall tools for Fullstack Developer" \
        QA "Intall tools for QA Engineering" \
        DevOps "Intall tools for DevOps Engineering" \
        Quit "Close Freak Helper script" 2>$_temp
       
    opt=${?}
    if [ $opt != 0 ]; then rm $_temp; exit; fi
    menuitem=`cat $_temp`
    echo "menu=$menuitem"
    case $menuitem in
        FrontEnd) _temp_var="frontend" ; check ; software;;
        BackEnd) _temp_var="backend" ; check ;  software;;
        FullStack) _temp_var="full" ; check ; software;;
        QA) _temp_var="qa" ; check ; software;;
        DevOps) _temp_var="devops" ; check ; software;;
        Quit) rm $_temp; clear; exit;;
    esac
}

check() {
 dialog --backtitle "Verficare variabila" \
    --msgbox "Variabila este: $_temp_var" 9 52
  if [ "$_temp_var" == "frontend" ]; then
    alegere="on"
  fi
}

software(){
	cmd=(dialog --separate-output --ok-label "Install" --checklist "Move using [UP] [DOWN], [Space-Bar] to select & [ENTER] to install" 22 76 16)
    options=(1 "Git" on
	         2 "Node.js 14.x (install just one version)" off
             3 "Node.js 16.x (install just one version)" off
	         4 "JDK 8" off
	         5 "Firefox" off
	         6 "Google Chrome" off
	         6 "Generate SSH Keys" off
	         8 "Webpack" off
             9 "Visual Studio Code" off
             10 "Slack" off
             11 "ZSH" off
             12 "MySQL" off
             13 "PostgreSQL" off
             14 "Rubby" off
             15 "Postman" off
             16 "Insomnia" off
             17 "Atom Editor" off
             18 "Python3" off
             19 "GitKraken" off
             20 "Docker" off
             21 "Kubernetes" off
             22 "Terraform" off
             23 "AWS VPN Client" off
             24 "AWS CLI" off
             25 "OpenVPN" off
             26 "SOPS" off)
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		clear
		for choice in $choices
		do
		    case $choice in
            1)
				echo "Installing Git, please configure it later..."
				apt install -y git 
				;;

			2)
				echo "Installing Node.js 14.x"
				curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
				apt install -y nodejs
				;;
            3)
                echo "Installing Node.js 16.x"
                curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
                apt install -y nodejs
                ;;
    		4)	
				echo "Installing JDK 8"
				apt install python-software-properties -y
				add-apt-repository ppa:webupd8team/java -y
				apt update
				apt install oracle-java8-installer -y
				;;
				
			5)
                echo "Installing Firefox"
                apt-get update 
                ;;
			6)
				echo "Installing Google Chrome"
				wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
				sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
				apt-get update 
				apt-get install google-chrome-stable -y
				;;
			7)
				echo "Generating SSH keys"
				ssh-keygen -t rsa -b 4096
				;;
			8)
				echo "Installing Webpack"
				npm install webpack -g
				;;
			9)
				echo "Installing Visual Studio Code"
				sudo apt install software-properties-common apt-transport-https
                wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
                sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
                sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
				sudo apt update
                sudo apt install code -y
                ;;
            10)
                echo "Installing Slack"
                wget https://downloads.slack-edge.com/releases/linux/4.21.1/prod/x64/slack-desktop-4.21.1-amd64.deb
                sudo apt install ./slack-desktop-4.2.0-amd64.deb
                sudo apt update
                sudo apt upgrade slack-desktop -y
                ;;
            11) 
                echo "Installing ZSH"
                sudo apt-get install zsh -y
                sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
                ;;
            12) 
                echo "Installing MySQL"
                sudo apt-get install mysql-server -y
                ;;
            13) 
                echo "Installing PostgreSQL"
                sudo apt-get install postgresql postgresql-contrib -y
                ;;
            14) 
                echo "Installing Rubby"
                sudo apt-get install ruby-full -y
                sudo apt-get install ruby-bundler -y
                ;;
            15) 
                echo "Installing Postman"
                wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
                tar -xzf postman.tar.gz
                sudo rm postman.tar.gz
                sudo mv Postman /opt/
                sudo ln -s /opt/Postman/Postman /usr/bin/postman
                ;;
            16) 
                echo "Installing Insomnia"
                ;;
            
            17) 
                echo "Installing Atom Editor"
                sudo add-apt-repository ppa:webupd8team/atom
                sudo apt-get update
                sudo apt-get install atom
                apm starred --install
                ;;
            18)
                echo "Installing Python3"
                sudo apt-get install python3-pip -y
                ;;
            19)
                echo "Installing GitKraken"
                wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
                sudo dpkg -i gitkraken-amd64.deb
                ;;
            
            20) 
                echo "Installing Docker"
                curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
                sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
                sudo apt-get update
                sudo apt-get install docker-ce -y
                sudo groupadd docker
                sudo usermod -aG docker $USER
                newgrp docker 
                sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                sudo chmod +x /usr/local/bin/docker-compose
                sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
                ;;
            21)
                echo "Installing Kubernetes"
                wget https://dl.k8s.io/v1.22.2/kubernetes-client-linux-amd64.tar.gz
                tar -xzf kubernetes-client-linux-amd64.tar.gz
                sudo rm kubernetes-client-linux-amd64.tar.gz
                sudo mv kubernetes/client/bin/kubectl /usr/local/bin/kubectl
                sudo mv kubernetes/client/bin/kubeadm /usr/local/bin/kubeadm
                sudo mv kubernetes/client/bin/kubelet /usr/local/bin/kubelet
                sudo mv kubernetes/client/bin/kube-proxy /usr/local/bin/kube-proxy
                ;;
            22)
                echo "Installing Terraform"
                LATEST_RELEASE=$(curl https://api.github.com/repos/hashicorp/terraform/releases/latest | jq --raw-output '.tag_name' | cut -c 2-)
                if [[ ! -e ${LATEST_RELEASE} ]]; then
                echo "Installing Terraform ${LATEST_RELEASE}..."
                rm terraform-*
                rm terraform
                wget https://releases.hashicorp.com/terraform/${LATEST_RELEASE}/terraform_${LATEST_RELEASE}_linux_amd64.zip
                unzip terraform_${LATEST_RELEASE}_linux_amd64.zip
                rm terraform_${LATEST_RELEASE}_linux_amd64.zip
                touch ${LATEST_RELEASE}
                else
                echo "Latest Terraform already installed."
                fi
                ;;
            23)
                echo "Installing AWS VPN Client"
                wget -q -O - https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo/awsvpnclient_public_key.asc | sudo apt-key add -
                echo "deb [arch=amd64] https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo ubuntu-20.04 main" | sudo tee /etc/apt/sources.list.d/aws-vpn-client.list
                sudo apt-get update
                sudo apt-get install awsvpnclient
                ;;
            24)
                echo "Installing AWS CLI"
                curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                unzip awscliv2.zip
                sudo ./aws/install
                sudo rm -rf awscliv2.zip aws
                ;;
            25)
                echo "Installing OpenVPN"
                sudo apt-get install openvpn -y
                ;;
            26)
                echo "Installing SOPS"
                sudo apt-get install sops -y
                ;;
	    esac
	done
}

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
else
 #Update and Upgrade
echo "Updating and Upgrading"
#apt-get update && sudo apt-get upgrade -y
#sudo apt-get install dialog
menu
fi
