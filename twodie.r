
n <- readline(prompt = "how many iterations: ")
n <- as.integer(n)
x <- integer()
two.dice <- function(){
  dice <- sample(1:6, size = 2, replace = TRUE)
  return(sum(dice))
}
x = replicate(n, expr = two.dice())

table = table(x)
relativefreq = table / length(x)

par(mfrow = c(1:2))

barplot(table,main="Two Dice", xlab = "x", ylab = "f(x)")
barplot(relativefreq, main = "Two Dice Relative Freq", xlab = "x", ylab = "y")
