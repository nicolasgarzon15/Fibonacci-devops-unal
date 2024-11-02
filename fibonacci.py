def fibonacci(n):
    if n <= 0:
        print("Incorrect input")
    elif n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)   


# Imprimir la serie hasta 21
for i in range(1, 22):
    print(fibonacci(i))
