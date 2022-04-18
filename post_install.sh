#!/bin/bash

_temp="/tmp/answer.$$"
_temp_var="$$"
alegere="off"
o1="off"
o2="off"
o3="off"
o4="off"
o5="off"
o6="off"
o7="off"
o8="off"
o9="off"
o10="off"
o11="off"
o12="off"
o13="off"
o14="off"
o15="off"
o16="off"
o17="off"
o18="off"
o19="off"
o20="off"
o21="off"
o22="off"
o23="off"
o24="off"
o25="off"
o26="off"
o27="off"
VER="0.4"

menu() {
 dialog --backtitle "Install all the tools you need" --title " Freak Helper - v$VER "\
        --cancel-label "Quit" \
        --menu "Move using [UP] [DOWN], [Enter] to select" 17 60 10\
        FrontEnd "Intall tools for Frontend Developer" \
        BackEnd "Intall tools for Backend Developer" \
        Roku "Intall tools for Roku Developer" \
        Android "Intall tools for Android Developers" \
        DevOps "Intall tools for DevOps Engineering" \
        Quit "Close Freak Helper script" 2>$_temp
       
    opt=${?}
    if [ $opt != 0 ]; then rm $_temp; exit; fi
    menuitem=`cat $_temp`
    echo "menu=$menuitem"
    case $menuitem in
        FrontEnd) _temp_var="frontend" ; check ; software;;
        BackEnd) _temp_var="backend" ; check ;  software;;
        Roku) _temp_var="roku" ; check ; software;;
        Android) _temp_var="android" ; check ; software;;
        DevOps) _temp_var="devops" ; check ; software;;
        Quit) rm $_temp; clear; exit;;
    esac
}

check() {
 dialog --backtitle "Verficare variabila" \
    --msgbox "Variabila este: $_temp_var" 9 52
  if [ "$_temp_var" == "frontend" ]; then
    o1="on" o2="off" o3="off" o4="off" o5="off" o6="off" o7="off" o8="off" o9="off" o10="off" o11="off" o12="off" o13="off" o14="off" o15="off" o16="off" o17="off" o18="off" o19="off" o20="off" o21="off" o22="off" o23="off" o24="off" o25="off" o26="off"
  else if [ "$_temp_var" == "backend" ]; then
    o1="off" o2="off" o3="off" o4="off" o5="off" o6="on" o7="off" o8="off" o9="off" o10="off" o11="off" o12="off" o13="off" o14="off" o15="off" o16="off" o17="off" o18="off" o19="off" o20="off" o21="off" o22="off" o23="off" o24="off" o25="off" o26="off"
  else if [ "$_temp_var" == "roku" ]; then
    o1="off" o2="off" o3="off" o4="off" o5="off" o6="on" o7="off" o8="off" o9="off" o10="off" o11="off" o12="off" o13="off" o14="off" o15="off" o16="off" o17="off" o18="off" o19="off" o20="off" o21="off" o22="off" o23="off" o24="off" o25="off" o26="off"
  else if [ "$_temp_var" == "android" ]; then
    o1="off" o2="off" o3="off" o4="off" o5="off" o6="on" o7="off" o8="off" o9="off" o10="off" o11="off" o12="off" o13="off" o14="off" o15="off" o16="off" o17="off" o18="off" o19="off" o20="off" o21="off" o22="off" o23="off" o24="off" o25="off" o26="off"
  else if [ "$_temp_var" == "devops" ]; then
    o1="on" o2="off" o3="off" o4="off" o5="off" o6="on" o7="off" o8="off" o9="off" o10="off" o11="off" o12="off" o13="off" o14="off" o15="off" o16="off" o17="off" o18="off" o19="off" o20="off" o21="off" o22="off" o23="off" o24="off" o25="off" o26="off"
      fi
     fi
    fi
   fi
  fi
}

software(){
    cmd=(dialog --separate-output --ok-label "Install" --checklist "Move using [UP] [DOWN], [Space-Bar] to select & [ENTER] to install" 22 76 16)
    options=(1 "Git" $o1
	         2 "NVM" $o2
             3 "???" $o3
	         4 "???" $o4
	         5 "RubyMine" $o5
	         6 "Android Studio" $o6
	         7 "Visual Studio Code" $o7
	         8 "Generate SSH Keys" $o8
             9 "Atom Editor" $o9
             10 "Slack" $o10
             11 "ZSH" $o11
             12 "MySQL" $o12
             13 "PostgreSQL" $o13
             14 "Ruby" $o14
             15 "Python3" $o15
             16 "GoLang" $o16
             17 "Postman" $o17
             18 "Insomnia" $o18
             19 "GitKraken" $o19
             20 "Docker" $o20
             21 "Kubernetes" $o21
             22 "Terraform" $o22
             23 "AWS VPN Client" $o23
             24 "AWS CLI" $o24
             25 "OpenVPN" $o25
             26 "SOPS" $o26
             27 "K9s" $o27
             )
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
				echo "Installing NVM"
				curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
                echo "You will need to export NVM_DIR, please follow the instructions from NVM repo"
				;;
            3)
                echo "???"
                ;;
    		4)	
				echo "???"
				;;
				
			5)
                echo "Installing RubyMine"
                sudo snap install rubymine --classic 
                ;;
			6)
				echo "Installing Android Studio"
                sudo apt install -y openjdk-11-jdk
				sudo snap install android-studio --classic
                sudo apt install -y android-tools
				;;
			7)
				echo "Installing Visual Studio Code"
				sudo apt install software-properties-common apt-transport-https
                wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
                sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
                sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
				sudo apt update
                sudo apt install code -y
				;;
			8)
				echo "Generating SSH keys"
				ssh-keygen -t rsa -b 4096
				;;
			9)
				echo "Installing Atom Editor"
                sudo add-apt-repository ppa:webupd8team/atom
                sudo apt-get update
                sudo apt-get install atom
                apm starred --install
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
                echo "Installing Python3.9"
                sudo apt-get install python3.9 -y
                ;;
            16) 
                echo "Installing Go"
                sudo apt-get install golang-go -y
                ;;
            17) 
                echo "Installing Postman"
                wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
                tar -xzf postman.tar.gz
                sudo rm postman.tar.gz
                sudo mv Postman /opt/
                sudo ln -s /opt/Postman/Postman /usr/bin/postman
                ;;
            18)
                echo "Installing Insomnia"
                echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
                    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

                # Refresh repository sources and install Insomnia
                sudo apt-get update
                sudo apt-get install insomnia
                ;;
            19)
                echo "Installing GitKraken"
                wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
                sudo dpkg -i gitkraken-amd64.deb
                rm gitkraken-amd64.deb
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
            27) 
                echo "Installing K9s"
                curl -s https://api.github.com/repos/derailed/k9s/releases/latest \
                | grep "Linux_x86_64" \
                | cut -d : -f 2,3 \
                | tr -d \" \
                | wget -qi - \
                | tar -xzvf - -C /usr/local/bin
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
 #apt-get update 
 #sudo apt-get upgrade -y
 #sudo apt-get install dialog
menu
fi
