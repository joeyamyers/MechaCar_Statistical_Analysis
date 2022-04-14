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
### Linear Regression
I performed multiple linear regression analysis using vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD as the right hand side variables to see if it had any effect on the outcome variable, mpg. My analysis will help to identify which variables, if any, in the dataset predict the mpg of MechaCar prototypes. 

The y-intercept value is not realistic and insignificant as it is impossible to have negative mpg, so it should not be used to interpret the value of Y when the right hand side variables are held constant at 0. The coefficicents of the right hand side variables calculate the rate of change on mpg (Y) with a 1 unit increase in the respective x variable.


