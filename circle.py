#!/usr/bin/python3
#SPDX-FileCopyrightText: 2023 Kaito Akiyama
#SPDX-License-Identifier: BSD-3-Clause

import math
import fileinput

# 標準入力から1つの数値を読み取る
d = float(next(fileinput.input()))

# 円の面積を計算
area = math.pi * d * d

# 結果を表示
print(f"半径{d}の円の面積は{area}")
