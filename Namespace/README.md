
#Usage: The following module has to be used for creating Namespace in the TKG Workload cluster.
# terraform init
# terraform apply

module "NS" {
  source = "git::https://github.com/skarothi-deloitte/Kubernetes-Namespaces.git//Namespace"

Namespace =  "namespace2021"

}

