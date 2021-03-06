provider "aws" {
  region     = "${var.region}"
  access_key = "${var.scalr_aws_access_key}"
  secret_key = "${var.scalr_aws_secret_key}"
}

module "module_2" {
  source = "./../module-2"
}

resource "aws_instance" "default" {
  ami           = "${module.module_2.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"

  tags = {
    Name      = "sbabak-test-instance-1"
    email     = "s.babak@scalr.com"
    timestamp = "${timestamp()}"
  }

  lifecycle {
    ignore_changes = ["tags"]
  }
}
