#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_9_3_1.sh
# 
#         USAGE: ./ex_9_3_1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2017년 01월 04일 23시 00분 29초
#      REVISION:  ---
#===============================================================================


username0=
# username0 는 선언만 되고 널로 세트됐습니다.
echo "username0 = ${username0-`whoami`}"
# 에코 되지 않습니다.

echo "username1 = ${username1-`whoami`}"
# username1 는 선언되지 않았습니다.
# 에코됩니다.

username2=
# username2 는 선언만 되고 널로 세트됐습니다.
echo "username2 = ${username2:-`whoami`}"
# 조건 테스트시 - 가 아니고 :- 를 썼기 때문에 에코됩니다.

exit 0
