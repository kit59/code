#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
  echo "NG at Line $1"
  res=1
}

res=0

# テストケース1
out=$(echo -e "10\n3" | Division.py)
[ "${out}" = "10個のきびだんごを3人で分けると、一人あたり3.0個で、1.0個余ります" ] || ng ${LINENO}

# テストケース2
out=$(echo -e "あ\n3" | Division.py)
[ "$?" = 1 ] || ng ${LINENO}

# テストケース3
out=$(echo -e "\n3" | Division.py)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

# テストケース4
out=$(echo -e "15\n0" | Division.py)
[ "$?" = 1 ] || ng ${LINENO}

# テストケース5
out=$(echo -e "15\n3" | Division.py)
[ "${out}" = "15個のきびだんごを3人で分けると、一人あたり5.0個で、0.0個余ります" ] || ng ${LINENO}

[ "$res" = 0 ] && echo "OK"
exit $res
