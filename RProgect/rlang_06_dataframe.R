grade<-function(name,kor,eng,math){
  x<-c(kor,eng,math)
  return (list(name =name,
               sum =sum(x),
               mean = mean(x),
               grade = switch(
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

park<-grade('박제가',70,70,70)
kim<-grade('김유신',95,95,95)
hong<-grade('홍길동',100,100,100)
jin<-grade('진흥왕',54,54,54)
che<-grade('최참판',18,18,18)


class(park$name)
class(park$sum)
class(park$mean)
class(park$grade)

##data frame만들기
grade.table <- data.frame(
  이름=c(park$name,kim$name,hong$name,jin$name,che$name),
  합계=c(park$sum,kim$sum,hong$sum,jin$sum,che$sum),
  평균=c(park$mean,kim$mean,hong$mean,jin$mean,che$mean),
  등급=c(park$grade,kim$grade,hong$grade,jin$grade,che$grade),
  stringsAsFactors = FALSE                            
  )
print(grade.table)

##frame에서 이름과 합계만 가져오기
res<-data.frame(grade.table$이름, grade.table$합계)
print(res)





#파이 차트
x <- c(21, 62, 10, 53)
labels <- c(park$name, kim$name, hong$name, jin$name,che$name)
pie(x,labels)

##바 차트
barplot(c(7,12,28,3,41))


##히스토그램
hist(c(9,13,21,8,36,22,12,41,31,33,19),xlab = "Weight",col = "yellow",border = "blue")

#라인 차트
plot(c(7,12,28,3,41),type = "o")

##산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

##주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

