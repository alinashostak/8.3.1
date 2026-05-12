import math

def taylor_sin(x, eps):
    term = x
    sin_sum = x
    k = 1
    while abs(term) > eps:
        # Рекурентне обчислення наступного члена
        term *= - (x**2) / ((2*k) * (2*k + 1))
        sin_sum += term
        k += 1
    return sin_sum

x_val = float(input("Введіть x: "))
eps = float(input("Введіть точність eps: "))

my_sin = taylor_sin(x_val, eps)
math_sin = math.sin(x_val)

print(f"Обчислено через ряд: {my_sin}")
print(f"Бібліотечний math.sin: {math_sin}")
print(f"Різниця: {abs(my_sin - math_sin)}")
