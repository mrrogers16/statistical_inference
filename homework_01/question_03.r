# Q3: Campus transportation modes
modes <- c("Drive alone", "Carpool", "Public transit", "Walk",
           "Bicycle", "Campus shuttle", "Other")
counts <- c(248, 86, 104, 63, 41, 38, 20)
names(counts) <- modes

sum(counts)

counts_sorted <- sort(counts, decreasing = TRUE)
cum_pct <- cumsum(counts_sorted) / sum(counts_sorted) * 100

print(counts_sorted)
print(cum_pct)

png("q3a_pareto.png", width = 900, height = 600)
par(mar = c(8, 4, 4, 4))

bp <- barplot(counts_sorted,
              main = "Pareto Chart: Primary Transportation Mode to Campus",
              ylab = "Number of students",
              ylim = c(0, sum(counts_sorted) * 1.05),
              col = "steelblue",
              las = 2)

lines(bp, cumsum(counts_sorted), type = "b", pch = 19, col = "red")

axis(side = 4, at = seq(0, 600, by = 120), labels = paste0(seq(0, 100, by = 20), "%"))
mtext("Cumulative percentage", side = 4, line = 2.5)

invisible(dev.off())


png("q3b_pie.png", width = 800, height = 700)

pct <- round(counts / sum(counts) * 100, 1)
pie_labels <- paste0(modes, "\n", counts, " (", pct, "%)")

pie(counts,
    labels = pie_labels,
    main = "Primary Transportation Mode to Campus",
    col = rainbow(length(counts))
    )

invisible((dev.off))