resource "cloudngfwaws_rulestack" "test" {
  name        = "test-rulestack"
  scope       = "Local"
  account_id  = data.aws_caller_identity.current.account_id
  description = "Basic rule with anti-spyware profile attached"
  profile_config {
    anti_spyware = "BestPractice"
  }
  lifecycle {
      create_before_destroy = true
  }
}