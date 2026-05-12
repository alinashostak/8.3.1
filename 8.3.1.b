def calculate_product_b(n):
    product = 1
    factorial = 1
    for i in range(1, n + 1):
        factorial *= i  # обчислюємо i!
        term = 1 / (i + factorial)
        product *= term
    return product

n = int(input("Введіть n для завдання b: "))
print(f"Результат: {calculate_product_b(n)}")
