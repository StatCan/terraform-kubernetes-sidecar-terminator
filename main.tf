resource "null_resource" "sidecar_terminator_init" {

  provisioner "local-exec" {
    command = "kubectl -n ${var.kubectl_namespace} apply -f ${"${path.module}/config/"}"
  }
}
