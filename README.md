### Deploy kubernetes on rancher running on vm
In this project I leveraged vagrant to automate the deployment of two ubuntu virtual machines on my hypervisor(virtualbox).
Deployed rancher on vm1 using docker and then created a kubernetes cluster on vm 2 using the previously deployed rancher.

Leveraging terraform, I installed argocd to the cluster and used helm chart to deploy a simple nginx application using argocd's app of apps.

