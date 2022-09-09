##########################################################
#######		Sampling Distribution of beta_hat(b_1)
##########################################################


set.seed(10)
sample_size = 100 # this is n
x = seq(1, 50, length = sample_size)	#fixed x values


####  fix our parameter values
beta_0 = 3
beta_1 = 6
sigma  = 2

#
###### Simulation
num_samples = 1000
beta_1_hats = rep(0, num_samples)

for (i in 1:num_samples) {
  eps = rnorm(sample_size, mean = 0, sd = sigma)
  y   = beta_0 + beta_1 * x + eps
  
  sim_model = lm(y ~ x)
 
  beta_1_hats[i] = coef(sim_model)[2]
}


####  Sampling distributions 


### True Variance of beta_1
Sxx = sum((x - mean(x)) ^ 2)
var_beta_1_hat = sigma ^ 2 / Sxx	
var_beta_1_hat


#### Empirical Mean and Variance for Beta1
mean(beta_1_hats) 	# empirical mean
var(beta_1_hats) 		# empirical variance


####### Empirical Distribution
# note need to use prob = TRUE
hist(beta_1_hats, prob = TRUE, breaks = 20, 
     xlab = expression(hat(beta)[1]), main = "", border = "dodgerblue")
curve(dnorm(x, mean = beta_1, sd = sqrt(var_beta_1_hat)), 
      col = "darkorange", add = TRUE, lwd = 3)