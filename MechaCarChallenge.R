
library(dplyr)
MechaCar <-read.csv("D:/DS/homework/15-Statistics_R/Resources/MechaCar_mpg.csv")
head(MechaCar)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar) #create linear model
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar)) #summarize linear model

#-------------------------Deliverable2-----------------------------
#library(dplyr)
Suspension <-read.csv("D:/DS/homework/15-Statistics_R/Resources/Suspension_Coil.csv")
head(Suspension)

total_summary<-summarise(Suspension,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary<- Suspension %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#-----------------------Deliverable3--------------------------
t.test(Suspension$PSI,mu=1500)

df_lot1<-Suspension %>% filter(Manufacturing_Lot=="Lot1")
t.test(df_lot1$PSI,mu=1500)

df_lot2<-Suspension %>% filter(Manufacturing_Lot=="Lot2")
t.test(df_lot2$PSI,mu=1500)

df_lot3<-Suspension %>% filter(Manufacturing_Lot=="Lot3")
t.test(df_lot3$PSI,mu=1500)




