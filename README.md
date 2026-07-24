## Despliegue de la aplicación
Puedes correr este ejemplo como un pod en tu openshift local mediante GitOps.

### Openshift Local
Openshift debe estar iniciado y debes estar logeado en un projecto activo. Debe existir el operador "RedHat OpenShift GitOps".

```sh
$ crc setup # Set-up the hypervisor
$ crc start # Initialize the openshift cluster
$ oc login -u developer # Login
$ oc new-project nginx-demo # Create a project to deploy to
$ oc apply -f repository-secret.yaml # Deploys the example app
$ oc apply -f appproject.yaml # Deploys the example app
$ oc apply -f application.yaml # Deploys the example app
```
