resource "kubernetes_pod" "example" {
  metadata {
    name = "example-test"
   }

  spec {
    container {
      image = "nginx"
      name  = "example-test"

      port {
        container_port = 80
      }
    }
  }
}

