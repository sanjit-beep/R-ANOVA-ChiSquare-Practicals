# Chi-Square Test using chisq.test()

# H0 (Null Hypothesis):
# Gender and course preference are independent.

# H1 (Alternative Hypothesis):
# Gender and course preference are not independent.

gender <- c("Male", "Male", "Female", "Female", "Male", "Female", "Male", "Female")
preference <- c("Science", "Commerce", "Science", "Arts",
                "Arts", "Science", "Commerce", "Arts")

data <- table(gender, preference)

chi_result <- chisq.test(data)
chi_result

# Decision Rule:
# If p-value < 0.05, reject H0; otherwise accept H0.

