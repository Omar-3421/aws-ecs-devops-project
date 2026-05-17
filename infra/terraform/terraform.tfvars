subnet_ids = [
  "subnet-0b8da45742a6d7f52",
  "subnet-09bc1d746d2e8031b",
  "subnet-05934d9d062ebe549"
]

security_group_ids = [
  "sg-02de993edf0198e18"
]

desired_count = 1
# -----------------------------------------
# EXPLANATION
# -----------------------------------------
#
# terraform.tfvars supplies actual values
# for variables defined in variables.tf.
#
# This separates configuration values
# from infrastructure code.
#
# We can easily create different environments:
#
# dev
# staging
# production
#
# just by changing tfvars values.
#
# ClickOps equivalent:
# The actual values you typed into AWS forms.
#