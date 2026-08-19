# Titanic Survival Prediction - Machine Learning Analysis

## Project Overview
Group course project (ECO 5427 - Fall 2025) where we built and evaluated multiple 
machine learning classification models to predict passenger survival on the Titanic dataset.

## My Contribution
**My Role:** Machine Learning & Algorithm Selection
- Built and compared 4 classification algorithms (Random Forest, Logistic Regression, 
  Decision Tree, Pruned Decision Tree)
- Optimized decision tree through pruning to reduce overfitting
- Selected Random Forest (80.9% accuracy) as best-performing model
- Analyzed model trade-offs: accuracy, interpretability, and complexity

## Key Results
| Model | Accuracy | Notes |
|-------|----------|-------|
| **Random Forest** | **80.9%** | Best performer; captures non-linear relationships |
| Logistic Regression | 80.3% | Strong baseline; highly interpretable |
| Decision Tree | 79.2% | Prone to overfitting |
| Pruned Decision Tree | 79.2% | Improved generalization through pruning |

## Methods & Techniques
- **Model Comparison:** Evaluated 4 algorithms to identify optimal approach
- **Hyperparameter Tuning:** Optimized decision tree through pruning
- **Train/Test Validation:** Split data (75/25) and used cross-validation for generalization
- **Algorithm Selection:** Balanced accuracy vs. interpretability in final model choice

## Tools & Languages
- **Language:** R
- **Libraries:** caret, randomForest, rpart
- **Methods:** Classification modeling, ensemble methods, decision trees

## Key Skills Demonstrated
✓ Algorithm comparison and evaluation  
✓ Model optimization (hyperparameter tuning)  
✓ Trade-off analysis (accuracy vs. interpretability vs. complexity)  
✓ Classification modeling  
✓ Cross-validation and generalization testing  
✓ Communicating technical findings  

## Why Random Forest Won
Random Forest outperformed baseline models by **0.6 percentage points** (80.9% vs. 80.3%) 
by capturing non-linear relationships between variables like sex, class, age, and fare. 
While less interpretable than a single decision tree, it provided better predictive 
performance and more reliable variable importance rankings.
## Key Learnings
- Random Forest outperformed simpler models by capturing complex patterns
- Model selection requires comparing multiple algorithms, not just choosing the most complex
- Pruning decision trees reduces overfitting and improves generalization
- Accuracy alone doesn't tell the full story; business context matters for model selection
