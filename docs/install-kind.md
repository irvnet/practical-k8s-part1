  
## Install Kind 
In this segment we'll install [kind](#) as our kubernetes cluster.  


### Download and install the kind binary
```
{
   curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64
   chmod +x ./kind
   mv ./kind /some-dir-in-your-PATH/kind

}
```


Congratulations! your kubernetes cluster installation is complete.

---

**Next: [Install Helm](install-helm.md)**
