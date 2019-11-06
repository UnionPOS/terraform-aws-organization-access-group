# https://www.terraform.io/docs/providers/aws/d/iam_policy_document.html
data "aws_iam_policy_document" "with_mfa" {
  count = var.enabled && var.require_mfa ? 1 : 0

  statement {
    actions = [
      "sts:AssumeRole",
    ]

    resources = local.role_arns

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    effect = "Allow"
  }
}

data "aws_iam_policy_document" "without_mfa" {
  count = var.enabled && var.require_mfa == false ? 1 : 0

  statement {
    actions = [
      "sts:AssumeRole",
    ]

    resources = local.role_arns

    effect = "Allow"
  }
}
