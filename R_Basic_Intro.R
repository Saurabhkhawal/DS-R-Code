"hello srk"
7
name1="saurabh"
5*5
name2="khawal"
paste(name1,name2) #for join string 

var1=var2=var3="yellow"

#its assign same value for multiple variable at a time 
# in R variables never start from number and and any special symbol
#but in R variable contain underscore(_) and dot(.)symbol in variable declaration but not at the start
myvar="saurabh"
myvar #its print variable value that it contain 
my_var="sakhi"
my_var
this.year=2023
this.year

#numeric data type 
x=10
class(x)#class() function display the data type of variable 
y=10.5
class(y)

#integer data type
z=10L #here L is show its integer value and L is always put at the lat
class(z)

#logical / boolean data type
x=TRUE #or T , FALSE or F
class(x)
z=F
class(z)

#some logical expression 
3>5 #its display false because 3 is not greater than 5
5>3 #its display true because 5 is greater than 3
5==5 #its display true because 5 is equal to 5
1!=5 ##its display true because 1 s not equal to 5

#arithmatic operator
x=10
y=3

x+y
x-y
x*y
x/y
x^2 
x%%y #modules 
#IN R modules sign puts 2 times for calculate reminder
x%/%y 
# %/% sign use for display integer division . and normal / division sign use for floating point division

#in R some constant values that already provide by R we does not have to declare constant 

??Constants
#??constants is use for open help 

LETTERS # its print all capital A to Z letters 
letters # its print all small a to z letters 
pi # its print the pi value

# built in function that provide by R 

max(25,10,20) #this function display max number from given numbers 
min(25,10,20) #this function display min number from given numbers
sqrt(25) #this function calculate square root
abs(-4.5) #this function calculate abstract value .its means its sign of given number

#Data structures : 1)vectors 2)DataFrames
# 1) vectors
   #Homogeneous vectors (Simillar type of data store )
# vectors of strings 
# c stands for combine orconcatination 

fruits=c("Banana","Apple","Orage","Mango") 
#its declaration of vector and assign value to vector 
class(fruits)

#vector of numerical
n=c(1,2,3,4)
class(n)

#above both vectors are contains similar types of value 
#1st vector contain all character value and 2nd vector contain all numeric value
#that's why above both are homogeneous vectors

#hetrogeneous vector
#its contains all types of data in single vector

mix=c(81.5,2,TRUE,"Mango",5L,F)
class(mix) #its show character

#its show class according to priority of data types 
#1)character 2)numeric 3)integer 4)logical

mix=c(81.5,2,TRUE,5L,F)
class(mix) # its show numeric 

mix=c(TRUE,5L,F)
class(mix) #its show integer

mix=c(TRUE,F)
class(mix) #its show logical 

x=c(2,5,8,20)
y=c(1,9,9,9)

#indexing always start from 1 in R language 

x+y # its do addition of both vectors and display it 
x*y # its do multiply of both vectors and display it
(x+y)*1.5

#sequence
#sequence use for print sequence of given data

1:10 #its print the sequence from 1 to 10 numbers
seq(2,20,2) #ts print numbers from 2 to 20 increment every number by 2# here 1st parameter (2) is starting value then 2nd parameter (20) is ending value
# and 3rd parameter is increment value

seq(2,20,by=2) # similar to above example just use "by" keyword at the last parameter

seq(1,10)# its similar to 1:10
seq(20,1,-2) #its decrease value by 2 from 20 

n1=1.5:6.3 #its increase value by default by 1
n1

#Repetition
#rep() function use for repetition ,its repeat the same value for given time

rep(10,7) #here 1st value is that u want to repeat and 2nd value is how many times that number u want to repeat 
#above ex print 10 seven times

rep("mango",5) # its repeat "mango" word 5 times 

#Random sample 
#sample() function is use to print random numbers from given vector

sample(1:50,8)
#its print 8 random numbers from 1 t 50

sample(1:10,200)
#its gives error because 1 to 10 not 200 numbers are presents 

#that's why we have to use replace keyword and declare  it b true 
#then it will be print random numbers repetedly from given range 

sample(1:10,200,replace=TRUE)
#its print 200 numbers repeat from 1 to 10 

sample(c("hp","dell","apple"),2)
#its print random 2 values from vector 

sample(c("hp","dell","apple"),7,replace=T)
#its print randomly 7 values from vector repetedly

##########################################################################

