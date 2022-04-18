# Freak Helper

## First we need to install the dependencies

```sh
 apt-get update 
 sudo apt-get install dialog
```

## There are two methods on how to run the FreakHelper

- [Use the script](https://github.com/ViralOne/freak_helper/blob/master/afhelper.sh)
- [Use the compiled app](https://github.com/viralone/freak_helper/releases)
- Compile the script by your self

## Use the script in your terminal

```sh
chmod +x post_install.sh
./post_install.sh
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

Tools that are included in post_install script

| Software | FrontEnd | BackEnd | Android | DevOps |
| ------ | ------ | ------ | ------ | ------ |
| Git | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Node.js 14.x | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| Node.js 16.x | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |

## Development

Want to contribute? Great!

Create a new issue ticket with the tools that you think are important and why you think that we should add them in the first place.
