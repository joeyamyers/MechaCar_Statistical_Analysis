library(tidyverse)
# Deliverable 1

# read in data
mpg <- read.csv(file="Data/MechaCar_mpg.csv")

#  id which vars in the dataset predict the mpg of MechaCar prototypes
# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg))

# Deliverable 2

# read in data
suspensionCoil_df <- read.csv(file="Data/Suspension_Coil.csv")

# create summary df
total_summary <- suspensionCoil_df %>% summarize(Mean=mean(PSI),Median = median(PSI),Variation = var(PSI),SD = sd(PSI), .groups = 'keep')

# create df grouped by lot
lot_summary <- suspensionCoil_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variation = var(PSI),SD = sd(PSI), .groups = 'keep')

# Deliverable 3 - T-Tests on Suspension Coils

# all lots
results <- t.test(suspensionCoil_df$PSI, mu = 1500)
results

# lot 1
lot1 <- subset(suspensionCoil_df,Manufacturing_Lot == "Lot1") 
results1 <- t.test(lot1$PSI, mu = 1500)
results1

# lot 2
lot2 <- subset(suspensionCoil_df,Manufacturing_Lot == "Lot2") 
results2 <- t.test(lot2$PSI, mu = 1500)
results2

# lot 3
lot3 <- subset(suspensionCoil_df,Manufacturing_Lot == "Lot3") 
results3 <- t.test(lot3$PSI, mu = 1500)
results3
