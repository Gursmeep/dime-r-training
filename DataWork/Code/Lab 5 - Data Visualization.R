# ------------------------------------------------------------------------------ #
#                                                                                #
#                                     DIME                                       #
#                              Data Visualization                                #
#                                                                                #
# ------------------------------------------------------------------------------ #

# Load data ----------------------------------------------------------------------

  # Load LWH data
  lwh <- read.csv(file.path(finalData,"lwh_clean.csv"),
                  header = T)
  
  # Subset data
  covariates <- c("age_hhh",
                  "num_dependents",
                  "income_total_trim",
                  "expend_food_yearly",
                  "w_area_plots_a")
  lwh_simp <- lwh[,covariates]

# EXERCISE 1: Plot a whole data set -----------------------------------------------
  
# EXERCISE 2: Create a histogram --------------------------------------------------
  
# EXERCISE 3: Create a boxplot ----------------------------------------------------
  
# EXERCISE 4: ggpplot -------------------------------------------------------------
  
  plot1 <- ggplot(data = lwh,
                  aes(y = w_area_plots_b,
                      x = w_gross_yield_b))
  
# EXERCISE 5: Plot an aggregated data set -----------------------------------------
  
  # Aggregate anual income by year
  anualInc <-
    aggregate(x = lwh["income_total_trim"], # data.frame
              by = list(year = lwh$year), #list
              FUN = mean, na.rm = T) # function
  
# EXERCISE 6: ggplot aesthectics ---------------------------------------------------
  
  # Subset lwh to 2018 and Rwamangana 35
  lwh_s <- lwh[lwh$year == 2018 & lwh$site_code == "Rwamangana 35", ]