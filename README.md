# Freak Helper

## First we need to install the dependencies

```sh
apt-get update 
sudo apt-get install dialog
```

## There are two methods on how to run the FreakHelper

- [Use the script](https://github.com/ViralOne/freak_helper/blob/master/afhelper.sh)
- [Use the compiled app](https://github.com/viralone/freak_helper/releases)
- Compile the script yourself

## Use the script in your terminal

```sh
chmod +x afhelper.sh
./afhelper.sh
```

## Compile the script to have an executable

You will need to install the `shc` package first:

```sh
sudo add-apt-repository ppa:neurobin/ppa
sudo apt-get update
sudo apt-get install shc
```

Compile the script:

```sh
shc -v -f  afhelper.sh -o afhelper
```

Install the app:

```sh
sudo install afhelper /usr/local/bin
```

### How to start the app

Open a terminal an run inside the next line:

```sh
 afhelper
```

## Software list

Tools that are included in afhelper script

| Software | FrontEnd | BackEnd | Android | DevOps |
| ------ | ------ | ------ | ------ | ------ |
| Git | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| NVM | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| RubyMine | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Android Studio | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Visual Studio Code | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Generate SSH Keys | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Slack | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| ZSH | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| MySQL | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| PostgreSQL | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Ruby | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Python3.9 | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| GoLang | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Postman | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Insomnia | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| GitKraken | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Docker | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| K8s | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Terraform | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| AWS CLI | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| AWS VPN Client | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| SOPS | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| K9S | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |

## Development

Want to contribute? Great!

Create a new issue ticket with the tools that you think are important and why you think that we should add them in the first place.
