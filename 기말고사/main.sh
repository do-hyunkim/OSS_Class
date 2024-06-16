#!/bin/bash
# 만든 프로그램 3개를 테스트하는 스크립트 파일
# 'library.sh' 파일을 읽어들이는 것부터 시작한다.

. library.sh

# 1. validint 작동 확인
echo "처음으로, echo 명령어가 경로에 있나요? (1=예, 2=아니오) "
read answer
while ! validint $answer 1 2 ; do
  echo "다시 시도하세요. echo 명령어가 "
  echo "경로에 있나요? (1=예, 2=아니오) "
  read answer
done

# 2. checkForCmdInPath 작동 확인
if ! checkForCmdInPath "echon" ; then
  echo "아니요, echo 명령어를 찾을 수 없습니다."
else
  echo "echo 명령어가 PATH에 있습니다."
fi

echo ""
echo "윤년일 것 같은 연도를 입력하세요: "
read year

# 숫자 유효성 및 범위 (1-9999) 확인
while ! validint $year 1 9999 ; do
  echo "올바른 형식의 연도를 입력하세요: "
  read year
done

# 3. isLeapYear 작동 확인
if isLeapYear $year ; then
  echo "맞아요! $year 년도는 윤년이었습니다."
else
  echo "아니요, $year 년도는 윤년이 아닙니다."
fi

exit 0
