  
## Install Kubectl 
In this segment we'll install the [kubectl](#) client for our kubernetes cluster.  


### Add the GPG key and package repository for kubectl
```
{
   sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

   echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main"   |  sudo tee /etc/apt/sources.list.d/kubernetes.list

   sudo apt-get update

}
```

### Install kubectl
```
 sudo apt-get install -y kubectl
```


Congratulations! your kubectl installation is complete.

---

**Next: [Install Kind Cluster](install-kind.md)**
