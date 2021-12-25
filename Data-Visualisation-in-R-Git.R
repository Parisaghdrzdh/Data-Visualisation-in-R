Nile
head(Nile)
str(Nile)
length(Nile)
class(Nile)
is.numeric(Nile)
mean(Nile)
print(mean(Nile))
hist(Nile)
hist(Nile, breaks = 20)
Nile [1:4]
Nile[1:6]
sum(Nile)
Nile>1000
sum(Nile>1000)
plot(Nile)



ToothGrowth
head(ToothGrowth)
dim(ToothGrowth)
nrow(ToothGrowth)
ncol(ToothGrowth)
tg<-ToothGrowth
tg
tg$len
mean(tg$len)
tg$len[3]
tg[3,1]
mean(tg[,1])
head(tg$len)
head(tg$len,10)
tg$supp
class(tg$supp)
levels(tg$supp)
length(tg$supp)
tg$supp=='OJ'
tgoj <- tg[tg$supp == 'OJ' ,]
tgoj
mean(tgoj$len)
tgvc<-tg[tg$supp =='VC', ]
tgvc
mean(tgvc$len)
z<-tapply(tg$len, tg$supp, mean)
z
z[1]
z[2]
z[[1]]
z[[2]]

PlantGrowth
head(PlantGrowth)
str(PlantGrowth)
tapply(PlantGrowth$weight, PlantGrowth$group, length)
tapply(PlantGrowth$weight, PlantGrowth$group, median)

mtcars
head(mtcars)
summary(mtcars)
str(mtcars)
?mtcars
head(mtcars[,1])
row.names(mtcars)
rownames(mtcars)
row.names(mtcars)[7]
rownames(mtcars)[7]
row.names(mtcars) [7]<-'Duster'
rownames(mtcars)[7]
mtcars$cyl
mt4<-mtcars$mpg[mtcars$cyl ==4]
mt4
mtcars$cyl ==4
mtcars$mpg
mean(mtcars$mpg)
median(mtcars$mpg)
min(mtcars$mpg)
max(mtcars$mpg)
mtl<-split(mtcars$mpg,mtcars$cyl)
mtl
class(mtl)
mtl$'4'
mtl$`4`
mtl[1]
mtl["4"]
mtl['4']
mtl[[1]]
mtl[["4"]]
names(mtl)
names(mtl)<- c('four','six','eight')
mtl
mtl[[2]][3]
mtl$six[3]
plot(mtcars$wt, mtcars$mpg)

pima <- read.csv('http://heather.cs.ucdavis.edu/FasteR/data/Pima.csv', header=TRUE)
pima
str(pima)
head(pima)
table(pima$glucose)
pima$glucose[pima$glucose>0]
length(pima$glucose[pima$glucose>0])
mean(pima$glucose[pima$glucose>0])
mean(pima$glucose)
pg<-pima$glucose
pg
pg1<-pg[pg>0]
pg1
length(pg1)
mean(pg)
mean(pg1)

library(ggplot2)
ggplot(pima,aes(x=glucose, fill=age))+geom_bar()
dev.off()



#High resolution plot

png("plot_hi_res.png", width=1000 , height = 1000)
ggplot(pima,aes(x=glucose, fill=age))+geom_bar()
dev.off()

#Add a plot title
g<-ggplot(mtcars,aes(x=cyl, fill=mpg))+geom_bar()+ labs(title = "Plot")
g+theme_gray(base_size = 20)
g

library(RColorBrewer)
display.brewer.all()
library(ggplot2)
g<-ggplot(PlantGrowth,aes(x=weight, fill=group))+geom_bar()+labs(title = "Plant Growth Plot")
g+scale_fill_brewer(palette("set1"))
g+scale_fill_manual(values = c("green", "red", "snow3"))
colors()
g+scale_fill_manual(values = sample(colors()))
display.brewer.all(colorblindFriendly = TRUE)
#Black and white background
g+theme_bw()
#Gray
g+theme_gray(base_size = 15)
#Numbers on axes
g+theme(axis.text=element_text(size =20))
#titles on axes
g+theme(axis.title=element_text(size =20))
#legend title and position
g+theme(legend.title =element_text(size =20),legend.position = "top")
#font change
g+theme(legend.text=element_text(size =20)
#change background color
g+theme(panel.background = element_rect(fill="pink"))
#change grid lines
g+theme(panel.grid.major = element_line(color="pink"),panel.grid.minor = element_line(color = "red"))
g+theme(panel.grid.major.y = element_line(color="black"),panel.grid.minor = element_line(color = "red"))
#remove all the grid lines
g+theme(panel.grid.major=element_line(NA),panel.grid.minor=element_line(NA)) 
g+theme(axis.line  =element_line(0.9))
g+scale_y_continuous(expand = c(0,0))