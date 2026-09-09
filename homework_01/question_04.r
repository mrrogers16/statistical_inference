points <- c(24, 36, 48, 17, 21, 61, 17, 48, 23, 28, 58, 24, 57)

length(points)
summary(points)

png("q4a_histogram.png", width = 800, height = 600)

hist(points,
    breaks = seq(10, 70, by = 10),
    main = "UTSA Roadrunners football team scores in the 2025 season",
    xlab = "Points Scored",
    ylab = "Number of Games",
    col = "orange",
    border = "black"
)

invisible(dev.off())

png("q4b_boxplot.png", width = 700, height = 600)

boxplot(points,
    main = "UTSA Roadrunners football team scores in the 2025 season",
    xlab = "Points Scored",
    col = "orange",
    horizontal = TRUE
)

invisible((dev.off))
