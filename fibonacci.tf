provider "null" {}

locals {
  # Generar la serie de Fibonacci hasta el número 21
  fibonacci = [0, 1]

  # Generar los números de Fibonacci
  count = 19
  fib_seq = [for i in range(2, local.count + 2) : local.fibonacci[i - 2] + local.fibonacci[i - 1]]
}

# Unir los dos primeros elementos de la serie con los generados
output "fibonacci_series" {
  value = local.fibonacci ++ local.fib_seq
}
