# Regression Analysis

## Project #2 – Dummy Variable Regression

### Data: Salary2.xls

**Objective**: This project aims to explore the impact of academic qualifications on the salary ranges for technical positions in research and development within high-tech companies. By using the `Salary2.xls` dataset, which includes information on employees' current salaries (Y), years of experience since the last degree (X), and their highest academic degree obtained (Z), we will conduct a comprehensive analysis to establish differentiated salary standards.

### Assignment Tasks:

1. **Descriptive Statistics**: Compute descriptive statistics of Y (salary) and X (years of experience) for each level of Z (academic degree).

2. **Scatterplot Analysis**: Draw a scatterplot of Y and X using different symbols to represent the three levels of Z (B.S., M.S., and Ph.D.).

3. **ANOVA Testing**: Conduct ANOVA to test the differences between the three levels of Z on both Y (salary) and X (years of experience).

4. **Model Fitting by Level of Z**: Fit the linear regression model `Y = β0 + β1X + e` for each level of Z, and report the three models.

5. **Dummy Variable Model**:
   - Create two dummy variables, `Z1` and `Z2`, based on the academic degree (Z).
   - Compute two new variables (`XZ1`) and (`XZ2`) and fit the following dummy variable model: `Y = β0 + β1X + β2Z1 + β3Z2 + β4(XZ1) + β5(XZ2) + e`.

6. **Model Derivation and Comparison**:
   - Derive the model `Yˆ = βˆ0 + βˆ1X` by each level of Z (1, 2, 3) from the dummy variable model.
   - Compare these models with the models obtained in step 4.

7. **Regression Line Tests**:
   - Test whether the regression lines for the three levels of Z have the same intercepts, same slopes, or are coincident.
   - Draw conclusions from the tests based on hypotheses about slopes (`β4 = β5 = 0`), intercepts (`β2 = β3 = 0`), and coincidence (`β2 = β3 = β4 = β5 = 0`).

### Goal:

The main goal of this homework is to understand how different academic qualifications (B.S., M.S., and Ph.D.) influence salaries in technical roles within high-tech industries. Through statistical analysis and regression modeling, including the use of dummy variables, we aim to uncover significant patterns and provide insights into establishing fair and competitive salary ranges.
