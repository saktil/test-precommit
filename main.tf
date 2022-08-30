resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
    yor_trace            = "86830d8b-cba8-4d27-8c37-3fe7ce7b9261"
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
    yor_trace            = "4223d77d-a0d5-40ba-b20f-e659d630b829"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {

    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
    yor_trace            = "5dbcde75-018b-4131-9bd3-36d86b7b509a"
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

    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
    yor_trace            = "dafbf8f0-eb83-49ab-8af6-30bbc89cfb89"
  }
}

