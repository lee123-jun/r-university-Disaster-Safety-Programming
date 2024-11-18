
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

############################################################################################################
# 2024.9.30(월) 재난안전프로그래밍 강의

list_1 <- list(1, 2, 3)
list_2 <- list(1.6, 2, 'A', "Hello")
list_3 <- list("apple", "banana", "orange", 1, 1.5)

# Vector 벡터 크기와 방향을 갖는 물리량 / 동일한 자료형만을 담을 수 있음
a = list(1, 2, 3, 4)
b = list(4, 5, 6, 7)
a+b # 연산이 오류가 난다. why? 다양한 자료형들이 들어있기 때문에 연산이 안된다.

Vector_1 <- c(1, 2, 3, 2.5) # 정수에 실수형을 넣으면 정수들이 실수로 형변환 된다!
Vector_2 <- c("apple", "banana", "orange")
Vector_3 <- c(TRUE, FALSE, TRUE)

Vector_1
Vector_2
Vector_3

Vector <- c("aa", 2, 3) # 모두 문자열로 변경
Vector
mode(Vector)

List_1 <- c(1.6, 2.3, 3.5)
List_2 <- c(2.6, 5.3, 7.5)
List_1 + List_2

Vector_1 <- c(1.6, 2.3, 3.5)
Vector_2 <- c(2.6, 5.3, 7.5)
Vector_1 + Vector_2

# 리스트는 데이터를 담는 주머니이다.
my_list <- list("apple", 3.14, c(1,2,3), TRUE) 
my_list

# 행렬은 2차원 데이터를 표현할 수 있는 "벡터"이다
# nrow 헹, ncol 열 3*2 행렬로 만들겠다
# 원하는 행렬의 크기와 데이티의 크기가 맞지 않으면 1 2 3 ...
matrix(data = c(1,2,3,4,5,6), nrow = 3, ncol = 2)

m = matrix(c(1,2,3,4), nrow=2) # 하나만 적어줘도 나머지는 알아서 채운다
m

# 행 열에 라벨 붙이는 법
rownames(m) = c("Row1", "Row2")
colnames(m) = c("Col1", "Col2")

rownames <- c

# 배열은 벡터와 동일하지만 2차원, 3차원도 가능하다!
array(data = c(1,2,3,4,5,6), dim = c(2,3)) 

array(data = c(1,2,3,4,5,6), dim = c(2,2,2)) 

# 스칼라. 리스트, 벡터, 행렬, 벡터 -> 5개를 배웠다!!!
# 개념들을 잘 알고있어라 -> 면접 잘 대답하는 것이 정말 중요하다.

a = array(data = c(1,2,3,4,5,6), dim=c(2,2))
b = array(data = c(1,2,3,4,5,6), dim=c(2,2))

cbind(a,b) # 다른 특성을 공유하는 데이터 연결
rbind(a,b) # 같은 특성을 공유하는 데이터 연결

# 차원 별 이름을 부여할 수 있음
my_array <- array(1:12, dim = c(2,3,2))
my_array

row_names <- c("Row1","Row2")
col_names <- c("Col1","Col2", "Col3")
slice_names <- c("Slice1","Slice2")

dimnames(my_array) <- list(row_names, col_names, slice_names)
my_array

# 이름을 붙이고 싶지 않은 경우
dimnames(my_array) <- list(NULL, col_names, slice_names)
my_array
# 이것들 잘 안쓰지만 기본기라 알아둬야 한다

# 숫자들이 갖고 있는 위치 정보 -> 인덱싱이라고 한다!
install.packages("stringr")
library(stringr)

a <- "abc defg"
substr(a, 1, 5) # 1번째: 변수, 2...

# 강원대학교 추출
b <- "저는 강원대학교 학생"
substr(b, 4,8)

a <- list(1,2,3,4,5,)

#a <- c(5,6,3,1,7,8,1)
a[2]

a[4]
# list [], [[]] 차이를 구별할 수 있도록!! 짱중요
a[[2]]
a[[3]]
a[[4]]
a[[6]]

a[2] + a[3]
a[[2]] + a[[3]]
# a[2] = list(2) = c(2) , a[3] = list(3) = c(3)
# a[[2]] 

