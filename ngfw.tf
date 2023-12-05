resource "cloudngfwaws_ngfw" "test" {
  name        = "test-instance"
  vpc_id      = aws_vpc.main.id
  account_id  = data.aws_caller_identity.current.account_id
  description = "test firewall"
  endpoint_mode = "ServiceManaged"
  subnet_mapping {subnet_id = aws_subnet.public_subnet.id}
  rulestack = "test-rulestack"
  lifecycle {
    create_before_destroy = true
  }
  depends_on = [
    cloudngfwaws_commit_rulestack.test
  ]
}