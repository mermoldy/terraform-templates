provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
 
resource "google_compute_instance" "${var.instance_name}" {
  count        = 1
  name         = "test${count.index + 1}"
  machine_type = "f1-micro"
  zone         = "${var.region}"
 
  disk {
    image = "debian-7-wheezy-v20160301"
  }

  tags {
    Name = "test-instance"
  }

  network_interface {
    network = "default"
    access_config {}
  }
}