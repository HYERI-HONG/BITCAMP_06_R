help("solve")
?solve

#숫자
a<-3

#string
a <- "3"
a

#연산
b<-4
b
c<- a+b

a<-3
c<-a+b
c

#java
#int[] arr = new arr[];
#arr[0] = 1;
#arr[1] = 2;
#arr[2] = 3;
#R
a<-c(1,2,3)
a

#함수c : combine의 약자,vector만들때 사용, 데이터 타입은 동일해야함
# 데이터 타입을 다르게 쓴 경우 가장 큰 타입으로 자동 변환되어 배열을 생성한다.
#함수 sum : 합계 
#함수 mean : 
?mean
x<-c(1,2,3,4,5,6,7,8,9,10)
sum(x)
sum((x-mean(x))^2)/(length(x)-1)

#function seq :
#function length : get(no param), set(param)
#when assgin the object, use'->',assign just numeric value, use '='
?seq

x<-sum(seq(length=100,from=1, by=1))
x

#함수 smaple : random 값 생성 
#sample(시작수:끝수,몇개를 뽑을건지,replace=true는 뽑은 것을 다시 넣고 뽑는것)
#가위바위보 게임 만들기
#가위 : 1, 바위 : 2, 보자기 :3
?sample

my <- 1
com<- sample(1:3,1,replace = TRUE)
com
if((com-my)==0){print("무승부")}else if((com-my)==1||(com-my)==-2){print("패배")}else print("승리")


#switch문을 이용해서 가위바위보 게임 구현하기
my <- 1
cat('사용자 : ', my)
com<- sample(1:3,1,replace = TRUE)
cat('컴퓨터 : ', com)
res<-toString(com - my)
cat('결과 : ', res)
r<-switch(
  res,
  '0' ="무승부",
  '1' ="패배",
  '-1'="승리",
  '2' ="승리",
  '-2'="패배"
    )
print(r)

#업그레이드
my <- 2
print(switch(
  toString(sample(1:3,1,replace = TRUE) - my),
  '0' ="무승부",
  '1' ="패배",
  '-1'="승리",
  '2' ="승리",
  '-2'="패배"
))

#switch문 사용해서 BMI계산하기 
weg<-60
hei<-185
bmi<-weg/(hei*hei/10000)
if(bmi<18.5)print("저체중")else 
  if(bmi>=18.5&&bmi<23)print("정상")else 
    if(bmi>=23&&bmi<25)print("비만 전단계")else
      if(bmi>=25&&bmi<30)print("1단계 비만")else 
        if(bmi>=30&&bmi<35)print("2단계 비만")else print("3단계 비만")


#vector만드는 여러가지 방법
print(
  c(1:10)
)
print(
  seq(from=1,to=10,by=2)
)
print(
  seq(from=1,length=10,by=2)
)
print(
  seq(1,10,2)
)
print(
  rep(1:5)
)
print(
  rep(1:5,each=2)
)
print(
  rep(1:5,times=2)
)
print(
  rep(1:5, each=2,times=3)
)
print(
  rep(1:5, times=2,each=3)
)
print(
  rep(1:5,times=3,each=2,len=5)
)
print(
  rep(1:5,each=3,times=2,len=5)
)

#기본타입 : character, wide character, integer,
#floating point, double floating point, Boolean etc
#R-objects : vector,List, Matric, Array, Factor, Data Frame
#vector의 6개 타입
#Logical(T,F), Numeric(실수), Integer(정수),
#Complex(허수), Character(문자열), Raw(주소값)

#계산기 만들
num1<-10
num2<-5
op<-'+'
cat(num1,op,num2,'=',switch(
  op,
  '+'=toString(num1+num2),
  '-'=toString(num1-num2),
  '*'=toString(num1*num2),
  '/'=toString(num1%/%num2),
  '%'=toString(num1%%num2)
))


#1+2+3+4+5=15
for(i in 1:5){
  if(i<5)
    cat(i,'+ ')
  else
    cat(i,'=',sum(1:5))
}

#1-2+3-4+5-6+7- ....100=-50
for(i in 1:100){
  if(i==100)
    cat(i,'=',sum(seq(from=1,to=100,by=2))-sum(seq(from=0,to=100,by=2)))
  else if(i%%2==1)
    cat(i,'- ')
  else 
    cat(i,'+ ')
}

#다른 버전
for(i in 1:100){
  if(i==100)
    cat(i,'=',sum(seq(from=1,to=100,by=2))-sum(seq(from=0,to=100,by=2)))
  else if(i%%2==1)
    cat(i,'- ')
  else 
    cat(i,'+ ')
}

#Grade 문제
name<-'홍길동'
kor<-50
eng<-75
math<-60
res<-c(kor,eng,math)
cat('이름 :',name,'합계 :',sum(res),' 평균 :',mean(res),' 등급 :',switch(
  toString(mean(res)%/%10),
  '10' = 'A',
  '9' = 'A',
  '8' = 'B',
  '7' = 'C',
  '6' = 'D',
  '5' = 'E',
  '4' = 'F',
  '3' = 'F',
  '2' = 'F',
  '1' = 'F'
))




