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

out=$(echo あ | python3 array)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | python3 array)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo "OK"
exit $res
