# Here is a function to find and save the linear equation and R^2

monthly_explore <- stream_explore %>% 
  group_by(sample_id, date) %>%  
  summarize(temp = min(temp))

# To find the linear regression of each sample site, we first created 
# separate data sets for each site
monthly_explore_Q1 <- monthly_explore %>% 
  filter(sample_id == "Q1") %>% 
  select(-sample_id)

monthly_explore_Q2 <- monthly_explore %>% 
  filter(sample_id == "Q2")

monthly_explore_Q2 <- select(monthly_explore_Q2, -sample_id)

monthly_explore_Q3 <- monthly_explore %>% 
  filter(sample_id == "Q3") 

monthly_explore_MPR <- monthly_explore %>% 
  filter(sample_id == "MPR")

# Then, use lm to find the linear regression for each site 
# and save the equation as a string

lm_string <- function(data, x, y) {
  lm_total <- lm(paste(y, "~", x), data = data)
  lm_coef <- lm_total$coefficients
  equation_string <- paste0("y = ", lm_coef[1], " + ", lm_coef[2])
}

intercept <- lm_eqn$coefficients
