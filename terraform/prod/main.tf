# local-exec
resource "null_resource" "ls" {
  provisioner "local-exec" {
    command = "ls -lah"
  }
}


resource "null_resource" "whoami" {
  provisioner "local-exec" {
    command = "whoami"
  }
}