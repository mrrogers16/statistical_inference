png("q5c_cdf.png", width = 800, height = 600)

x <- seq(1, 4, length.out = 1000)

Fx <- ifelse(x < 2, 0,
    ifelse(x < 3, (x - 2)^2, 1)
)

plot(x, Fx,
    type = "l", lwd = 2,
    main = "CDF of X",
    xlab = "x", ylab = "F(x)",
    ylim = c(0, 1.1)
)

abline(h = c(0, 1), lty = 3, col = "gray50")
abline(v = c(2, 3), lty = 3, col = "gray50")

dev.off()
