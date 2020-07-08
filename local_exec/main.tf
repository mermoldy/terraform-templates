resource "null_resource" "test3" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 4200  # 1h10m
    EOT
  }
}
