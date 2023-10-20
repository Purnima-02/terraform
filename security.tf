#creating security group.tf
resource "aws_security_group""demosg" {
vpc_id=aws_vpc.demovpc.id
ingress{
from_port=80
to_port=80
protocol="TCP"
cidr_blocks=["0.0.0.0/0"]
}
ingress{
from_port=8080
to_port=8080
protocol="TCP"
cidr_blocks=["0.0.0.0/0"]
}
ingress{
from_port=9000
to_port=9000
protocol="TCP"
cidr_blocks=["0.0.0.0/0"]
}
ingress{
from_port=22
to_port=22
protocol="TCP"
cidr_blocks=["0.0.0.0/0"]
}
egress{
from_port=0
to_port=0
protocol="-1"
cidr_blocks=["0.0.0.0/0"]
}
tags={
Name="web sg"
}
}

