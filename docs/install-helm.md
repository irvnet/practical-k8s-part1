  
## Install Helm 3 
In this segment we'll install [helm](#) as our kubernetes package manager.  


### Install Helm
```
{
   curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
   sudo apt-get install apt-transport-https --yes
   echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
   sudo apt-get update
   sudo apt-get install helm
}
```


Congratulations! your Helm installation is complete.

---

**Next: [Install Ingress Controller](install-ingress-controller.md)**
