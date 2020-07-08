resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 7200  # 2h
    EOT
  }
}
