# Machine Learning Project: Titanic Survival Prediction

**Team:** Sofia Novoa, Pari Patel, Giuliana Vazquez

---

## Overview
Built and evaluated multiple machine learning classification models to predict passenger survival on the Titanic dataset. This project demonstrates model comparison, feature engineering, and algorithm selection for predictive analytics.

---

## Dataset
- **Records:** 891 passengers
- **Features:** Age, fare, passenger class, sex, embarkation port, and other demographic factors
- **Target:** Survival (binary classification: survived = 1, did not survive = 0)

---

## Models Built & Performance

| Model | Accuracy | Notes |
|-------|----------|-------|
| **Random Forest** | **80.9%** | Best performer; captures non-linear relationships |
| Logistic Regression | 80.3% | Strong baseline; interpretable model |
| Decision Tree | 79.2% | Prone to overfitting |
| Pruned Decision Tree | 79.2% | Improved generalization through pruning |

---

## Key Techniques
- **Feature Engineering:** Created and transformed variables to improve model performance
- **Model Comparison:** Evaluated multiple algorithms to identify the best approach
- **Hyperparameter Tuning:** Optimized decision tree through pruning to reduce overfitting
- **Train/Test Validation:** Split data and used cross-validation to assess generalization

---

## Tools & Languages
- **Language:** R
- **Libraries:** caret, randomForest, rpart
- **Methods:** Classification, ensemble methods, decision trees

---

## Business Applications
This project demonstrates skills applicable to:
- **Revenue Forecasting:** Predictive models for pricing optimization
- **Customer Segmentation:** Classification of customer groups for targeted strategies
- **Risk Assessment:** Predicting outcomes for business decisions
- **Data-Driven Decision Making:** Using model outputs to influence strategy

---

## Key Learnings
- Random Forest outperformed simpler models by capturing complex patterns
- Model selection requires comparing multiple algorithms, not just choosing the most complex
- Pruning decision trees reduces overfitting and improves generalization
- Accuracy alone doesn't tell the full story; business context matters for model selection
