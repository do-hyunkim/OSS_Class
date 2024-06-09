#!/bin/bash

# 전화번호부 파일 경로
PHONEBOOK="phonebook.txt"

if [ $# -ne 2 ]; then
    echo "Usage: $0 이름 전화번호"
    exit 1
fi

NAME=$1
PHONE=$2

# 전화번호 유효성 검사 (숫자와 하이픈만 허용)
if ! echo "$PHONE" | grep -q '^[0-9-]\+$'; then
    echo "전화번호는 숫자와 하이픈(-)로 연결해서 저장"
    exit 1
fi

# 지역번호 추출 및 지역 설정
AREA_NUM=$(echo "$PHONE" | cut -d'-' -f1)
case $AREA_NUM in
    02) AREA="서울";;
    031) AREA="경기";;
    032) AREA="인천";;
    051) AREA="부산";;
    052) AREA="울산";;
    *)
        echo "잘못된 지역번호입니다"
        exit 1
        ;;
esac

# 전화번호부 파일이 없으면 생성
if [ ! -f "$PHONEBOOK" ]; then
    touch "$PHONEBOOK"
fi

FOUND=false
while read -r line || [ -n "$line" ]; do
    name=$(echo "$line" | cut -d' ' -f1)
    phone=$(echo "$line" | cut -d' ' -f2)
    area=$(echo "$line" | cut -d' ' -f3)

    if [ "$name" == "$NAME" ]; then
        if [ "$phone" == "$PHONE" ]; then
            echo "이름과 전화번호가 이미 존재합니다."
            exit 0
        else
            sed -i "/^$name /s/.*/$NAME $PHONE $AREA/" "$PHONEBOOK"
            FOUND=true
        fi
    fi

    if [ "$FOUND" == true ]; then
        break
    fi
done < "$PHONEBOOK"

# 새로운 전화번호 추가
if [ "$FOUND" == false ]; then
    echo "$NAME $PHONE $AREA" >> "$PHONEBOOK"
fi

# 전화번호부 정렬
sort -o "$PHONEBOOK" "$PHONEBOOK"
echo "전화번호가 추가되었습니다."

exit 0
