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
    yor_trace            = "3334e634-8f36-4d22-afbe-3b51ac1903d3"
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
    yor_trace            = "1d110be6-ae1f-4b6f-a496-92a993a183e1"
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
    yor_trace            = "3dd4e830-9f6a-47a7-8282-fafd0e732b32"
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
    yor_trace            = "8b683e94-93c1-47b1-aab1-15568b410b69"
  }
}

