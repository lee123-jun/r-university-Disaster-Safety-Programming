
install.packages("installr")
library(installr)


check.for.updates.R()
install.R()

a <- 1
a = 1
1 ->> a 
a = 10

a <- 3
b = 4
c = 7
d = a+b
print(a)
print(d)

print(1)
# 따옴표, 쌍다옴표: ',"로 문자 처음과 끝 표현
print("hello world")
print('hello world')

typeof(interger_var)
typeof(numeric_var)
typeof(complex_var)
typeof(character_var)
typeof(logical_var)
typeof(another_logical_var)
typeof(NULL_var)
typeof(NA_var)
typeof(negative_inf)
typeof(positive_inf)
typeof(nan)

# 연속적인 값을 나타낼 때 numeric이라 하는구나! 
mode(interger_var)
mode(numeric_var)
mode(complex_var)
mode(character_var)
mode(logical_var)
mode(another_logical_var)
mode(NULL_var)
mode(NA_var)
mode(negative_inf)
mode(positive_inf)
mode(nan)

a=4
b=3
a
b
# 수치만 입력해도 그냥 값이 나오는데 굳이 프린트를 왜 배울까?

# print(), paste() 두개가 많이 사용된다.
paste(3,4,5,6,7)
print(paste(3,4,5,6,7))

paste0(3+4, 4,5,6,7)
print(paste(3+4,4,5,6,7))

paste(3,4,5,6,7, sep = "-")
paste0(3+4,4,5,6,7, sep = "-")

a = c(1,2,3,4,5,6)
a
sum(c(1,2,3,4,5,6,7,8,9,10))

# 순열 / 다양한 형식으로 가능!
seq(from=1, to=5, by=2)
seq(1,5, by=2)
seq(1,5,2)

seq(0,1, length.out=1000) #0부터 1까지 1000개가 되는 자료 생성

rep(c(1,2,3), times=2) # 123 두번 반복
rep(c(1,2,3), each=2) # 11 22 33 두번씩 반복  

x <- 1:100
x
head(x)
head(x, n=94)
tail(x, n=57)
print(x)

# 로또 원리!
size=10
sample(x, size, replace=FALSE, prob = NULL)
sample(10) # 1부터 10까지 10개를 임의로 섞어 추출
sample(45, 6) # 1~45 사이에서 6개를 임의로 추출
sample(10, 3, replace=TRUE) # 동일한 확률 (1/10)로 복원 추출, 1~10 중에 3개 뽑아라!
sample(10, 3, prob = (1:10)/55) # 10개중 3개를 임의로 복원 추출하는데 추출될 확률은 (1:10)/55로 각각 다름!
sample(10, 3, prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))

x = c(2,4,-1,3)
x
which(x>2) #x의 값들 중 2보다 큰 값 출력
names(x) <- c("1번", "2번", "3번", "4번") # x의 값에 이름을 각각 부여
x
which(x>=2)

n=10
min=100
max=200
runif(n, min, max) # 최대와 최소의
rnorm(n, 60, 2) # 주어진 평균과 표준편차 sd를 갖는 젇규분포에서 n개의 난수를 생성
rbinom(n, size, prob) # 주어진 시행 횟수와 성공 가능성 prob를 사용하여 이항 분포에서 n개의 난수를 생성

a=10
b=20
c=30
rm(a) # a라는 변수 삭제
rm(list=c("a", "c")) # a,b 변수 삭제
rm(list=ls()) # 모든 값 삭제
# 생각보다 메모리를 많이 잡아먹는다 즉 한 번 밀어주고 다시 실행한다!

#현재 나의 작업 경로 확인!
getwd()

#나의 작업 경로 설정 1
setwd("c:/Users/User/바탕화면")

#나의 작업 경로 설정 2
setwd("c:\\")

getwd()

#1부터 100까지 5씩 증가하는 값을 생성하시오.
seq(1,100,5)

#1,2,3,4,5의 벡터 값을 만들어 이를 100번 반복해 도출하는 벡터를 만드시오.
rep(c(1:5), times = 100)

#1,2,3,4,5의 벡터 값을 만들어 개별 값이 각각 100번 반복해 도출하는 벡터를 만드시오
rep(c(1:5), each = 100)

#1부터 10까지 5개의 숫자를 무작위로 섞어서 프린트 하시오.
sample(10, 5)

#숫자 범위가 1부터 49까지인 복권에서 6개의 숫자를 뽑으시오.
sample(49, 6)

#1부터 10까지의 숫자 3개를 무작위로 선택하시오.(복원추출)
sample(10, 3, replace=TRUE)

#1부터 10까지의 숫자 3개를 무작위로 뽑으시오.(각 숫자 'i'의 가중치는 'i/55’)
sample(10, 3, prob = (1:10)/55)

#확률 벡터를 사용하여 1부터 10까지의 숫자 3개를 무작위로 뽑으시오.(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05)
sample(10, 3, prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))

#50에서 100 사이에 균일하게 분포된 100명의 학생 점수를 생성하시오.
runif(100, 50, 100)

#IQ의 평균이 100이고 표준편차가 15인 정규분포에서 IQ 점수 200개를 생성하시오.
rnorm(200, 100, 15)

#인구 10명 중 1명에게 영향을 미치는 질병을 rbinom을 사용하여 500명을 대상으로 실시했을 때, 총 걸린 사람의 수는?
rbinom(500, 500, 0.1)
