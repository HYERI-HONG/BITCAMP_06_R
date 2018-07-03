#계산기 만들기


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

##객체 만들기

calc<-function(num1,num2,op){
  return (c(num1,op,num2,switch(
    op,
    '+'=toString(num1+num2),
    '-'=toString(num1-num2),
    '*'=toString(num1*num2),
    '/'=toString(num1%/%num2),
    '%'=toString(num1%%num2)
  )))
}
res<-calc(10,5,'-')
cat('결과 :',res[1],res[2],res[3],'=',res[4])

