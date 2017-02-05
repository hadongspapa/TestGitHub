#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_1_14.sh
# 
#         USAGE: ./ex_10_1_14.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 01/12/2017 12:02:29 AM
#      REVISION:  ---
#===============================================================================

echo

while [ "$var1" != "end" ]		# while test "$var1" != "end"
do								# 라고 해도 동작함.
	echo "변수값을 넣으세요 #1 (끝내려면 end) "
	read var1					# 'read $var1' 이 아니죠 ? 왜 그럴까요 ?
	echo "변수 #1 = $var1"		# "#" 때문에 쿼우트를 해줘야 됩니다.
	# 종료 조건이 루프 처음에 테스트되기 때문에 'end'도 에코됩니다.
	echo
done

exit 0
