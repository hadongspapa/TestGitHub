#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_9_3_2.sh
# 
#         USAGE: ./ex_9_3_2.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2017년 01월 04일 23시 06분 41초
#      REVISION:  ---
#===============================================================================

echo "######## \${parameter+alt_value} #########"
echo

a=${param1+xyz}
echo "a = $a"			# a = 

param2=
a=${param2+xyz}
echo "a = $a"			# a = xyz

param3=123
a=${param3+xyz}
echo "a = $a"			# a = xyz

echo
echo "####### \${parameter:+alt_value} #########"
echo

a=${param4:+xyz}
echo "a = $a"			# a = 

param5=
a=${param5:+xyz}
echo "a = $a"			# a = 
# a=${param5+xyz}		와 결과가 다르죠 ? 

param6=123
a=${param6+xyz}
echo "a = $a"			# a = xyz
