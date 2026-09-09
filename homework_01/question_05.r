# Q5 visualization: watermelon weights, mean = 10 kg, sd = 2 kg

mu <- 10
sigma <- 2

# a fine grid of x-values across the curve, and the curve height at each
x <- seq(2, 18, length.out = 1000)
y <- dnorm(x, mean = mu, sd = sigma)

# reusable function: draw the curve, shade between lo and hi
draw_region <- function(lo, hi, title, shade_col) {
  plot(x, y, type = "l", lwd = 2,
       main = title,
       xlab = "Weight (kg)", ylab = "Density",
       xaxt = "n")
  axis(1, at = seq(4, 16, by = 2))

  # shade the region by drawing a filled polygon under the curve
  xs <- x[x >= lo & x <= hi]
  polygon(c(lo, xs, hi), c(0, dnorm(xs, mu, sigma), 0),
          col = shade_col, border = NA)
  lines(x, y, lwd = 2)

  # dashed vertical lines at each step away from the mean
  abline(v = seq(4, 16, by = 2), lty = 3, col = "gray60")
  abline(v = mu, lwd = 2, col = "darkblue")
}

png("q5a.png", width = 800, height = 500)
draw_region(12, 18, "(a) More than 12 kg  =  one step above the mean", "tomato")
invisible(dev.off())

png("q5b.png", width = 800, height = 500)
draw_region(8, 14, "(b) Between 8 and 14 kg  =  one step below to two steps above", "seagreen3")
invisible(dev.off())

png("q5c.png", width = 800, height = 500)
draw_region(2, 6, "(c) Less than 6 kg  =  two steps below the mean", "orchid3")
invisible(dev.off())