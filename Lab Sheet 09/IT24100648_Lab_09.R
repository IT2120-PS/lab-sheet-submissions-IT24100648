setwd("C:\\Users\\USER\\Desktop\\IT24100648_Lab_09")


# Part i: Generate a random sample of size 25 for baking time
# Baking time follows normal distribution with mean 45 and sd 2
baking_times <- rnorm(25, mean = 45, sd = 2)

print(baking_times)


test_result <- t.test(baking_times, mu = 46, alternative = "less")

print(test_result)

# Very simple conclusion
if(test_result$p.value < 0.05) {
  print("Conclusion: Baking time is significantly less than 46 minutes")
} else {
  print("Conclusion: Baking time is NOT significantly less than 46 minutes")
}

