resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {

<<<<<<< HEAD
    yor_trace            = "52f6a1d7-7e70-4428-848d-a0a3737bf999"
=======
>>>>>>> 5e5418b (update1)
    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
<<<<<<< HEAD
=======
    yor_trace            = "3a675c10-2bc4-4620-8a3a-9ca10b829fff"
>>>>>>> 5e5418b (update1)
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {

<<<<<<< HEAD
    yor_trace            = "61f3edfa-efc9-431f-8057-c643bfa5a16b"
=======
>>>>>>> 5e5418b (update1)
    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
<<<<<<< HEAD
=======
    yor_trace            = "cf512c6b-38b8-496e-b989-eb706aad6753"
>>>>>>> 5e5418b (update1)
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {

<<<<<<< HEAD
    yor_trace            = "6e420c66-56c4-474f-b39f-ed7c4699773c"
=======
>>>>>>> 5e5418b (update1)
    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
<<<<<<< HEAD
=======
    yor_trace            = "c6b00f19-6b71-4895-8f45-6659f166f472"
>>>>>>> 5e5418b (update1)
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

<<<<<<< HEAD
    yor_trace            = "362a29fb-d7ef-4416-b371-92bf3181c459"
=======
>>>>>>> 5e5418b (update1)
    git_commit           = "8b31c449cb19e78963f8dbb595132101610dda70"
    git_file             = "main.tf"
    git_last_modified_at = "2022-08-01 06:46:57"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-precommit"
<<<<<<< HEAD
=======
    yor_trace            = "9b8b138e-73fa-4908-af59-f5cf984a0c95"
>>>>>>> 5e5418b (update1)
  }
}

