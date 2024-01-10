#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(echo 8 | python3 array.py)
[ "${out}" = "a[0] * 2.0: 16.0" ] || ng ${LINENO}

out=$(echo あ | python3 array.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | python3 array.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
