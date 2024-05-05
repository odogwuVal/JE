provider "helm" {
  kubernetes {
    host        = var.host
    config_path = var.config_path
  }
}

resource "helm_release" "name" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "3.35.4"

  values = [file("values/argocd.yaml")]
}