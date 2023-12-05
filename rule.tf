resource "cloudngfwaws_security_rule" "test" {
  rulestack   = cloudngfwaws_rulestack.test.name
  rule_list   = "LocalRule"
  priority    = 100
  name        = "test-security-rule"
  description = "Basic web-browsing traffic rule"
  source {
    cidrs = ["any"]
  }
  destination {
    cidrs = ["192.168.20.0/24"]
    # cidrs = ["any"]
  }
  applications = ["web-browsing"]
  category {}
  action  = "Allow"
  logging = true
  lifecycle {
    create_before_destroy = true
  }
}