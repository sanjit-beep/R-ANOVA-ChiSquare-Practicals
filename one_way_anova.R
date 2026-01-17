# One-Way ANOVA using aov()

# H0 (Null Hypothesis): 
# The mean marks of all teaching methods (A, B, C) are equal.

# H1 (Alternative Hypothesis): 
# At least one teaching method has a different mean mark.

method <- factor(c("A","A","A","B","B","B","C","C","C"))
marks <- c(65,70,68,75,78,74,60,62,58)

data <- data.frame(method, marks)

anova_result <- aov(marks ~ method, data = data)
summary(anova_result)

# Decision Rule:
# If p-value < 0.05, reject H0; otherwise accept H0.
