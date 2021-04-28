


# Usage: The following module has to be used for creating rolebinding to Namespace in the TKG Workload cluster.
# Save this file in a given directory with rolebinding.tf (or) with any specific name as per your orginzations standards. 

# terraform init
# terraform apply

module "RB" {
source = "git repo location"
# example: source = "git::https://github.com/Kubernetes-Namespaces.git//Rolebinding" 


Rolebindingname = "testrolebinding"
Namespace =  "namespace to which we bind this role to"
Clusterrole = "cluster role to bind it for"
Username = "username to bind it to" 

}

