def determinant_c(n):
    if n == 1: return 2
    if n == 2: return 1
    d_prev2 = 2 # D1
    d_prev1 = 1 # D2
    for k in range(3, n + 1):
        d_curr = 2 * d_prev1 - 3 * d_prev2
        d_prev2, d_prev1 = d_prev1, d_curr
    return d_prev1

n = int(input("Введіть порядок матриці n: "))
print(f"Визначник: {determinant_c(n)}")
