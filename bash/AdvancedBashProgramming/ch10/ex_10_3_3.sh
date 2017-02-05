#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_3_3.sh
# 
#         USAGE: ./ex_10_3_3.sh 
# 
#   DESCRIPTION: 더 상위 루프 레벨에서 계속하기(continue)
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/04/2017 10:59:46 PM
#      REVISION:  ---
#===============================================================================

for outer in I II III IV V		# 바깥쪽 루프
do
	echo; echo -n "Group $outer: "

	for inner in 1 2 3 4 5 6 7 8 9 10 # 안쪽 루프
	do

		if [ "$inner" -eq 7 ]
		then
			continue 2	# "바깥쪽 루프"인 2번째 레벨의 루프에서 계속 진행합니다.
						# 윗줄을 그냥 "continue"라고 하면 보통의 루프 동작이 일어납니다.
		fi
		
		echo -n "$inner " # 8 9 10 은 절대 에코되지 않습니다.
	done

done

echo; echo

# 독자들을 위한 연습문제:
# "continue N"을 쓰는 쓸모있는 스크립트를 짜보세요.

exit 0


