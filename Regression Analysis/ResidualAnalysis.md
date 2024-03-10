#Regression Analysis

## Project #3 – Residual Analysis

### Data: Brain.xls

**Objective**: This project delves into the relationship between the body weight and brain weight of animals using the `Brain.xls` dataset, which encompasses body weight (X, in kg) and brain weight (Y, in g). Through rigorous residual analysis, we aim to understand the underlying patterns and assess the fit of our regression model.

### Assignment Tasks:

1. **Correlation Analysis**: Compute both Pearson and Spearman correlations between body weight (X) and brain weight (Y).

2. **Scatterplot Visualization**: Draw a scatterplot to visually assess the relationship between Y (brain weight) and X (body weight).

3. **Log Transformation**:
    - Compute the natural log-transformation for both variables to obtain lnY and lnX.
    - Analyze the correlation between lnY and lnX using both Pearson and Spearman methods.
    - Visualize the relationship with a scatterplot of ln(Y) versus ln(X).

4. **Ordinary Least Squares (OLS) Model**:
    - Fit the OLS regression model `Y = β0 + β1X + e` to the data.
    - Analyze the model's residuals for:
        1. Normality
        2. Homogeneity of variance
        3. Possible outliers
        4. Autocorrelations
    - Obtain and interpret the residual plot and student residual plot.

5. **Log-Transformed Model Analysis**:
    - Fit the log-transformed regression model `ln(Y) = β0 + β1ln(X) + e`.
    - Similarly, assess the residuals of this model for:
        1. Normality
        2. Homogeneity of variance
        3. Possible outliers
        4. Autocorrelations
    - Obtain and interpret the residual plot and student residual plot for the log-transformed model.

### Goal:

The main goal of this homework is to explore and model the relationship between an animal's body weight and brain weight, emphasizing the importance of residual analysis in regression models. By comparing the original and log-transformed models, we aim to determine the most suitable model that accurately describes the data while meeting the assumptions of linear regression analysis. This project will not only enhance our understanding of regression diagnostics but also our ability to interpret and improve model fit through residual examination.
