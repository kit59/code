NUM = 30

try:
    n = float(input("実数を入力: "))
except ValueError:
    print("Error: Invalid input provided.")
    exit(1)

a = [0] * NUM
a[0] = n

print(f"a[0] = {n}")

for i in range(1, NUM):
    a[i] = a[i - 1] / 2
    print(f"a[{i}] = {a[i]}")

m = sum(a)
print(f"和: {m}")
print(f"a[0] * 2.0: {n * 2}")

