# output "vpc_id" {
#   value = data.terraform_remote_state.vpc
# }

output "vpc_id" {
  value = aws_vpc.vpc
}