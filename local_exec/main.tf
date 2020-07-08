resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 10800  # 3h
    EOT
  }
}
