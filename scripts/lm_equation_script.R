# To find the linear regression of each sample site, we first created 
# separate data sets for each site
min_monthly_Q1 <- min_monthly %>% 
  filter(sample_id == "Q1") 

min_monthly_Q2 <- min_monthly %>% 
  filter(sample_id == "Q2")

min_monthly_Q3 <- min_monthly %>% 
  filter(sample_id == "Q3") 

min_monthly_MPR <- min_monthly %>% 
  filter(sample_id == "MPR")

# Then, use lm to find the linear regression for each site 
# and save the equation as a string
# First, site Q1:
lm_tot_Q1 <- lm(min_monthly_Q1$temp ~ min_monthly_Q1$date)$coefficients
lm_string_Q1 <- paste0("y = ", lm_tot_Q1[1], " + ", lm_tot_Q1[2])

# Site Q2
lm_tot_Q2 <- lm(min_monthly_Q2$temp ~ min_monthly_Q2$date)$coefficients
lm_string_Q2 <- paste0("y = ", lm_tot_Q2[1], " + ", lm_tot_Q2[2])

# Site Q3
lm_tot_Q3 <- lm(min_monthly_Q3$temp ~ min_monthly_Q3$date)$coefficients
lm_string_Q3 <- paste0("y = ", lm_tot_Q3[1], " + ", lm_tot_Q3[2])

# Site MPR 
lm_tot_MPR <- lm(min_monthly_MPR$temp ~ min_monthly_MPR$date)$coefficients
lm_string_MPR <- paste0("y = ", lm_tot_MPR[1], " + ", lm_tot_MPR[2])

# Tried to make a function to make the above process cleaner, but using 
# lm in a function proved difficult!
# lm_string <- function(data, x, y) {
#   lm_total <- lm(paste(y, "~", x), data = data)
#   lm_coef <- lm_total$coefficients
#   equation_string <- paste0("y = ", lm_coef[1], " + ", lm_coef[2])
# }
# 
# intercept <- lm_eqn$coefficients
