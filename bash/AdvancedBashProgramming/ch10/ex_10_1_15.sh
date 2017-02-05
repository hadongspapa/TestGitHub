#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_1_15.sh
# 
#         USAGE: ./ex_10_1_15.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 01/12/2017 12:06:03 AM
#      REVISION:  ---
#===============================================================================

var1=unset
previous=$var1

while echo "이전 변수 = $previous"
	echo
	previous=$var1
	[ "$var1" != end ] # 바로 전의 "var1"이 무엇이었는지 계속 확인.
	# "while"에는 4가지 조건이 있지만 오직 마지막 조건이 루프를 제어합니다.
	# *마지막* 종료 상태가 중요하다는 말씀.
do 
	echo "변수값을 넣으세요 #1 (끝내려면 end) "
	read var1
	echo "변수 #1 = $var1"
done

# 이 스크립트가 어떻게 돌아가는지 알아내 보세요.
# 약간 미묘한(tricky) 부분이 있습니다.

exit 0
