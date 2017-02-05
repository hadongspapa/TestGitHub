#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_1.sh
# 
#         USAGE: ./ex_10_4_1.sh 
# 
#   DESCRIPTION: case 쓰기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/04/2017 11:13:58 PM
#      REVISION:  ---
#===============================================================================

echo; echo "아무키나 누른 다음 리턴을 치세요."
read Keypress

case "$Keypress" in
	[a-z]	) echo "소문자";;
	[A-Z]	) echo "대문자";;
	[0-9]	) echo "숫자";;
	*		) echo "구두점이나, 공백문자 등등";;
esac	# [대괄호]속 범위의 문자들을 받아 들입니다.

exit 0
