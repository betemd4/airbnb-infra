resource "aws_instance" "web" {
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  #vpc_security_group_ids = [aws_security_group.allow_tls.id]
  vpc_security_group_ids = [var.sg_id]  # after we did variable avoiding hard coding
  

  tags = {
    Name = "HelloWorld"
  }
}