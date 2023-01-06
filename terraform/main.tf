terraform {
  cloud {
    organization = "example-org-7e8de7"

    workspaces {
      name = "spring-boot-helm-ws"

    }
  }
  required_version = "~> 1.3"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
