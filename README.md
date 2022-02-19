# MechaCar_Statistical_Analysis
## Study Design: MechaCar vs Competition
### Overview
MechaCar get the production troubles that are blocking the manufacturing team’s progress. We will analyze the production data to help the manufacturing team solving the problem. We plan to work on the statistical study as below: 
- MechaCar data are collected from each car to create multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. To understand each car of performance which represents on MPG, we plan to use linear regression to predict their MPG (miles per gallon)
- Calculating statistics on suspension coil’s PSI (per square inch) for each manufacturing lots
- Calculating T-test to determine if PSI for each manufacturing lot is statistically different with mean population1500. 
>
### Linear Regression to Predict MPG
![Linear Regression](https://github.com/WeiTing83/MechaCar_Statistical_Analysis/blob/version1/Resources/linear.png)
>
Q1. Which variables/coefficients provide a non-random amount of variance to the mpg values in the dataset?
>
  vehicle_length and ground_clearance have higher t-value and smaller p-value. These two coefficients have statistically significant impact on predicting mpg.
  >
Q2. Is the slope of the linear model considered to be zero? 
>
  Their t-value are higher than common value 0.05, so they have statistically impact on mpg. Their slope of linear model won’t be zero.
>
Q3. Does this linear model predict mpg of MechaCar prototypes effectively? 
>
 Vehicle_length and ground_clearance have smaller p-values, so they have a significant relationship with predicting mpg. 
>
### Create Visualizations for the Trip Analysis
![Variance](https://github.com/WeiTing83/MechaCar_Statistical_Analysis/blob/version1/Resources/Variance.png)
>
Q1. The design specifications for the MechaCar suspension coils indicate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?
>
 The summary variance at Lot1 and Lot2 are lower than 100, so they fit specification. However, the summary variance at Lot3 is 170, and SD is 17. Lot3 have some vehicles are   out of specification. 
>
### T-Test on Suspension
- Assuming this significance level is 0.05
#### < Lot1: t = 0, p-value = 1 > 0.05 >
- Null hypothesis: mean at Lot1 is statistically similar with mean1500 
>
![t_lot1](https://github.com/WeiTing83/MechaCar_Statistical_Analysis/blob/version1/Resources/t_lot1.png)
>
#### < Lot2: t = 0.51745>0.05, p-value = 0.6072> 0.05 >
- Alternative hypothesis: mean at Lot2 is statistically a little different with mean1500 
>
![t_lot2](https://github.com/WeiTing83/MechaCar_Statistical_Analysis/blob/version1/Resources/t_lot2.png)
>
#### < Lot3: t = -2.0916>-0.05, p-value = 0.04168< 0.05 >
- Alternative hypothesis: mean at Lot3 is statistically different with mean1500, and this set of data are statistical significance. They probably have more outlier or something happened in this lot.
>
![t_lot3](https://github.com/WeiTing83/MechaCar_Statistical_Analysis/blob/version1/Resources/t_lot3.png)
>
### Summary
Base on the data and analysis, we noticed: 
-	Vehicle_length and ground_clearance coefficients have statistically impact on predicting mpg. 
-	Mean at Lot1 is close to 1500 so the data is Null hypothesis. It is a small tendency to hypothesis at lot 2. Mean at Lot 3 is statistically different with mean1500. The data, at lot 3, is statistical significance and some vehicles are out of specification in this lot. 
-	We also can add the metrics, such as horse power, engine brand and cost to evaluate their relationship.

