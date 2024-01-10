#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

out=$(echo 8 | python3 array.py)

[ "${out}" = "和: 15.999999985098839" ] || ng ${LINENO}

[ "$res" = 0 ] && echo "OK"
exit $res

