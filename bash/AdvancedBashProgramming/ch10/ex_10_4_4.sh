#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_4.sh
# 
#         USAGE: ./ex_10_4_4.sh 
# 
#   DESCRIPTION: "case" 용 변수를 만들기 위해서 명령어 치환 쓰기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/05/2017 10:09:35 PM
#      REVISION:  ---
#===============================================================================

case $( arch ) in	# "arch"는 머신 아키텍펴를 리턴합니다.
	i386 ) echo "80386 기반의 머신";;
	i486 ) echo "80486 기반의 머신";;
	i586 ) echo "Pentium 기반의 머신";;
	i686 ) echo "Pentium2+ 기반의 머신";;
	*    ) echo "다른 형태의 머신";;
esac

exit 0
