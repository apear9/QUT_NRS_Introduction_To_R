#### This script is for plotting data

plot(log_zinc ~ dist, data = meuse)

ggplot(
  data = meuse,
  aes(x = dist, y = log_zinc)
) +
  geom_point()

hist(
  meuse$log_zinc, # A single column of data
  xlab = "log(zinc concentration)",
  # xlab for x-axis label
  main = ""
  # main for plot title
)

ggplot(
  data = meuse, # The dataset
  aes(
    x = log_zinc # Name of column to draw in histogram
  )
) + 
  geom_histogram(
    col = "black", # for bar outline
    fill = "grey70" # for bar filling
  ) + # Draws a histogram
  theme_bw() + # Controls background display
  labs(
    x = "log(zinc concentration)",
    # x for x-axis label
    title = ""
    # title for plot title
  )

boxplot(
  meuse$log_zinc, 
  main = "",
  xlab = "",
  ylab = "log(zinc concentration)"
)

boxplot(
  log_zinc ~ soil, 
  data = meuse, # the dataset
  main = "",
  xlab = "Soil type",
  ylab = "log(zinc concentration)"
)

ggplot(
  data = meuse,
  aes(x = 0, y = log_zinc)
) +
  geom_boxplot() +
  theme_bw() +
  labs(
    x = "",
    y = "log(zinc concentration)",
    title = ""
  ) +
  theme(
    axis.ticks.x = element_blank(),
    axis.text.x = element_blank()
  ) # Removes text from x axis

ggplot(
  data = meuse,
  aes(x = as.factor(soil), y = log_zinc)
) +
  geom_boxplot() +
  theme_bw() +
  labs(
    x = "Soil type",
    y = "log(zinc concentration)",
    title = ""
  )

# base plot

meuse$col <- NA # must create separate column with colour names
meuse$col[meuse$soil == 1] <- "red"
meuse$col[meuse$soil == 2] <- "green"
meuse$col[meuse$soil == 3] <- "blue"


plot(
  log_zinc ~ dist, 
  data = meuse,
  col = meuse$col,
  xlab = "Distance from river (km)",
  ylab = "log(zinc concentration)",
  main = ""
)
legend( 
  x = "topright",
  col = c("red", "green", "blue"),
  pch = c(1, 1, 1),
  legend = c("1", "2", "3")
) # Legend must be plotted separately

# ggplot2

ggplot(
  data = meuse,
  aes(
    x = dist,
    y = log_zinc
  )
) + 
  geom_point(
    aes(
      col = as.factor(soil) # Simply map variable to colour
    )
  ) +
  theme_bw() +
  labs(
    x = "Distance from river",
    y = "log(zinc concentration)",
    col = "Soil type" # Label legend
  ) +
  theme(
    legend.position = "bottom" # legend placement
  )