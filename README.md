# MechaCar_Statistical_Analysis

## Overview
### Purpose
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For   each statistical analysis, you’ll write a summary interpretation of the findings.

## Results
### Predicting MPG
I performed multiple linear regression analysis using vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD as the right hand side variables to see if it had any effect on the outcome variable, mpg. My analysis will help to identify which variables, if any, in the dataset predict the mpg of MechaCar prototypes. The null hypothesis, in this case, is simply the slope of the linear model is zero or there is no correlation. The alternative hypothesis is that the slope is non-zero, and there is evidence that the correlation between Y and the X variables are not 0. 

![](analysis/mpgLR.png)

The y-intercept value is not realistic and insignificant as it is impossible to have negative mpg, so it should not be used to interpret the value of Y when the right hand side variables are held constant at 0. The coefficicents of the right hand side variables calculate the rate of change on mpg (Y) with a 1 unit increase in the respective x variable. For example, a one unit increase in vehicle length would result in a 6.27% increase in mpg.

The figures to pay attention to are the p-values of the independent varaibles denoted as "Pr(>|t|)" in the summary table. The p-values represent the probability that each coefficient contributes a random amount of variability to the linear model. Variables with low p-values have a significant impact on mpg and are statistically unlikely to provide random amounts of variance to the linear model. Therefore, vehicle weights and ground clearance are the only variables that are statistically signficant at the 95% threshold. Vehicle length is the most predictive right-hand-side variable in this model according to the p-value. The lack of significant variables is evidence of overfitting, which indicates that the performance of a model performs well with a current dataset, but fails to generalize and predict future data correctly.

Another sigificant figure is the multiple R-squared value. This tells us how much of the variability around mpg can be explained. We know that 71.49% of the variability of mpg can be explained. The closer this number is to 1, the better the model is.

The multiple linear regression model generated a p-value significantly less than the significance level at 95%. This tells us that this model is statistically significant and that we can reject the nulll hypothesis that there is no correlation between mpg and the right-hand-side variables.