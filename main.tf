
data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test"
}

resource "aws_instance" "ec2_instance_1" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"
  key_name      = "NikitaPatilNew"

  tags = {
    name = data.vault_kv_secret_v2.example.data["username"]
  }
}