#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_10_4_2.sh
# 
#         USAGE: ./ex_10_4_2.sh 
# 
#   DESCRIPTION: case로 메뉴 만들기
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jiyong Jang (), jy97.jang@samsung.com
#  ORGANIZATION: 
#       CREATED: 02/04/2017 11:17:39 PM
#      REVISION:  ---
#===============================================================================

clear # 화면을 정리하고

echo "			주소록"
echo "			------"
echo "다음중 한 명을 고르세요:"
echo
echo "[E]vans, Roland"
echo "[J]ones, Mildred"
echo "[S]mith, Julie"
echo "[Z]ane, Morris"
echo

read person

case "$person" in 
# 변수가 쿼우트 된 것에 주의하세요.
	"E" | "e" )
	# 대소문자 모두 인식.
	echo 
	echo "Roland Evans"
	echo "4321 Floppy Dr."
	echo "Hardscrabble, CO 80753"
	echo "(303) 734-9874"
	echo "(303) 734-9692 fac"
	echo "revans@zzy.net"
	echo "Business partner & old friend"
	;;
# 이중 세미콜론이 각 옵션을 끝내게 해 주는 것을 눈여겨 봐두세요.

	"J" | "j" )
	echo
	echo "Mildred Jones"
	echo "249 E. 7th St., Apt. 19"
	echo "New York, NY 10009"
	echo "(212) 533-2814"
	echo "(212) 533-9972 fax"
	echo "milliej@loisaida.com"
	echo "Girlfriend"
	echo "Birthday: Feb. 11"
	;;
	
	* )
	echo
	echo "아직 등록이 안 돼 있습니다."
	;;

esac

echo

exit 0
