#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_5.sh
# 
#         USAGE: ./ex_10_4_5.sh 
# 
#   DESCRIPTION: 간단한 문자열 매칭
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/05/2017 10:15:35 PM
#      REVISION:  ---
#===============================================================================

match_string()
{
	MATCH=0
	NOMATCH=90
	PARAMS=2		# 이 함수는 2개의 인자가 필요합니다.
	BAD_PARAMS=91

	[ $# -eq $PARAMS ] || return $BAD_PARAMS

	case "$1" in
		"$2") return $MATCH;;
		*   ) return $NOMATCH;;
	esac

}

a=one
b=two
c=three
d=two

match_string $a		# 잘못된 인자 갯수
echo $?				# 91

match_string $a $b	# 일치하지 않음
echo $?				# 90

match_string $b $d	# 일치함
echo $?				# 0

exit 0
