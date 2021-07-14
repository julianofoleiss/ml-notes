---
title: Bias vs Variance
author: Juliano H. Foleis
date: July 14, 2021
---

The inability for a machine learning method to capture the true relationship among varibles is called **bias**. For example, a linear regression used to model a true logarithmic relationship has high bias. A polynomial regression with the same number of parameters as the number of training points modeling the same relationship is able to go through all data points. Thus, it has low bias.

The diference in fits between data sets (training vs testing, for instance) is called **variance**.

There is a trade-off between bias and variance. For instance, a high-order polynomial is able to fit its training set very well (low bias), but it performs badly in other datasets. In other words, its variance is high, since the difference between fits in the training set and any other data set will *most likely* be large. In contrast a linear regression modeling the same relationship may present a relatively high bias. On the other hand, the linear regression model is *likely* to have low variance, since it most likely will perform similarly for different datasets. In other words, the linear regression might only give good predictions, not great predictions, but they will be **consistently** good predictions.

When there is a high variance when comparing the results in the training and testing sets, we say that the model is **overfit**.

The goal when developing a machine learning model is to find a a good balance between bias and variance. The most commonly used methods used to obtain such balance are: *regularization*, *boosting*, and *bagging*.

# Bibliography

Source: [StatQuest Machine Learning Fundamentals: Bias and Variance.](https://www.youtube.com/watch?v=EuBBz3bI-aA) 

