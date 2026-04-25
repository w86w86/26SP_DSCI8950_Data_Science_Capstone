# Patient Churn Prediction in Healthcare

## Project Overview
This project analyzes patient churn using exploratory data analysis, machine learning, and survival analysis. The goal is to identify key drivers of patient disengagement and support early intervention strategies.

This model can be used as an early-warning system to identify patients at risk of churn and trigger proactive interventions.

## Dataset
Kaggle dataset: https://www.kaggle.com/datasets/nudratabbas/patient-churn-prediction-dataset-for-healthcare

## Key Findings
- Churn driven by engagement, satisfaction, and accessibility
- Logistic Regression performed best
- Threshold tuning enables early-warning detection
- Survival analysis shows risk increases over time

## Models Used
Machine Learning:
- Logistic Regression
- Random Forest
- XGBoost

Survival Analysis:
- Cox Proportional Hazards Model
- Kaplan-Meier

## Project Structure
- rmd/
- outputs/
- model/
- utils/
- report/

## How to Run
1. Clone repo *git clone https://github.com/your-username/patient-churn-analysis.git*
2. Open in RStudio
3. Run Rmd files in this order: EDA > Modeling > Survival Analysis

## Future Improvements
- Time-varying covariates
- Random Survival Forest
- Real-time dashboard

## Author
Souleymane Diawara
