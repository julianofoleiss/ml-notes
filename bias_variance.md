---
title: Bias vs Variance
author: Juliano H. Foleis
date: July 14, 2021
---

The inability for a machine learning method to capture the true relationship among varibles is called **bias**. For example, a linear regression used to model a true logarithmic relationship has high bias. A polynomial regression with the same number of parameters as the number of training points modeling the same relationship is able to go through all data points. Thus, it has low bias.

The diference in fits between data sets (training vs testing, for instance) is called **variance**.

There is a trade-off between bias and variance. For instance, a high-order polynomial is able to fit its training set very well (low bias), but it performs badly in other datasets. In other words, its variance is high, since the difference between fits in the training set and any other data set will *most likely* be large. In contrast a linear regression modeling the same relationship may present a relatively high bias. On the other hand, the linear regression model is *likely* to have low variance, since it most likely will perform similarly for different datasets. In other words, the linear regression might only give good predictions, not great predictions, but they will be **consistently** good predictions.

When there is a high variance when comparing the results in the training and testing sets, we say that the model is **overfit**.

The goal when developing a machine learning model is to find a a good balance between bias and variance. The most commonly used methods used to obtain such balance are: *regularization*, *bagging*, and *boosting*.

# Regularization

Regularization reduces variance by introducing bias into the model. The added bias makes the predictions less sensible to the training set by reducing the flexibility of the model. Bias is usually introduced via penalty terms in optimization formulations. Parametric classification and regression algorithms commonly use regularization parameters that are tuned towards variance reduction. Examples of models with regularization parameters are the SVM, KNN, Ridge Regression, Lasso, ElasticNet, Neural Networks, and many others.

# Bagging

Bagging is a portmanteau of ***b***ootstrap ***agg***regat***ing***.

Bagging is a method commonly used to reduce the variance of complex models (high variance, low bias). It starts by **bootstrapping** the dataset, which samples the dataset uniformly with replacement. *N* datasets are sampled with bootstrapping. Each bootstrapped dataset is then used to train an independent model. A final prediction for an input instance *x* is decided by **aggregating** the predictions of the $N$ models. A common aggregation strategy for classification is the majority vote. However, if the models emit probabilities for each class, a common approach is to use the sum rule to aggregate the probabilities per-class, and then deciding for the class with the higher cumulative probability.

Each independent classifier is usually a **weak learner**, which is crippled by high variance or high bias. Weak classifiers are usually only marginally accurate. Bagging works by leveraging the concept of the "wisdom of the crowds". This concept is related to the perception that a group of people usually decides better than a single expert. The aggregation step is responsible for combining the results of weak learners, leading to better model performance.

The Random Forest algorithm uses bagging to improve the results obtained with decision trees. This algorithm uses decision trees, which are prone to high variance, to model each classifier. Random Forests choose only a random subset of features in each step while building the tree. The idea is that by using a random subset of features, it is able to harness the predictive capacity of features that are otherwise underutilized. This also makes it more likely to create uncorrelated decision trees. Bagging helps reducing variance, thus reducing overfitting.

# Boosting

Boosting is similar to bagging in the sense that it combines the results of many weak learners to reach a final decision. Bagging works by training models with boostrapped datasets in parallel. On the other hand, boosting works by sequentially training model based on the errors of the previous classifiers in the chain. The idea is that misclassified samples are given a higher weight, so weak learners further down focus on correctly classifying critical samples. Boosting is typically used on weak learners that have low variance and high bias.

Boosting is the main idea behind algorithms such as AdaBoost, XGBoost, GradientBoost, and BrownBoost.

# Bibliography

Source: [StatQuest Machine Learning Fundamentals: Bias and Variance.](https://www.youtube.com/watch?v=EuBBz3bI-aA) 

