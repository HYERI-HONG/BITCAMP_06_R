

#switch문 사용해서 BMI계산하기 
weg<-60
hei<-185
bmi<-weg/(hei*hei/10000)

if(bmi<18.5)print("저체중")else 
  if(bmi>=18.5&&bmi<23)print("정상")else 
    if(bmi>=23&&bmi<25)print("비만 전단계")else
      if(bmi>=25&&bmi<30)print("1단계 비만")else 
        if(bmi>=30&&bmi<35)print("2단계 비만")else print("3단계 비만")


#객체 만들기
bmi<-function(wei, hei){
  x<-wei/(hei*hei/10000)
  if(x<18.5){
    y<-"저체중"
  }
  else if(x>=18.5&&x<23){
    y<-"정상"
  }
  else if(x>=23&&x<25){
    y<-"비만 전단계"
  }
  else if(x>=25&&x<30){
    y<-"1단계 비만"
  }
  else if(x>=30&&x<35){
    y<-"2단계 비만"
  }
  else y<-"3단계 비만"
  return(y)
}
bmi(187,65)

