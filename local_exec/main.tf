resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 10  # 10s
    EOT
  }
}
