#가위바위보 게임 만들기
#가위 : 1, 바위 : 2, 보자기 :3


#함수 smaple : random 값 생성 
#sample(시작수:끝수,몇개를 뽑을건지,replace=true는 뽑은 것을 다시 넣고 뽑는것)
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

##객체 만들기

rps<-function(my){
  return (switch(
    toString(sample(1:3,1,replace = TRUE) - my),
    '0' ="무승부",
    '1' ="패배",
    '-1'="승리",
    '2' ="승리",
    '-2'="패배"
    ))
}
rps(1)
