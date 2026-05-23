cloudflare_zone_id = "9eccba55ce7151cc92825703e2e178cd"


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