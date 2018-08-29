#### This script is for generating summaries of the data.

mean(meuse$zinc)

sd(meuse$zinc)

meuse$log_zinc <- log(meuse$zinc)

meuse_soil_groups <- group_by(
  meuse, # The dataset 
  soil   # The grouping variable
)

summarise(
  meuse_soil_groups, # The grouped dataset
  Mean_Cd = mean(cadmium),
  Mean_Pb = mean(lead),
  Mean_Cu = mean(copper)
  # Format: name = calculation(column)
)

summarise(
  meuse,
  Mean_Cd = mean(cadmium),
  Mean_Pb = mean(lead),
  Mean_Cu = mean(copper)
)

summarise(
  meuse_soil_groups,
  Mean = mean(lead),
  Median = median(lead),
  StdDev = sd(lead),
  Sum = sum(lead)
)