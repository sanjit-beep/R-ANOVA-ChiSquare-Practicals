

gender <- c("Male", "Male", "Female", "Female", "Male", "Female", "Male", "Female")
preference <- c("Science", "Commerce", "Science", "Arts",
                "Arts", "Science", "Commerce", "Arts")

data <- table(gender, preference)


chi_result <- chisq.test(data)
chi_result
