  
## Install Ingress Controller
In this segment we'll install an ingress controller to our cluster.


###  Deploy ambassador CRD's
```
kubectl apply -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-crds.yaml
```

###  Deploy ambassador operator
 ```
 {
   kubectl apply -n ambassador -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-
 kind.yaml
 
   kubectl wait --timeout=180s -n ambassador --for=condition=deployed ambassadorinstallations/ambassador

 }
 ```


Congratulations! your ingress controller installation is complete.

---

**Next: [Deploy Applications](deploy-applications.md)**
