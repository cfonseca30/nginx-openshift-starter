## Despliegue de la aplicación
Puedes correr este ejemplo como un pod en tu openshift local mediante GitOps.

### Openshift Local
Openshift debe estar iniciado y debes estar logeado en un projecto activo. Despues ejecuta el comando `command`

```sh
$ crc setup # Set-up the hypervisor
$ crc start # Initialize the openshift cluster
$ oc login -u developer # Login
$ oc new-project my-example-project # Create a project to deploy to
$ npm run openshift # Deploys the example app
```
