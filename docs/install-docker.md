  
## Install Docker 
In this segment we'll install [Docker](#). Docker provides both a runtime and build engine for containers deployed to our kubernetes cluster. It also acts as a client for pulling or pushing images to image repositories whether public or private.


### Remove unnecesary packages and install pre-reqs
```
{
  sudo apt-get remove docker docker-engine docker.io containerd runc

  sudo apt-get -y install \
     ca-certificates \
     curl \
     gnupg \
     lsb-release
}
```

### Add Docker gpg key and package repository
```
{
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

 echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/
 linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 sudo apt-get update
}
```

### Install Docker and test  
```
 sudo apt-get -y install docker-ce docker-ce-cli containerd.io
 sudo docker run hello-world
```


### Add user to docker group (so sudo isn't necessary)
```
{
   sudo groupadd docker
   sudo usermod -aG docker $USER
   newgrp docker
}
```

Congratulations! your Docker installation is complete.

