terraform {
    required_providers {
        aws = {
            source = "harshicorp/aws"
        }
    }
}

resource "aws_instance" "Dido-Test" {
    instance_type = "t2.micro"
    ami = "ami-04e905a52ec8010b2"
    count = 3     
    tags = {
        Name = "dido_instance[count.index]"
    }
    credit_specification {
    cpu_credits = "standard" #soit standard ou bien unlimited (t2micro est standard)
  }
#    timeouts {
#    delete = "20m"
#    }
}
