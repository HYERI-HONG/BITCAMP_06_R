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

#Grade 문제 : 객체 만들기

##statement를 합치면 function이 된다.
##4가지가 반드시 있어야 function이 된다.
grade<-function(name,kor,eng,math){
  x<-c(kor,eng,math)
  return (c(name,sum(x),mean(x),switch(
    toString(mean(x)%/%10),
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
  )))
}
res<-grade("홍길동",60,60,60)
print('---------------------------------------------------')
print('|    이름    |    합계    |    평균    |   등급   |')
print('---------------------------------------------------')
cat('|   ',res[1],'   |   ',res[2],'   |   ',res[3],'   |   ',res[4],'   |')
print('---------------------------------------------------')

##R에서 배열의 Index는 1로 시작된다.

