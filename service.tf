resource "kubernetes_service" "example1" {
  metadata {
    name = "example-test"
  }
  spec {
    selector = {
      test = "MyExampleApp"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
}
}

