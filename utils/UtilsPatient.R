##################
# Pre-processing for Patient Churn Project
# Souleymane Diawara for the group 1 / project 
##################

library(dplyr)

prepare_churn <- function(churn_data, target_variable = 'Churned') {
  
  # 1. Remove non-predictive identifiers and raw dates
  # PatientID is an ID, and Last_Interaction_Date requires complex processing
  churn_data <- churn_data %>% 
    select(-any_of(c("PatientID", "Last_Interaction_Date")))
  
  # 2. Convert character columns to factors
  churn_data <- churn_data %>% mutate_if(is.character, as.factor)
  
  # 3. Process the target variable: Churned
  if(target_variable %in% colnames(churn_data)) {
    churn_data[[target_variable]] <- as.factor(churn_data[[target_variable]])
    
    # Recode levels to "No"/"Yes" if they are currently 0/1
    if(all(levels(churn_data[[target_variable]]) %in% c("0", "1"))) {
      churn_data <- churn_data %>% 
        mutate(!!sym(target_variable) := recode(!!sym(target_variable), 
                                                '0' = 'No', '1' = 'Yes'))
    }
  }
  
  # 4. Handle Missing Values
  # Adds NA as a level for factors to ensure tidymodels handles them correctly
  churn_data <- churn_data %>% mutate_if(~ any(is.na(.)), addNA)
  
  return(churn_data)
}
