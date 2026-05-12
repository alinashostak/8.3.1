def sequence_d_sum(n):
    if n < 1: return 0
    a1, a2 = 0, 1
    total_sum = (2 ** 1 * a1)
    if n >= 2:
        total_sum += (2 ** 2 * a2)

    ak_minus_2 = a1
    ak_minus_1 = a2

    for k in range(3, n + 1):
        ak = ak_minus_1 + k * ak_minus_2
        total_sum += (2 ** k * ak)
        ak_minus_2, ak_minus_1 = ak_minus_1, ak
    return total_sum


n = int(input("Введіть n для суми d: "))
print(f"Сума: {sequence_d_sum(n)}")
