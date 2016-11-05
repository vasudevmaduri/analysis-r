library(ggplot2) # Data visualization
library(readr) # CSV file I/O

#Input file is imported into R-Studio.

data <- presidential_polls

#maximum polling of the candidates.

clinton_max<-max(presidential_polls$adjpoll_clinton)
trump_max<-(presidential_polls$adjpoll_trump)

#maximum poll of both candidates.

max_poll<-max(clinton_max,trump_max)
max_poll

#visualisation of adjpoll of clinton.
pollratio_clinton<-presidential_polls$adjpoll_clinton
hist(pollratio_clinton)

#visualisation of adjpoll of trump.
pollratio_trump<-presidential_polls$adjpoll_trump
hist(pollratio_trump)

#Leading candidate on basis of all pollsters.
avg_clinton<-mean(presidential_polls$adjpoll_clinton)
avg_trump<-mean(presidential_polls$adjpoll_trump)
max(avg_clinton,avg_trump)

#plotting based on poll start and end date. 
barplot(table(data$startdate)) 
barplot(table(data$enddate))

summary(data) 