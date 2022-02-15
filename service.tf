resource "kubernetes_service" "example" {
  metadata {
    name = "example-test"
  }
  spec {
    selector = {
      App = "nginx"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
}
}

