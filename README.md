# gns3_Dockerized

At the root of the project, a bash script allows you to build the docker container bundle for GNS3 v2.2.  
Otherwise, you can find them at:  

* https://hub.docker.com/r/cybermeme/gns3-2.2-server
* https://hub.docker.com/r/cybermeme/gns3-2.2-client

This instance of GNS3 has installed some basic utilities such as VPCS, dynamips, docker, xterm, Wireshark and qemu.  

It was not possible to interface with Virtualbox or VmWare, however you can use virt-manager to create some custom qemu images and then copy them with docker cp.  

A python frontend is being studied to perform all of these tasks and also to migrate projects from one container to another making it easier for you to share your work.  

### to start the server:
```
docker run -d -it --net=host --privileged --volume=GNS3:/home/gns3user --name gns3server cybermeme/gns3-2.2-server:latest
```

### to start the client:  
```
docker run -d -it --net=host --privileged --env="DISPLAY" --volume=GNS3:/home/gns3user --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name gns3client cybermeme/gns3-2.2-client:latest
```

The documents will be stored in a volume called GNS3, you can rename it when you launch the container but, be sure to rename it in all the containers (server and client).

### To copy a qemu image, simply copy it from the folder containing your qemu image:
give user rights first
```
sudo chown 1000:1000 image.qcow2
docker cp image.qcow2 gns3client:/home/gns3user/GNS3/images/QEMU
```


### README:  
* Always start the server first.
If the server is running (docker ps will tell you), you can start gns3 directly with:  
docker start gns3client.

* NAT is not running yet but Cloud is and it connect you directly to an interface.

* The gns3 appliances for docker with a GUI do not work yet because a vnc server is missing at the moment.

* When you launch a download by clicking on the GS3 appliance from GNS3, don't forget to close your firefox before so that the tabs don't cross and the iso is downloaded directly in the docker volume (a tutorial is in preparation).


This version has been tested on a debian 10, an ubuntu 20.10 Manjaro (the easyest way to install docker) and mint (for linux mint, during docker install, just change "ulyana" by "focal" in the source.list file, idem for kali linux it's "buster" instead of "kali-roling") other versions of linux are under test.  
If you have used it on another OS, please send me a feedback.

---

A la racine du projet, un script bash vous permet de construire la base de containers docker pour GNS3 v2.2.  
Sinon, vous pouvez les trouver à:   

* https://hub.docker.com/r/cybermeme/gns3-2.2-server
* https://hub.docker.com/r/cybermeme/gns3-2.2-client



Cette instance de GNS3 à les utilitaires de bases installés VPCS, dynamips, docker, xterm, Wireshark et qemu.  

Il ne m'a pas été possible de mettre en place un interfaçage avec Virtualbox ou VmWare, néanmoins vous pouvez utiliser virt-manager pour créer des images qemu sur mesure, puis les copier avec docker cp.  

Un frontend python est en cours d'étude pour effectuer ces taches d’interfaçage facile et aussi pour migrer des projets d'un contenaire à un autre vous facilitant le partage de votre travail.  

### pour lancer le serveur:  
```
docker run -d -it --net=host --privileged --volume=GNS3:/home/gns3user --name gns3server cybermeme/gns3-2.2-server:latest
```

### pour lancer le client:  
```
docker run -d -it --net=host --privileged --env="DISPLAY" --volume=GNS3:/home/gns3user --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name gns3client cybermeme/gns3-2.2-client:latest
```

les documents seront entassés dans un volume nommé GNS3, vous pouvez le renommé au lancement du container mais, veillez bien à le renommer dans les containers (serveur et client).

### Pour copier une image qemu, il vous suffit depuis le dossier contenant votre image qemu:
Donner les droits d'utilisateur en premier
```
sudo chown 1000:1000 image.qcow2
docker cp image.qcow2 gns3client:/home/gns3user/GNS3/images/QEMU
```


### README:  
* Toujours lancer le serveur en premier.
Si le serveur tourne (docker ps vous l'indiquera), vous pouvez lancer gns3 directement avec:  
docker start gns3client.

* NAT ne fonctionne pas pour l'instant mais Cloud le remplace parfaitement.

* Les appliances gns3 pour docker avec une interfaces graphique ne fonctionnent pas encore car il manque un serveur vnc pour le moment.

* Quand vous lancer un telechargement en cliquant sur l'appliance GS3 depuis GNS3, pensez à fermer votre firefox avant pour que les tabs ne se croisent pas et que l'iso soit téléchargé directement dans le volume docker (un série de tuto est en préparation).


Cette version a été testée sur une debian 10, une ubuntu 20.10, manjaro et d'autres versions de linux sont en cours de test.  
Si vous l'avez utilisé sur un autre OS, merci de me faire un retour.
