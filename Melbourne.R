
# apples <- data.frame(apple_id = as.factor(1:1000),weight = rnorm(1000, 5, 1))
# write.csv(apples, 'data/apples_data.csv', row.names = FALSE)

#read data
apples <- read.csv('data/apples_data.csv')

# process data
apples$log_weight <- log(apples$weight)

# graphing
png('figs/hist_apple_weight.png')
hist(apples$weight)
dev.off()