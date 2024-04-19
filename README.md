# Olist: Brazilian department store (tp_final_proj)
This is a project repository on Olist a Brazilian largest department store. The dataset is based  on 100k orders and to find out market findings and recommendations in a report format

Olist Store is the largest department store in Brazilian marketplaces. Olist connects small businesses from all over Brazil to channels without hassle and with a single contract. The Brazilian ecommerce public dataset of orders (from 2016 to 2018) made at Olist Store is provided to your company for analysis.
Your manager is asking you to critically analyse the provided datasets using Business Intelligence tools and provide some marketing findings / recommendations in a report format. The dataset has information of 100k orders made at multiple marketplaces in Brazil. Its features allow viewing an order from multiple dimensions: from order status, price, payment and freight performance to customer location, product attributes and finally reviews written by customers. A geolocation dataset that relates Brazilian zip codes to lat/lng coordinates is also integrated in the dataset.
After a customer purchases the product from Olist Store, a seller gets notified to fulfill that order. Once the customer receives the product, or the estimated delivery date is due, the customer gets a satisfaction survey by email where they can give a note for the purchase experience and write down some comments.

The dataset is in the data folder

### 1. Data Schema
The data is divided into multiple datasets for better understanding and organization. Please refer to the following data schema when working with it:

![image](https://github.com/HassanHosain/tp_final_proj/assets/77096784/ea5e8b43-6b80-44bc-a1ad-22d1c6605696)

### 2. Attention
- An order might have multiple items.
- Each item might be fulfilled by a distinct seller.

### 3. Possible scopes of the marketing findings / recommendations from the dataset:
- Feedback Sentiment Analysis: Evaluate the polarity of the tweets as customer feedback positive, negative or neutral.
- Clustering: Some customers did not write a review. But why are they happy or mad?
- Sales Prediction: With purchase date information you will be able to predict future sales.
- Delivery Performance: You will also be able to work through delivery performance and find ways to optimize delivery times.

### 4. Reference
●	Sentiment Analysis in Power BI: https://www.youtube.com/watch?v=mhe9Vs3jQes
●	Text Mining and Sentiment Analysis: Power BI Visualizations: https://www.red-gate.com/simple-talk/sql/bi/text-mining-and-sentiment-analysis-power-bi-visualizations/
●	Forecasting in Power BI: https://www.youtube.com/watch?v=mMd2rKK7dWc
●	Power BI Clustering: https://www.youtube.com/watch?v=LsFDWS77ER4

## Project Objectives
* 1. Create data pipeline to ingest data in PostgreSQL or SQL server database
* 2. Use Power BI to answer following questions:
  a. How many customers, orders, and orders per customer does the company have?
  b. What is the number of customers by state?
  c. What is the number of orders by month?
  d. What are the top 5 product categories?
* 3.	Visualise the company’s customers’ demographics, sales trend, orders by categories, orders changes by year, etc. and use Power BI to help make better decisions
* 4.	Map and compare report data with data from database query to validate the reports (functional testing).
* 5.	Critically analyse relevant data using statistical methods (e.g., Predictive Modelling or Machine Learning)
* 6.	Provide some recommendations and improvements (please refer to point 3 in the project description)