b <- c(1,2,3,4,5,6,7)
b[-4] # 4만 출력
b[-4] # 4만 제외하고 출력
b[1:5] # 1~5까지 나온다
c(4)

# 오늘 배운 내용 스칼라, 벡터, 배열, 행렬, 리스트, 문자열인덱싱, 벡터인덱싱, 리스트 인덱스

############################################################################################################
# 2024.10.7(월) 재난안전프로그래밍 강의

# 벡터의 인덱싱은 어떤 형태일까 ?
a <- c(1,2,3,4,5,6)
a[1]
a[[1]]

# 배열의 인덱싱은 어떤 형태일까 ?
a = array(data = c(1,2,3,4,5,6), dim = c(2,3))

a[2] # 배열을 1차원 벡터로 취급하여 두 번째 요소를 반환 결과: 2

a[1,2] # 배열에서 [행, 열]을 인덱싱합니다. 즉, 1행 2열의 값 결과: 3

a[1:2] # 1차원 벡터로 배열을 취급하여 첫 번째부터 두 번째 값까지 반환합니다.
#a는 c(1,2,3,4,5,6)이므로 첫 번째와 두 번째 값인 1과 2가 반환

a[1:3]

a[1:2,2]

a[6] # 들어간 벡터의 순서대로 숫자가 나온다

a[2,1:3] # 2행의 1열부터 3열까지의 값을 추출합니다. 즉, 2행의 값들인 2, 4, 6이 반환됩니다.

a[c(1,6)] #배열을 1차원 벡터로 취급하여 첫 번째와 여섯 번째 값을 추출합니다. 
#내부적으로 배열은 c(1,2,3,4,5,6)으로 저장되어 있으므로 첫 번째 값은 1, 여섯 번째 값은 6이 반환

# 인덱싱 비교
my_list <- list("apple", 3.14, c(1,2,3), TRUE)
my_list[[3]][2]
my_list[3] # 해당 원소가 단독으로 변환
my_list[[3]] # 자체 변환x 값을 나타내는 데이터 타입으로 변환

my_list[[3]][2]

my_list[3][2] + my_list[3][3] # 계산 안됨, 문제자체가 성립x



# 3차원 배열 인덱싱
c <- array(1:24, dim = c(3, 4, 2))
c

c[2,3,1] # 설명: 첫 번째 층(1층)에서 2행 3열의 값을 가져옵니다.
c[3, ,2] # 설명: 두 번째 층(2층)에서 3행의 모든 열을 가져옵니다.
c[, 2:3, ] # 설명: 모든 층(1층과 2층)에서 2열과 3열의 모든 행을 가져옵니다.

c[1, 4, 2] # 22 출력

# 문제 
d <- array(c(1:20), dim = c(2,5,2))
d
d[1,3,1]
d[2,3,2]
d[c(5,16)]

# dataframe 벡터들을 담는 주머니, 다양한 자료형이 존재한다! 같은 자료형만 담는 벡터들이 모여 데프를 구성

city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18,21,211,17,8,11,25)

df <- data.frame(A = city, B = pm25) # A,B는 변수명 마음대로 설정해라
df

id<-c(1:5)
gender <- c("M", "F", "F", "M", "M")
major <- c("Eng", "Math", "Com", "Eng", "Busi")
salary <- c(2500,2800,2500,3000,2600)
survey <-data.frame(ID=id, Gender=gender , Major=major, Salary=salary, stringsAsFactors = F)
survey # df생성

survey[1] # ID 가져오기
survey["ID"] # 인덱싱이 아닌 변수명으로 값 가져오기
survey$Major # 벡터값으로 반환
survey$ID[c(3,4)] # 3과 4 뽑기

survey$score = c(200,300,400,500,600) # 데이터프레임 추가
survey$ss = survey$Salary + survey$score
survey

