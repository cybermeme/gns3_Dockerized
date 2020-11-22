# OS tested

### The OS's listed below worked directly without intervention after the installation of the docker-ce following the installation explanations from the site:  
https://docs.docker.com/engine/install/   

* Centos 8
* Debian 10
* Ubuntu 20

### Distribs that have requested modifications

* Kali-linux
To install Docker on kali linux, I used https://docs.docker.com/engine/install/debian/ and, when configuring the repo, instead of:
>$ sudo add-apt-repository \
> deb [arch=amd64] https://download.docker.com/linux/debian \
> $(lsb_release -cs) \
> stable"

I put:
```
$ sudo add-apt-repository \
   "deb https://download.docker.com/linux/debian buster stable"
```


* Fedora 33
To use Docker under Fedora 33, it is best to use mobi-engine:
```
sudo dnf install moby-engine  
sudo systemctl enable --now docker  
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"  
sudo grub2-mkconfig -o /boot/grub2/grub.cfg  
sudo reboot
```


* Manjaro  
To install Docker on Manjaro I followed the article below and everything worked perfectly.  
https://linuxconfig.org/manjaro-linux-docker-installation


* Mint (linux)*
To install Docker on Linux Mint, I used https://docs.docker.com/engine/install/ubuntu/ and, after configuring the repository, instead of $(lsb_release -cs) I specified the equivalent version in ubuntu:
the line of the modified file is in /etc/apt/source.list.d/additional-repositories.list:
>  deb https://download.docker.com/linux/ubuntu focal stable  
\*the principle is the same as for kali linux


---

# OS testés

### Les OS listés ci dessous ont fonctionnés directement sans interventions après l'installation de docker-ce en suivant les explications d'installations depuis le site:  
https://docs.docker.com/engine/install/  

* Centos 8
* Debian 10
* Ubuntu 20

### Installations ayant demandé des modifications

* Kali-linux
Pour installer Docker sur kali linux, j'ai utilisé https://docs.docker.com/engine/install/debian/ et, lors de la configuration du repo, au lieu de:
>$ sudo add-apt-repository \
>   "deb [arch=amd64] https://download.docker.com/linux/debian \
>   $(lsb_release -cs) \
>   stable"

j'ai mis:
```
$ sudo add-apt-repository \
   "deb https://download.docker.com/linux/debian buster stable"
```


* Fedora 33
Pour utiliser Docker sous Fedora 33, il est préférable d'utiliser mobi-engine:
```
sudo dnf install moby-engine  
sudo systemctl enable --now docker  
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"  
sudo grub2-mkconfig -o /boot/grub2/grub.cfg  
sudo reboot
```


* Manjaro  
Pour installer Docker sur Manjaro j'ai suivi l'article ci-dessous et tout à fonctionné parfaitement  
https://linuxconfig.org/manjaro-linux-docker-installation


* Mint (linux)*
Pour installer Docker sur Linux Mint, j'ai utilisé https://docs.docker.com/engine/install/ubuntu/ et, après avoir configurer le dépot, au lieu de $(lsb_release -cs) j'ai indiqué la version équivalente en ubuntu:
la ligne du fichier modifiée est dans /etc/apt/source.list.d/additional-repositories.list:
>  deb https://download.docker.com/linux/ubuntu focal stable  
\*le principe est le même que pour kali linux

