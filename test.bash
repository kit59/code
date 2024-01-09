#!/bin/bash -xiv
# SPDX-FileCopyrightText: 2023 kaito Akiyama
# SPDX-License-Identifier: BSD-3-Claunse

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 6 | python3 circle.py)
[ "${out}" = 113.09733552923255 ] || ng ${LINENO}

out=$(echo あ | python3 circle.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | python3 circle.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
