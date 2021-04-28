
#Usage: The following module has to be used for creating Namespace in the TKG Workload cluster.
# Save this file in a given directory with namespace.tf (or) with any specific name as per your orginzations standards. 

# terraform init
# terraform apply

module "NS" {
  source = "git::https://github.com/skarothi-deloitte/Kubernetes-Namespaces.git//Namespace"

Namespace =  "example value:namespace2021"

}

