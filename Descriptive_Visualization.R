#Visulization 
ages=c(10,20,40,54,64,50,30,55,22,40)
plot(ages) #plot() function show the graph using vector value

salary=c(2000,3000,4000,5000,1000,1500,4100,3000,1200,500)
plot(salary)

plot(ages,salary)
#its show the graph of ages and salary 
#first parameter is always on x axis and 2nd is on y axis

#airquality is built in data set
airquality=datasets::airquality #its assign value of dataset airquality to airquality variable
names(airquality) #its show all col names of airquality data set

# To see entire dataset click on airquality data set name from workspace 
#or perform function View(airquality)
View(airquality)

############### Visualization ############
airquality

plot(airquality$Wind) #its show the wind col plot
plot(airquality$Temp,airquality$Wind,type="p")
#here p edenote point
plot(airquality)

plot(airquality$Temp,airquality$Wind,type="l")
#here l denote lines

plot(airquality$Temp,airquality$Wind,type="b")
#here  denote both line and point

plot(airquality$Wind,
     xlab = "Ozone Concemtration",
     ylab = "No of Instances",
     main = "Ozone level in my city",
     col="red",
     type="l")
# xlab use for x axis label
# ylab use for y axis label
# main use for main heading 
# col use for color 
# type use for which type of graph u want means points lines 

plot(airquality,col="red") # plot of entire dataset - all columns

plot(airquality$Ozone,airquality$Solar.R) # x axis - Ozone, Y- solar.r

#Horizontal bar plot
barplot(airquality$Ozone,
        xlab="ozone concetration",
        ylab = "no of instance",
        main = "ozone level in my city",
        horiz = TRUE,
        axes = F)

#Histogram
airquality # its inbuilt data set
hist(airquality$Temp,
     main="solar radiation values in air ",
     xlab="solar rad",
     col="blue",
     border="red")
#single box plot

boxplot(airquality$Wind,
        main="Boxplot",
        col="blue",
        border = "red",
        horizontal = T)
boxplot.stats(airquality$Wind)$out #outlier value show

#multiple box plots
boxplot(airquality[,1:4],
       main="multiple box plots",
       horizontal = TRUE,
       col="pink")

#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)

help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o") # use when u want multiple graph in one sheet

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Wind, type= "l")
plot(airquality$Ozone, type= "l")

barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

par(mfrow=c(1,1),mar=c(2,5,2,1),las=0,bty="o")
#for cancel par function use 1,1 in mfrow function

####################################################

#concidering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm = T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot

var(airquality$Wind) #calculate variance
sd(airquality$Ozone,na.rm = T) # standard deviation

skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T)

#Density Plot
plot(density(airquality$Wind))

iris_data=datasets::iris
View(iris_data)

names(iris_data)
iris_data