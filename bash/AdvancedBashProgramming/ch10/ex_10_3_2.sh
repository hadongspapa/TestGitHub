#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_3_2.sh
# 
#         USAGE: ./ex_10_3_2.sh 
# 
#   DESCRIPTION: 여러 단계의 루프에서 탈출하기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/04/2017 10:01:11 PM
#      REVISION:  ---
#===============================================================================

for outerloop in 1 2 3 4 5
do 
	echo -n "$outerloop 그룹:	"

	for innerloop in 1 2 3 4 5
	do 
		echo -n "$innerloop "

		if [ "$innerloop" -eq 3 ]
		then
			break	# break 2 라고 하면 어떻게 될까요 ?
					# (안쪽과 바깥쪽 루프 모두에서 "탈출"(break)합니다.)
		fi
	done

	echo
done

echo

exit 0

