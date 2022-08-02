resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {


    yor_trace = "4c9d35db-dc55-4210-8808-d495de54555f"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {

    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
    yor_trace            = "a2bb2812-b29f-4c19-b311-cd7118c84c5f"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {


    yor_trace = "10d1ff62-8318-4ebc-ac74-1fdc2321bcf9"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-0d70546e43a941d70" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }
  tags = {


    yor_trace = "c9129b11-3009-4904-8335-ed9f6c04164f"
  }
}

