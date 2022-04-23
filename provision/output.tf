output "login-string" {
value=<<EOF
ssh -i ../cloud-auth/lab3-aws ubuntu@${join(",",aws_instance.practical-k8s-env.*.public_ip)}
EOF
}


