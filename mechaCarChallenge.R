# Deliverable 1

# read in data
mpg <- read.csv(file="Data/MechaCar_mpg.csv")

#  id which vars in the dataset predict the mpg of MechaCar prototypes
# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg))
