#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_8.sh
# 
#         USAGE: ./ex_10_4_8.sh 
# 
#   DESCRIPTION: 함수에서 select를 써서 메뉴 만들기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/05/2017 10:59:21 PM
#      REVISION:  ---
#===============================================================================

PS3='제일 좋아하는 야채를 고르세요: '

echo

choice_of()
{
	select vegetable
	# select 에 [in list] 가 빠져있기 때문에, 함수로 넘어온 인자를 씁니다.
	do
		echo
		echo "제일 좋아하는 야채가 $vegetable 군요."
		echo "껄껄~~"
		echo
		break
	done
}

choice_of 콩 쌀 당근 무 토마토 시금치
#		  $1 $2 $3   $4 $5     $6
#		  choice_of() 함수로 넘어갑니다.
