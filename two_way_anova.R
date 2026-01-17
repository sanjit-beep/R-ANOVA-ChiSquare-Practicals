# Two-Way ANOVA using aov()

# H0₁ (Gender effect):
# There is no significant difference in mean scores between genders.

# H0₂ (Method effect):
# There is no significant difference in mean scores between teaching methods.

# H0₃ (Interaction effect):
# There is no interaction effect between gender and teaching method on scores.

# H1:
# At least one of the above null hypotheses is false.

gender <- factor(c("Male","Male","Male","Male",
                   "Female","Female","Female","Female"))

method <- factor(c("Online","Online","Offline","Offline",
                   "Online","Online","Offline","Offline"))

score <- c(70,72,75,78,74,76,80,82)

data <- data.frame(gender, method, score)

anova_two <- aov(score ~ gender * method, data = data)
summary(anova_two)

# Decision Rule:
# If p-value < 0.05, reject the corresponding null hypothesis.
