#!/usr/bin/env python3
x = int(input("飴の個数を入力："))
y = int(input("人数を入力: "))
mul = x // y
amari = x % y
print(f"{x}個の飴を{y}人で分けると、一人あたり{mul}個で、{amari}個余ります")
