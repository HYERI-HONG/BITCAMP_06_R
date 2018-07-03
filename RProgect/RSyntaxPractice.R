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