# 마무우리이이 다양한 인덱싱들
# 데이터를 받으면 가장먼저 데이터의 특징(기초통계)을 파악한다
# 가장 먼저 해야할 것 기초통계 / 데이터와 정보의 차이를 알아야 한다.
# 이 세상에서 떠도는 모든 것이 데이터이다
# 수치화 시켜서 데이터 프레임 안에 넣는다면, 떠도는 정보들을 규격화시켜서
# 처음부터 수치화 됐을까요 ? -> 사람들의 규칙에 따라 정리해둔 것
# 전체의 어떤 떠도는 다양한 값들을 가시적, 계산할 수 있도록 흔히 말하는 데이터이다.
# 정보란 데이터를 통해서 어떤한 결과를 냄, 사람들이 잘 볼 수 있도록 이미지, 도표 등으로
# 바꿔서 보여준다. 바꿔주는 것이 정보를 제공한다.
# 롤 게임(데이터) -> 필요한 데이터(GOLD/m, kda, dpm etc...) -> 게임에서 필요한 데이터 
# 이기는 확률을 높이기 위해 필요한 데이터가 위에 것, -> 데이터 프레임으로 만들어 준다
# 5개의 변수가 데이터 프레임으로 규격화를 시켜주는 것이다. -> 뽑힌 결과(수치)
# 데이터프레임을 통해서 결과를 뽑아야한다. -> 혼동 시 면접에서 바로 컷!
# 리스트의 개념: 값들을 담는 주머니이다 (다양한 형태의 값들이 담길 수 있다)
# 배열의 개념: 차원의 개념의 갖는 벡터(같은 값들만)의 집합
# 데이터프레임의 개념: 본질은 리스트이다, 이유는 다양한 값들이 들어갈 수 있기 때문에
# df[[]] 이러는 이유 없이 df$를 통해서 가져올 수 있음 (계산을 할 수 있기 때문에)
# 데이터의 전반적인 구조를 파악하기 위해서 기초통계가 필요함
# 기초통계 -> 통계란 무엇일까
# 통계란 우리의 경험을 수치로 만든 것이라 생각하면 좋다
# 하나의 값으로 전체를 포괄할 수 있는 것이 생겼다.
# 사분위수 / 범위: 데이터 세트의 최대값과 최소값의 차이
# 데이터의 중간 50%를 나타내는 첫번째 사분위수(25번째 백분위수)와 세번째 사분위수(75번째 백분위수)
# 사이의 값 범위
data <- c(10,15,20,25,30,15,20,25,25,10)
range_value <- max(data) - min(data)
Q1 <- quantile(data, 0.25)
Q1
Q3 <- quantile(data, 0.75)
Q3
iqr_value <- Q3 - Q1 
iqr_value
# 데이터를 표현하는 방법 -> 탐색적 데이터 분석(EDA)

# 1번
vec <- c(0,1,2,3,4,5,6,7,8,9,10) # vec 함수 c()

# 2번
vec2 <- c(10,11,12,13,14,15,16,17,18,19,20)
mat1 <- cbind(vec,vec2)
mat1[4,2] <- 100
mat1

# 3번 *
matr <- matrix(vec, vec2)

# 4번 *
vec3 <- c(20,21,22,23,24,25,26,27,28,29,30)
mat2 = array(data = c(vec, vec2, vec3), dim = c(5,2))
mat2

# 5번
name <- c("Kim", "Park", "Lee")
Kor <- c(100, 80, 80)
Eng <- c(60,40,80)
Mat <- c(50,100,80)
Phy <- c(40,30,20)
Che <- c(40,30,20)
Bio <- c(40,20,10)
Geo <- c(40,30,50)

score <- data.frame("이름" = name, "국어" = Kor, "영어" = Eng, "수학" = Mat, 
                    "물리" = Phy, "화학" = Che, "생명과학" = Bio, "지구과학" = Geo) 
score

# 6번 * 이거 한번 확인 요함
score$mean <- (score$국어 + score$수학 + score$영어)/3
score
test <- subset(score, score$mean >= 80, select = c("이름"))
test

# 7번
A <- c("A","B","B","B","B","A","A","A","A","A","B","B")
B <- c(5000,12000,13000,8000,9000,3000,5000,4000,4500,6000,8000,8500)
C <- c(2500,500,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400)

hp_df <- data.frame("병원"=A , "진료금액"=B, "처방전금액"=C)
hp_df

# 8번
hp_df$sum <- (hp_df$진료금액 + hp_df$처방전금액)
hp_df

# 9번
write.csv(hp_df, file="C:/Users/Public/Desktop/test.csv")

# 10번
hp_df <- read.csv(file="C:/Users/Public/Desktop/test.csv")
print(hp_df)

