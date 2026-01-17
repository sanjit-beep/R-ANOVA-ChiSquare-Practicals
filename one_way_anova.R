
method <- factor(c("A","A","A","B","B","B","C","C","C"))
marks <- c(65,70,68,75,78,74,60,62,58)

data <- data.frame(method, marks)



anova_result <- aov(marks ~ method, data = data)
summary(anova_result)
