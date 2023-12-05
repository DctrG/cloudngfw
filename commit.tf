resource "cloudngfwaws_commit_rulestack" "test" {
  rulestack = "test-rulestack"
  depends_on = [
    cloudngfwaws_rulestack.test,
    cloudngfwaws_security_rule.test
  ]
}
