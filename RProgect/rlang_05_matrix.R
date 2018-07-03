m<-matrix(1:25,5,5,TRUE)
m


m<-matrix(1:25,5,5,FALSE)
m

##append
x<- c(1,2)
cat(x)
x<-append(x,3)
cat(x)

##
n<-1
for(i in 1:8)
{
  n<-n*2
  
}
n

##
x=c()
x[1] =1
cat(x)
for(i in 2:5){
  x[i]=i
  print(x)
}
cat(x)


##왼쪽 삼각형, 지그제그, 다이아몬
mat<-function(select){
  return(switch(
  select,
  '1'=matrix(rbind(c(1,0,0,0,0),c(2,3,0,0,0),c(4,5,6,0,0),c(7,8,9,10,0),c(11,12,13,14,15)),5,5,FALSE),
  '2'=matrix(rbind(c(1,2,3,4,5),c(10,9,8,7,6),c(11,12,13,14,15),c(20,19,18,17,16),c(21,22,23,24,25)),5,5,FALSE),
  '3'=matrix(rbind(c(0,0,1,0,0),c(0,2,3,4,0),c(5,6,7,8,9),c(0,10,11,12,0),c(0,0,13,0,0)),5,5,FALSE)
  ))
}
mat(3)

count<-2
a<-c(1)
for(i in 0:1){
  a<-append(a,count)
  count<-count+1
}
a

