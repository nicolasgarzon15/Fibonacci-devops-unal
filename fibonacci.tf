hcl
Copiar código
provider "null" {}

locals {
  fibonacci = [0, 1]
}

# Generar la serie de Fibonacci hasta el número 21
resource "null_resource" "fibonacci_series" {
  count = 19 # Para generar hasta el número 21, necesitamos 19 iteraciones adicionales

  provisioner "local-exec" {
    command = <<EOT
      last=${local.fibonacci[count.index]}
      current=${local.fibonacci[count.index - 1]}
      new_number=$((last + current))
      echo $new_number >> fibonacci.txt
    EOT
  }

  # Añadir el nuevo número a la serie
  lifecycle {
    create_before_destroy = true
  }
}

output "fibonacci_series" {
  value = [for i in range(0, 21) : local.fibonacci[i]]
}
