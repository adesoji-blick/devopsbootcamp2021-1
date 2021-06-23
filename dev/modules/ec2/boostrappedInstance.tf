resource "aws_instance" "web" {
  count         = "${var.instance_count}"
  ami          = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  key_name="${var.my_key_name}"
  vpc_security_group_ids = ["${var.main_sg_id}"]

  user_data     = "${file("${var.bootstrap_script}")}"

  tags = {
    Name = "${var.name}-${count.index + 1}"
    Environment = "${var.environment}-${count.index + 1}"
    Role = "${var.role}-${count.index + 1}"
  }
}