#indexing /accessing vector elements
x=c(2,5,8,40)
x[4] # its accessing value of 4th number 
x[c(1)] # its similar to above example 
x[-1] #its print all elements excepts 1st element
x[-2] # its print all elements excepts 2nd index number 
x[2]=3 #its update value of index number 2
x
x[c(-1,-4)]# its print all the element from vector except index number 1 and 4

y=c(1,9,9,9)
y
y<9 #its check all vector elements are less than 9 or not and displayed true false value  
y[y<9]=7
y
#above example displayed the vector with replacing value with 7 that is less than 9

marks=c(60,70,40,65,88,55,70)
marks>50 # its print true false value according to condition matching 

marks[marks>50] # its print the all elements of vector those are greater than 50


names=c("Dhoni","Virat","Jadeja","Raina")
names
"Dhoni"%in%names 
#"%in% symbol check the element are present in vector or not 

#slicing 
marks [3:7] #its print the element from vector index num 3 to index num 7

price=c(2999,499,29,2800,192,144,121,169,4745,1000)
price[2:7] #its print element from index 2 to index 7 from vector price

#Select element from a vector with condition 

price[price>1000] #its print all the prices that are greater than 1000 from vector price

sort(price) #its sort all the elements of vector price in ascending order

sort(price,decreasing = T) # its sort all the elements of vector price in descending order

#for sorting elements in descending order of any vector we use decreasing() function as a parameter

length(price) #its calculate the length of vector 

#paste () function 
#its use to concatenate string 
paste(1:12) # its print the number from 1 to 10

nth=paste(1:12,c("st","nd","rd",rep("th",9)))
nth
#its concatenate the 2 parameters with each other 
#1st c parameter is concatenate to frist three elements 1,2,3
# and 2nd parameter is repetedly assign to next 9 elements ex "th" is concatenate with 4 to 12 

month.name #its print all months with the full name
month.abb  #its print all months shortcut name

paste(month.abb,"is the",nth,"month of the year.")

#Basics functions o vectors 
price=c(2999,499,29,2800,192,144,121,169,4745,1000)
length(price) #for calculate the  length of vector , means how many elements in that 
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)
####################################################################################################################


#Data Frames
#slicing Data Frames

a=c(42,45,12,91,12)
b=c("p","w","d","k","m")

#data frame nothing but the store data or arrange data in table 
#in above example a and b is the column and their values are rows 
data.frame(a,b)
df=data.frame(a,b)

View(df) #its show data frame table

df1=data.frame(
  training=c("strength","stamina","other"),
  pulse=c(100,150,120),
  duration=c(60,30,45)
)
df1
df1[,1] #print all rows from 1st column
df1[2,] #print all column of 2nd row

#in this first parameter represent the row and
#2nd parameter represent column 

df1[,] #its represent all rows and column vaue

df1$training #its display particular column value
df1$pulse

df2=data.frame(heigth=c(150,160),weight=c(65,72))
View(df2)

food=data.frame(name=c("pavBhaji","paneer","kajukatali","chiken","gulabjamun","mutton"),
                type=c("veg","veg","veg","nonveg","veg","nonveg"),
                taste=c("spicy","spicy","sweet","spicy","swet","spicy"),
                price=c(120,235,420,340,90,315))
food
View(food) #its show the table format in another page

#print rows with food type veg
food[food$type=="veg",]

#food names and prices all nonveg items
food[food$type=="nonveg",c("name","price")]
#or
food[food$type=="nonveg",c(1,4)]

#above example print the nonveg dish name and price in console side

#fetch all spicy food price less than 300
food[food$taste=="spicy" & food$price<300,]

#above example print the all spicy food those who have a price is less than 300

food[food$taste=="spicy" | food$price<300,]
#its fetch those data math the condition 

#Orange ,mtcars are built in data set 
Orange
mtcars

#above both are built in data set 

dim(mtcars) # dim() function show how ,many rows and col are in data set
nrow(mtcars) # nrow() function show how many rows in data set
ncol(mtcars) # ncol() function show how namy col in data set
str(mtcars) #structure col name ,data type and values
summary(mtcars) #its show summary of data set (all statistics min max median)

mtcars$cyl #its show cyl col values 
View(mtcars)
table(mtcars$cyl) #there are 11 cars having 4 cylinder ,7 cars having 6 cylinder and 8 cars having 14 cylinder
mtcars$gear #its show the gear col values from mtcars data set

#USArrests -is another built in data set
USArrests  #its show the USArrests data set
View(USArrests) ##its show the USArrests data set in table format

head(USArrests) #head() function by default show first 6 records
tail(USArrests) #tail() function by default show last 6 records
head(USArrests,8) #here using 2nd parameter we can show any no of records

data() #using this function we can check available built in data set 