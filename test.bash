#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

out=$(echo 8 | python3 array | grep "^和:")
[ "${out}" = "和: 15.999999985098839" ] || ng ${LINENO}

error_out=$(echo "invalid" | python3 array.py 2>&1)
[ "$?" = 1 ] || ng ${LINENO}
[ "${error_out}" = "実数を入力: Error: Invalid input provided." ] || ng ${LINENO}

[ "$res" = 0 ] && echo "OK"
exit $res
