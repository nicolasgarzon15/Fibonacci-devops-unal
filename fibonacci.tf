resource "null_resource" "fibonacci" {
  provisioner "local-exec" {
    command = "python3 fibonacci.py"
  }
}
