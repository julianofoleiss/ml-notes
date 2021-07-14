---
title: Cross Validation
author: Juliano H. Foleis
date: July 14, 2021
---

Cross validation is a technique used in model selection. It is used to predict how well the model will likely perform on previously unseen data. This prediction can be used to compare machine learning models and decide which one probably performs best.

Suppose we want to create a classification model for a dataset $\mathcal{D}$. To evaluate its generalization capabilities, i.e. evaluate how well it performs with previously unseen data, the dataset is usually partitioned into two non-overlapping subsets. The first subset, $\mathcal{D}_{\text{training}}$, called the **training set**, is used to estimate the model parameters The second subset, $\mathcal{D}_{\text{test}}$, called the **test set**, is used to evaluate the model performance with unseen data.

Model performance will vary depending on the partitioning. This raises a question: what is the best possible partitioning? Cross-validation tells us that we should not worry too much about selecting the best partition. Instead, we should estimate what is the performance we should *expect* with an arbitrary partitioning. This is because we know that any possible test set does not cover all the possible data the model might have to classify in the future. Thus, optimizing the partitioning is meaningless.

# K-fold cross validation

Cross validation is meta-protocol that is defined by averaging testing set performance metrics of the same machine learning method over different partitions of the data set. One of the most widely used cross validation protocols is the **k-fold cross-validation**. 


In k-fold cross-validation, the dataset is randomly partitioned into $k$ subsets, all approximately the same size. Each subset is known as a **fold**. $k$ training/test partitions are created: the test set is a single fold, and the remaining $k-1$ folds are used as the training set. Each partition uses a different **fold** as the test set, and each fold is used as the test set only once. Figure 1 shows how the dataset is partitioned for k-fold cross-validation with $k=4$.

![**Figure 1:** K-fold cross validation example ($k=4$)](images/kfold-cv.jpg)

The expected model performance is usually calculated as the average of the results for all folds. The standard deviation is also calculated. Both can then be used for statistical testing for model selection. The value for $k$ is not fixed, although $k=10$ is commonly used.


# Bibliography

Source: [StatQuest Machine Learning Fundamentals: Cross Validation.](https://www.youtube.com/watch?v=fSytzGwwBVw) 
