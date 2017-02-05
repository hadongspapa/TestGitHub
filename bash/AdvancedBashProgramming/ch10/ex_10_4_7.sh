#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_7.sh
# 
#         USAGE: ./ex_10_4_7.sh 
# 
#   DESCRIPTION: select로 메뉴 만들기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/05/2017 10:56:04 PM
#      REVISION:  ---
#===============================================================================

PS3='제일 좋아하는 야채를 고르세요: '	# 프롬프트 문자열 세트

echo

select vegetable in "콩" "당근" "감자" "양파" "순무"
do
	echo
	echo "제일 좋아하는 야채가 $vegetable 이네요."
	echo "깔깔~~"
	echo
	break	# 여기에 'break'가 없으면 무한 루프를 돕니다.
done

exit 0
	
