resource "null_resource" "test4" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 42600  # 11h50m
    EOT
  }
}
