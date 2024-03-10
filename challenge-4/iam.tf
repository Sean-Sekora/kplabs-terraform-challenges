/*
  Requirement 1: Create IAM user with following syntax: admin-user-{account-number-of-aws}

  Requirement 2: Output all users in the account

  Requirement 3: Output the total number of users

*/
resource "aws_iam_user" "admin_user" {
  name = "admin-user-${data.aws_caller_identity.current.account_id}"
  path = "/system/"
}

output "all_users" {
  value = aws_iam_user.admin_user.name
}

output "total_users" {
  value = length(aws_iam_user.admin_user.name)
}
