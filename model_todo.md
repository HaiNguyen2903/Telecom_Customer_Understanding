DATASET
- feature engineering (train data):
    - ANOVA (x and y)
    - Chi-squared test (x and y)
    - Mutual Information (x and y)
    - Correlation (x and x)
    - Variance
- handle imblanced data: SMOTE-N

MODEL
- Parametric:
    - Logistic Regression (optimized by MLE)
- Non-linear regression:
    - KNN
    - Decision Tree
    - Random Forest
    - XGBoost / GradientBoost / LightGBM

EVALUATION METRICS
- Precison
- Recall
- F1

INTEPRET
- Coefficient
- SHAP

FLOW
- split baseline dataset -> benchmark models -> select model -> finetuning + feature engineering 
- data versions:
    - v0: original
    - v1: anova + chi-squared
    - v2: correlation
    - v3: v1 + v2
    - v4: best prior version + SMOTE-N

- model selection
- cross validation + use cross val predict to get classification report of cross validation preds
- select best model for optimization
- optimize model
    - param optimize
    - data version + feature selection


- poutcome sucess => high likelihood
- campaign in mar/sep/oct/dec => high likelihood
- emp rate low (pesmistic) => high likelihood