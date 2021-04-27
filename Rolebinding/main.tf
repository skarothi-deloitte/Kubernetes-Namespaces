resource "kubernetes_manifest" "namespace_rolebinding" {
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
      "name"     = var.Clusterrole //clusterroleName to be used
    }
    "subjects" = [
      {
        "apiGroup" = "rbac.authorization.k8s.io"
        "kind"     = "User"
        "name"     = var.Username //user to bind this role to
      },
    ]
  }
}
