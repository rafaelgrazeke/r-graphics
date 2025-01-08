# Creating data frame
data <- data.frame(
  stratum = c("A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", 
              "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", 
              "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", 
              "C", "C", "C", "C", "C", "C", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D", "D"),
  sample = 1:100,
  d = c(15.1, 19.4, 15.1, 15.3, 8.1, 20.3, 13.6, 16.4, 11.4, 19.4, 13.4, 17.1, 14.6, 12.5, 14.1, 17.4, 16.3, 16.4, 14.5, 15.4, 17, 15.5, 17.3, 12.5, 9.2, 
        16.3, 8.7, 13.4, 15.2, 15.5, 17.3, 10.8, 17, 8.2, 9.5, 18, 17, 10.9, 11.9, 12.2, 16.6, 16.4, 14.6, 14.4, 16.8, 15.6, 14.6, 13.4, 17.4, 19.8, 
        16.4, 14.4, 14.1, 14.4, 14.5, 18.2, 12.6, 13.4, 14.4, 15.5, 9.6, 12.4, 10.2, 8.3, 10.4, 11.3, 8.6, 10.3, 6.1, 13.6, 9.6, 12.8, 16.3, 16.6, 
        14.6, 14.6, 7.6, 7.3, 18.8, 10.4, 20.3, 7.1, 18.1, 18.1, 11.3, 11.4, 9.1, 13.2, 9.1, 15.2, 15.2, 6.3, 11.3, 11.3, 12.1, 12.4, 13.1, 13.2, 12.1, 7.1),
  h = c(12.5, 13.93, 12.83, 13.9, 10.2, 15.05, 11.95, 13.86, 12, 14.26, 13.3, 13.25, 12.95, 12.73, 12.05, 14.78, 13.65, 15.72, 12.6, 14.2, 13.85, 14.8, 16.13, 13.34, 11.1, 
        13.95, 10.75, 12.15, 13.27, 13.25, 14.63, 12.32, 12.35, 9.55, 10.85, 14.35, 12.36, 10.76, 14.05, 12.72, 14.96, 14.2, 14.36, 14.47, 13.6, 12.56, 13.1, 13.55, 13.07, 16.05, 
        13.64, 13.24, 12.36, 13.5, 12.91, 14.13, 12.45, 12.5, 13.15, 11.8, 10, 10.8, 10.5, 10.05, 11, 11.1, 9.86, 10.5, 8.4, 12.2, 10.26, 12.7, 12.16, 12.78, 12.5, 13, 10.35, 
        8.9, 13.1, 12.4, 15.05, 10.5, 15.87, 16.25, 12.27, 13.44, 11.33, 12.83, 11.08, 13.7, 14.22, 9.35, 11.68, 12.45, 12, 14.3, 13.28, 11.62, 11.8, 11.1)
  )

library(ggplot2)

# 1. Basic scatter plot
ggplot(data, aes(x = d, y = h)) + geom_point()

# 2. Scatter plot with color by stratum
ggplot(data, aes(x = d, y = h, color = stratum)) + geom_point()

# 3. Scatter plot with point size proportional to sample
ggplot(data, aes(x = d, y = h, size = sample)) + geom_point()

# 4. Scatter plot with facets by stratum
ggplot(data, aes(x = d, y = h)) + geom_point() + facet_wrap(~ stratum)

# 5. Scatter plot with trend line
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm")

# 6. Scatter plot with trend line by stratum
ggplot(data, aes(x = d, y = h, color = stratum)) + geom_point() + geom_smooth(method = "lm")

# 7. Histogram of d
ggplot(data, aes(x = d)) + geom_histogram(binwidth = 1)

# 8. Histogram of d with color by stratum
ggplot(data, aes(x = d, fill = stratum)) + geom_histogram(binwidth = 1)

# 9. Histogram of d with facets by stratum
ggplot(data, aes(x = d)) + geom_histogram(binwidth = 1) + facet_wrap(~ stratum)

# 10. Density plot of d
ggplot(data, aes(x = d)) + geom_density()

# 11. Density plot of d with color by stratum
ggplot(data, aes(x = d, fill = stratum)) + geom_density(alpha = 0.5)

# 12. Boxplot of d by stratum
ggplot(data, aes(x = stratum, y = d)) + geom_boxplot()

# 13. Boxplot of d by stratum with colors
ggplot(data, aes(x = stratum, y = d, fill = stratum)) + geom_boxplot()

# 14. Violin plot of d by stratum
ggplot(data, aes(x = stratum, y = d)) + geom_violin()

# 15. Violin plot of d by stratum with colors
ggplot(data, aes(x = stratum, y = d, fill = stratum)) + geom_violin()

# 16. Bar plot of count by stratum
ggplot(data, aes(x = stratum)) + geom_bar()

# 17. Bar plot of mean d by stratum
ggplot(data, aes(x = stratum, y = d)) + stat_summary(fun = mean, geom = "bar")

# 18. Bar plot of mean d by stratum with colors
ggplot(data, aes(x = stratum, y = d, fill = stratum)) + stat_summary(fun = mean, geom = "bar")

# 19. Line plot of mean d by stratum
ggplot(data, aes(x = stratum, y = d, group = 1)) + stat_summary(fun = mean, geom = "line")

# 20. Line plot of mean d by stratum with points
ggplot(data, aes(x = stratum, y = d, group = 1)) + stat_summary(fun = mean, geom = "line") + stat_summary(fun = mean, geom = "point")

# 21. Scatter plot with text (sample as label)
ggplot(data, aes(x = d, y = h, label = sample)) + geom_text()

# 22. Scatter plot with text and color by stratum
ggplot(data, aes(x = d, y = h, label = sample, color = stratum)) + geom_text()

# 23. Scatter plot with smooth and facets
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm") + facet_wrap(~ stratum)

# 24. 3D scatter plot (using plotly)
library(plotly)
plot_ly(data, x = ~d, y = ~h, z = ~sample, color = ~stratum) %>% add_markers()

# 25. Scatter plot with marginal histograms
library(ggExtra)
p <- ggplot(data, aes(x = d, y = h)) + geom_point()
ggMarginal(p, type = "histogram")

# 26. Scatter plot with marginal density plots
ggMarginal(p, type = "density")

# 27. Scatter plot with marginal boxplots
ggMarginal(p, type = "boxplot")

# 28. Scatter plot with confidence ellipses
ggplot(data, aes(x = d, y = h, color = stratum)) + geom_point() + stat_ellipse()

# 29. Scatter plot with hexbin
ggplot(data, aes(x = d, y = h)) + geom_hex()

# 30. Scatter plot with smooth and custom theme
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm") + theme_minimal()

library(ggplot2)
library(plotly)
library(ggExtra)

# 31. A heatmap showing the density of points in the d and h space
ggplot(data, aes(x = d, y = h)) + geom_bin2d() + theme_minimal()

# 32. A dot plot showing the distribution of d values for each stratum
ggplot(data, aes(x = stratum, y = d)) + geom_dotplot(binaxis = "y", stackdir = "center")

# 33. An area plot showing the distribution of d values for each stratum
ggplot(data, aes(x = d, fill = stratum)) + geom_area(stat = "bin", alpha = 0.6)

# 34. A ridge plot (density plot by stratum) showing the distribution of d values
library(ggridges)
ggplot(data, aes(x = d, y = stratum, fill = stratum)) + geom_density_ridges()

# 35. A scatter plot with convex hulls drawn around points for each stratum
ggplot(data, aes(x = d, y = h, color = stratum)) + geom_point() + geom_polygon(aes(fill = stratum), alpha = 0.2)

# 36. A scatter plot with LOESS smoothing (non-linear trend line)
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "loess")

