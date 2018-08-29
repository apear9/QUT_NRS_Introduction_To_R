#### This script is for subsetting data and accessing different subsets of data

meuse[1,] # This gets the first row
meuse[,1] # This gets the first column
meuse[1,1] # This gets the first row of the first column

meuse[c(1,2,3), ]
meuse[1:3, ] # These get the first three rows
meuse[, c(1,2,3)]
meuse[, 1:3] # These get the first three columns

hist(meuse$zinc) # Single column, no transformation

hist(log(meuse$zinc)) # Single column, with transformation

meuse_sub <- subset(
  meuse,
  zinc < 200 & lead < 200
) # Must satisfy both conditions

head(meuse_sub)

meuse_sub <- subset(
  meuse,
  zinc < 200 | lead < 200
) # Can satistfy either condition

head(meuse_sub)




meuse_sub <- subset(
  meuse, # the name of the dataset
  zinc < 200 # the logical condition
)

head(meuse_sub)
