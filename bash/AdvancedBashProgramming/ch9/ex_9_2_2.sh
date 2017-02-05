#!/bin/bash - 
#===============================================================================
#
#          FILE: ex_9_2_2.sh
# 
#         USAGE: ./ex_9_2_2.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2017년 01월 04일 22시 38분 01초
#      REVISION:  ---
#===============================================================================

# cvt.sh:
# 특정 디렉토리의 모든 MacPaint 이미지 파일을 "pbm" 포맷으로 변환.

# Brian Henderson(bryanh@giraffe-data.com)이 관리하고 있는 "netpbm" 패키지의 
#+ "macptopbm" 을 사용함.
# Netpbm 은 거의 대부분의 리눅스 배포판에 포함되어 있습니다.

OPERATION=macptopbm
SUFFIX=pbm			# 새 파일이름 확장자.

if [ -n "$1" ]
then 
	directory=$1	# 디렉토리 이름이 인자로 주어질 경우...
else
	directory=$PWD	# 아니면 현재 디렉토리에 대해서.
fi

# 대상 디렉토리의 모든 파일을 ".mac" 확장자의 MacPaint 이미지 파일이라고 가정.

for file in $directory/*		# 파일이름 globbing
do
	filename=${file%.*c}		# 파일이름에서 ".mac" 확장자를 떼어냄
								#+ ('.*c' 는 '.' 과 'c'를 포함해서 둘 사이의 
								#+ 모든 것과 일치함).
	$OPERATION $file > $filename.$SUFFIX
								# 변환된 파일을 새 파일이름으로 재지향.
	rm -f $file					# 변환후 원래 파일 삭제.
	echo "$filename.$SUFFIX"	# 결과를 표준출력으로 로깅.
done

exit 0