# 37. A scatter plot with rug plots on the margins to show the distribution of d and h
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_rug()

# 38. A scatter plot with 2D density contours to show the density of points
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_density_2d()

# 39. A scatter plot with filled 2D density contours
ggplot(data, aes(x = d, y = h)) + geom_point() + stat_density_2d(aes(fill = ..level..), geom = "polygon")

# 40. A scatter plot with jittered points to reduce overplotting
ggplot(data, aes(x = d, y = h)) + geom_jitter(width = 0.2, height = 0.2)

# 41. A scatter plot with labels for points where d is greater than 18
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_text(aes(label = ifelse(d > 18, sample, "")), hjust = 1.1)

# 42. A scatter plot with the regression equation displayed
library(ggpubr)
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm") + 
  stat_regline_equation(label.x = 10, label.y = 16)

# 43. A scatter plot with the correlation coefficient displayed
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm") + 
  stat_cor(label.x = 10, label.y = 15)

# 44. A scatter plot with a facet grid for stratum
ggplot(data, aes(x = d, y = h)) + geom_point() + facet_grid(. ~ stratum)

# 45. A scatter plot transformed into polar coordinates
ggplot(data, aes(x = d, y = h)) + geom_point() + coord_polar()

# 46. A scatter plot with a logarithmic scale on the x-axis
ggplot(data, aes(x = d, y = h)) + geom_point() + scale_x_log10()

# 47. A scatter plot with custom annotations (e.g., highlighting a specific point)
ggplot(data, aes(x = d, y = h)) + geom_point() + 
  annotate("text", x = 15, y = 14, label = "Highlighted Point", color = "red")

# 48. A scatter plot with error bars representing the standard deviation of h
ggplot(data, aes(x = d, y = h)) + geom_point() + 
  stat_summary(fun.data = mean_sdl, geom = "errorbar", width = 0.2)

# 49. A scatter plot with shaded confidence intervals around the trend line
ggplot(data, aes(x = d, y = h)) + geom_point() + geom_smooth(method = "lm", level = 0.99)

# 50. An interactive scatter plot with tooltips showing sample, d, and h values
plot_ly(data, x = ~d, y = ~h, color = ~stratum, text = ~paste("Sample:", sample, "<br>d:", d, "<br>h:", h)) %>% 
  add_markers()

