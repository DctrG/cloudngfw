resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  cidr_block = "192.168.0.0/24"
  vpc_id = aws_vpc.main.id
}

resource "aws_subnet" "private_subnet" {
  depends_on        = [ aws_subnet.public_subnet ]
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.20.0/24"

}
