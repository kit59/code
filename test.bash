#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

python3 array.py > output.txt

out=$(cat output.txt)

[ "${out}" = "和: 15.999999985098839" ] || ng ${LINENO}

rm output.txt

[ "$res" = 0 ] && echo "OK"
exit $res
