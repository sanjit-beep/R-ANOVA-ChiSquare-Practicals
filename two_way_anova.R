
gender <- factor(c("Male","Male","Male","Male",
                   "Female","Female","Female","Female"))

method <- factor(c("Online","Online","Offline","Offline",
                   "Online","Online","Offline","Offline"))

score <- c(70,72,75,78,74,76,80,82)

data <- data.frame(gender, method, score)


anova_two <- aov(score ~ gender * method, data = data)
summary(anova_two)
