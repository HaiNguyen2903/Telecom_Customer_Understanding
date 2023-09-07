# Overview and Objectives

A telecommunication business recently began a marketing campaign to encourage clients to sign up for their new subscription plan. The organization is looking for help in developing a complete understanding of its consumers and identifying the client group that are most responsive to marketing initiatives.

The project will focus on EDA techniques to get a deeper understand of the data, which can help in answering the following questions:

**1. How to describe the customer segment (i.e career,life status, etc.)?**

**2. Are there any aspects that can affect customers’decisions (both external and internal factors)?**

**3. Are there any redundant or missing information that need to be processed for further usage?**

After finishing the analysis, we can gain a comprehensive understanding of their customer and ready to build further Machine Learning models for customer segmentation based on these insights.

# Dataset

The dataset can be downloaded [here](https://drive.google.com/file/d/113_wcUa5BkKZico4ySDSe-wFzWajgHKL/view?usp=drive_link). It consists of **41,180 samples** with **21 features** that describe details of each customer, from personal information (age, martial status, occupation, etc.) to interaction history (contacted times, contact durations, etc.)

# Methodologies

The EDA stage can be summarised as:
- Data cleaning (identifying missing values, duplicated values, outliers, etc.)
- Univariate Analysis (Distribution plot, Log transformation, IQR outliers detection, etc.)
- Bivariate Analysis (Kernel Density Estimation analysis, Spearman rank matrix correlation, Hypothesis testing, ...)

# Outcomes and Future Works:
### 1. Customer descriptions

- The average age of customers are around 40 years old. Most of them was graduated from an university or high school, before getting married and working as an admin or a worker.

- Almost customers are reconnected after nearly 3 years and were not interacted in the previous campaign, since most of them were not contacted in the previous campaign. *(from **pdays** and **previous** features)*

### 2. Economic situation
- During the campaign occured, the economic situation was not optimistic. There was a decrease in employment demand. The price was also deflated, which indicate an economic slowdown. All of these trends could be the reasons for customers' pessimism about the economy and personal financial. *(from **emp.var.rate**, **cons.price.idx** and **cons.conf.idx** features)*

### 3. Feature relationships

**Numerical features and Target features**
- Longer conservation durations tend to make customers subscribe to the plan.
- Meanwhile, customers also tend to subscribe to the plan when the econmic situation goes down.
- By using hypothesis testing, the relationship between every numerical features and target features are statistically significant.

**Categorical features and Target features**
- Customers who already subscribed to the previous campaign or were contacted by celludar are more likely to continue subscribe to the plan.
- By using hypothesis testing, whether a customer has a housing or personal loan is not likely a factor that affect him/her decisions. On the other hand, the relationship between other categorical features and target features are statistically significant.

**Between independent features**
- Features which indicate economic situation are highly correlated (**emp.var.rate**, **nr.employed** and **euribor3m**). These features can be considered drop to avoid causing Machine Learning model unstable.
- Moreover, there are deeper relationships between most of categorical features in the dataset. For further analysis, we can use PCA (Principal Component Analysis) to combine these features and reduce the feature dimensions, which could speedup the converenge of Machine Learning models and enhance their performance.

### 4. Future works
- Since the outliers in numerical features are still kept due to lack of evidence, they we be used for future model experiments to determined wether to keep these samples or not.
- Feature selection or Feature extraction methods (PCA, ...) can be performed to get more optimal feature set.
