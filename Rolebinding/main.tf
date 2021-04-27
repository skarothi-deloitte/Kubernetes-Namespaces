resource "kubernetes_manifest" "clusterrolebinding_superadmin" {
  provider = kubernetes-alpha
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind"       = "RoleBinding"
    "metadata" = {
      "annotations" = {
        "rbac.authorization.kubernetes.io/autoupdate" = "true"
      }
      "name"      = var.Rolebindingname //rolebindingName
      "namespace" = var.Namespace       //Namespace

    }
    "roleRef" = {
      "apiGroup" = "rbac.authorization.k8s.io"
      "kind"     = "ClusterRole"
      "name"     = var.Clusterrole //"ex:superadmin"
    }
    "subjects" = [
      {
        "apiGroup" = "rbac.authorization.k8s.io"
        "kind"     = "User"
        "name"     = var.Username //"wcp:10.118.131.192:administrator@vsphere.local"
      },
    ]
  }
}
