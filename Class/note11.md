06.03

# for loop
- for 명령
- 동일한 작업을 정해진 횟수만큼 반복할 때 사용한다.
- 구조:

```
  for var in var1 var2 var3 
  # a b c(var이 var1 var2 var3를 대변하는것)
  do
    cmd1
    cmd2
    echo $var ...
  done
```
- do ~ done 구간을 '바디'라고 부른다.
- 바디 구간은 var 개수만큼 반복이 되고, 마지막 var을 타고 종료가된다.

Q. file1, file2, file3을 돌면서 파일 출력하기
A.
for file in file1 file2 file3
do
  echo $file
done

for file in file[1-3]
do
  echo $file
done

- 문자 치환 가능함

Q. 현재 디렉토리의 모든 파일에 대해서 루프를 타고자 한다.
A. for var in *

Q. 파일 목록이 있고 filelist.txt에 저장되어 있다. 이 파일에 있는 모든 파일 리스트를 순회하는 코드
A. for file in $(cat filelist.txt)
A. filelist=$( cat "filelist.txt")
    for file in $filelist

## in이 없는 for loop
for file ( in $2 ) # 이게 생략됨
# 들어오는 모든 인수를 순화한다.
do
...

./sample.sh 1 2 3 4 5

### $* vs $@
- 입력되는 모든 인수
- 따옴표가 있고 없을 때 차이점 비교

### $*
- 따옴표로 감싸면 모든 인수를 1개로 취급한다.
- 따옴표로 감싸면 null을 출력한다.

### #@
- 따옴표로 감싸면 입력되는 인수의 따옴표를 인지해서 개수를 취급한다.
- 인수가 null 이면 실행하지 않는다.


Q. 들어오는 인수 개수 프린트
A. echo "전체 인수 개수 : $# "

Q. 들어오는 모든 인수 프린트
A. echo "들어오는 모든 인수 : $*"

Q. 모든 인수 순회하면서 하나씩 프린트
A. 
for var in $*
do
  echo $var
done

for var in $@
do
  echo $var
done


# while
- 조건이 성립할 때 까지 순회하는 반복문에 사용한다.
- 구조 :

```sh
while cmd #참이면 바디를 순회함
do 
  cmd1
  cmd2
  # cmd 변화 상태(무한루프 빠지지 않도록 주의)
done
```

Q. 1-5까지 출력하는 while loop
A.

num=1
while [ $num -le 5 ]
do
  echo $num
  num=$((num+1))
done


# until loop

until cmd # nonzero, false
do
  cmd1
  cmd2
done

- 특정 이벤트가 일어나길 기다릴 때 많이 사용된다.

## break
-원하는 조건에 의해서 루프를 빠져나오는 명령

while cmd #참이면/종료상태 바디를 순회함 1
do
  cmd1
  cmd3
  if ...
    then
    break n # break 3
done

## 결과물 활용하기
for
...
done ##### 
- 파이프라인 연결하기
  .... done | @@@

- 백그라운드 보내기
  .... done &

- 리다이렉션
  .... done > file.txt

## 한줄로 작성하기
- 세미콜론으로 연결 가능
  for i in [1-5] ; do echo $1 ; done
  - do 다음에 세미콜론 넣지 않은 것 주의

  if[ ]; then
  ....
  fi
- 코드가 짧을 때
- 가독성위해서 사용한다.


Q. 로그인된 유저 확인하는 스트립트 작성하기
A. 
 who | 원하는 유저 이름 추출

 - 인수는 1개 들어와야함 ( 종료코드 설정, 프린트)
 - 60초마다 확인하도록 프로그램 짠다.
   sleep 60
 - "$user 로그인함!"






