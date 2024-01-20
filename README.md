# System configuration

## About
I have created this project for automating the setup that used to
take me hours to figure out. This singular script would be good
enough for most people. So, feel free to take it as an inspiration
and make your own. I would also give shout out [Primeagen](https://github.com/ThePrimeagen)
for the awesome developer productivity course, that's where I learned
about [Ansible](https://www.ansible.com/)

## Here are the steps you need to follow to get this right

## Installation
Instructions on how to use this project

```bash
$ git clone https://github.com/Naf256/ansible.git
$ cd ansible
$ ./stowing.sh
```
Running this will require you for vault pass as I've got some files
encrypted with ansible vault. Just type the vault password and you
should be good to go


## Post-Installation
There is somethings you still need to do manually for make alacritty font
work. Here I am using [CasKaydiaCoveMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/CascadiaCode.zip)
Eventually I'll make it part of the script. Just so you don't have to do it

- mv (whatever_font.zip) ~/.local/share/fonts
- unzip fonts in that location now you can use it
