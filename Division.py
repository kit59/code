#!/usr/bin/python3
#SPDX-FileCopyrightText: 2023 Kaito Akiyama
#SPDX-License-Identifier: BSD-3-Clause

x = float(input("きびだんごの個数を入力："))
y = float(input("人数を入力: "))

mul = x // y
amari = x % y

print(f"{x}個のきびだんごを{y}人で分けると、一人あたり{mul}個で、{amari}個余ります")
