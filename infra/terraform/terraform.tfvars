aws_region   = "eu-west-2"
cluster_name = "terraform-ecs-cluster"

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