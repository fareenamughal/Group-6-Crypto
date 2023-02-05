# Group 6 Final Project:  Cryptocurrency vs S&P 500 Analysis
Use machine learning, Python, PostgreSQL and Tableau to analyze and predict top 5 cryptocurrencies with top 5 S&P 500.  

*Team - Fareena Mughal, Emerset Farquharson, Kirti Henry, Hitha Das*

## Project Dashboard
[Here is the link to our Tableau Workbook](https://prod-ca-a.online.tableau.com/#/site/group6crypto/workbooks/80230/views)
_-please reach out to one of our group members if the link does not work for you._  

## Project Links - In Progress as we add more for segment #3
* [Tableau Workbook / WIP Presentation](https://prod-ca-a.online.tableau.com/#/site/group6crypto/workbooks/80230/views)


## Overview 
Cryptocurrency, specifically Bitcoin, has seen a tremendous amount of growth in recent years, with many investors turning to it as an alternative to traditional investments like stocks. In this project, we will compare the performance of top 5 S&P 500, a stock market index that represents the performance of the top 500 publicly traded companies in the United States, to that of top 5 cryptocurrencies. 

The 5 cryptocurrencies used in this analysis are - 
1. Bitcoin (BTC) 
2. Ethererm (ETH)
3. Binance coin (BNB)
4. Cardano (ADA)
5. Dogecoin (DOGE)

The 5 S&P 500 used in the analysis are -
1. Apple Inc. (AAPL)
2. Microsoft Corp. (MSFT)
3. Amazon.com, Inc. ( AMZN)
4. Tesla, Inc. (TSLA)
5. Nvidia Corp. (NVDA)

We will use historical data on the prices of the top 5 cryptocurrencies and the top 5 companies in the S&P 500 to predict the future prices and volatility for the following days. Standard deviation will be used as a measure of volatility and compare the results between the two asset classes. We will also use charts to visually represent the volatility and the price predictions of each asset over time.

## Purpose of the Project
The purpose of this analysis is to predict future prices of the top 5 cryptocurrencies and thatt of the top 5 companies in the S&P500 using a Machine Learning model, as well as showing volalitity . Cryptocurrencies have gained popularity in recent years as an alternative investment option to traditional stocks. This analysis aims to evaluate the risk and potential returns of investing in these two different asset classes.

## Resources
Below are the links to the datasets we used, sourced from Yahoo Finance:  
[S&P 500](https://finance.yahoo.com/quote/%5EGSPC/history?p=%5EGSPC) | 
[ADA](https://finance.yahoo.com/quote/ADA-USD?p=ADA-USD&.tsrc=fin-srch) | 
[BNB](https://finance.yahoo.com/quote/BNB-USD?p=BNB-USD&.tsrc=fin-srch) | 
[BTC](https://finance.yahoo.com/quote/BTC-USD?p=BTC-USD&.tsrc=fin-srch) | 
[DOGECOIN](https://finance.yahoo.com/quote/DOGE-USD?p=DOGE-USD&.tsrc=fin-srch) | 
[ETH](https://finance.yahoo.com/quote/ETH-USD?p=ETH-USD&.tsrc=fin-srch)


## Steps
- Source data (Yahoo Finance)
- Scraped/ cleaned/ created csv dataset and associated tables
- Query data using Python/Jupyter Notebook
- Store the data on a database (we used PostgreSQL & Tableau Cloud)
- Used machine learning (time series regression model) for prediction
- Connect to cleaned CSVs using Tableau Desktop and published on Tableau Public
- Analysis
- Visualization & story-telling


## Segment 1
#### <ins>A description of the data</ins>  
After extracting the each of the 5 crypto datasets from Yahoo Finance using Python, we appended a column called "Name" that contains the name of the coin/ETF. This step was necessary as we concatenated the datasets into one master file, keeping the S&P 500 data in a separate one. 

ERD 

![ERD](ERD/ERD.png) 

Here are some snapshots of our 2 datasets, as dataframes:  

1. Crypto Dataframe  
![Crypto Dataframe](Images/crypto_dataframe.PNG) 
2. S&P 500 Dataframe  
![S&P 500 Dataframe](Images/sp500_dataframe.PNG)

After changing the datatypes of the columns e.g. changing the "Date" column to a DateTime type, "Open" to float etc, we provided a quick summary of each dataset, as shown below:

1. Crypto Summary  
![Crypto Summary](Images/crypto_dataframe_summary.PNG) 
2. S&P 500 Summary  
![S&P 500 Summary](Images/sp500_dataframe_summary.PNG)

We exported both dataframes as CSV files, that we used pgAdmin to store the data in 2 tables created with respective datatypes, shown below:
1. Crypto Table  
![Crypto SQL Table](Images/crypto_sql_db.PNG) 
2. S&P 500 Table  
![S&P 500 SQL Table](Images/sp500_sql_db.PNG)

#### <ins>Questions we plan to answer with the project</ins>  
1. Using a calculated measurement like Volatility, we want to show how high or low risk the stocks are.
2. Is there any correlation based on the visualizations made between the stock market and cryptocurrencies?
3. Using a regression machine learning model, we want to predict the prices of crypto or stock in the next X time.

## Dashboard
We will utilize Tableau  to present data in the form of graphs, charts, and a narrative format, with different interactive functionality to the users to filter through.

<img width="596" alt="Screen Shot 2023-01-24 at 9 27 34 PM" src="https://user-images.githubusercontent.com/110873947/214473612-77d7185c-5ba4-40d2-a4d4-54289ff6b03c.png">

Following are some sample charts with metrics and visualizations we aim to show in our final presentation -

<img width="713" alt="Visualization - Price and Volume" src="https://user-images.githubusercontent.com/110873947/214473894-026d6f71-0ead-4423-94ba-37216b903049.png">

<img width="713" alt="Visualization - Volume and date" src="https://user-images.githubusercontent.com/110873947/214473909-ef109ee4-f32e-48e6-bdb4-a68806aab7f4.png">

![Visualization - Growth](https://user-images.githubusercontent.com/110873947/214473948-a7879e32-8e32-4e23-93a0-49e555720aa9.png)

![Visualization - Growth](https://user-images.githubusercontent.com/110873947/214473965-b2503097-e3bd-4b1d-b364-410d5be8e449.png)


## Segment 2

#### <ins>Working end to end Machine Learning Analysis</ins>  
After some exploratory work with the dataset, we decided to use the [ARIMA Machine Learning model on our datasets to predict future prices](https://github.com/fareenamughal/Group-6-Crypto/tree/main/Code/Machine%20learning). Our team made use of both Jupyter notebook and Google Colab for this project, for we use different operating systems and to focus more on the Machine Learning part of the project, than debugging libraries and different code syntaxes. We also decided to use a larger dataset with data since September 2014 for more datapoints for our model to train itself on.  

Applying the ARIMA model on each dataset, we could make predictions on the price for the following day, while splitting our training and test set to a 80/20 ratio. Below is an example of the training vs testing datasets for BTC:  

![btc-train-test](Images/BTC-test-train-chart.PNG)  

We walked through the code and ran it through Hassan, our professor, to make sure that we were not overlapping data in our price prediction and only using previous data to make the next guess. Hassan agreed with our approach, and tested it as well; our model ran with an average of 97.2% accuracy.  

![btc-actual-prediction](Images/BTC-actual-and-prediction.PNG)  

Our model did not require us to generate a confusion matrix or an accuracy score - to which Hassan and our replacement TA, Imran, confirmed. To test precision of our model, we used the Mean Squared error and the Mean Absolute Percentage Error (MAPE), as shown below.  

![btc-actual-prediction](Images/btc-model-precision.PNG) 

#### <ins>Tableau Visualizations</ins>  
After uploading our datasets on Tableau Cloud, we started adding some informative charts to add to our story-telling element of our project. 

[Here is the link again to our Tableau Workbook](https://prod-ca-a.online.tableau.com/#/site/group6crypto/workbooks/80230/views)
_please reach out to one of our group members if the link does not work for you._  

Below are some screenshots from our version 1 of our Tableau visualization:

![viz-1](https://github.com/fareenamughal/Group-6-Crypto/blob/b34e68b88b172ca17d27065bfd92686a0d0bd3e5/Images/Visualization%201%20-%20Closing%20Price%20per%20Quarter.png)

![viz-2](https://github.com/fareenamughal/Group-6-Crypto/blob/b34e68b88b172ca17d27065bfd92686a0d0bd3e5/Images/Visualization%202%20-%20Closing%20Price%20and%20Volume.png)

![viz-3](https://github.com/fareenamughal/Group-6-Crypto/blob/b34e68b88b172ca17d27065bfd92686a0d0bd3e5/Images/Visualization%203%20-%20Price%20Prediction.png)

![viz-4](https://github.com/fareenamughal/Group-6-Crypto/blob/b34e68b88b172ca17d27065bfd92686a0d0bd3e5/Images/Visualization%204%20-%20Volume%20Prediction.png)

![viz-5](https://github.com/fareenamughal/Group-6-Crypto/blob/b34e68b88b172ca17d27065bfd92686a0d0bd3e5/Images/Visualization%205%20-%20Growth.png)

## Segment 3

#### <ins>Tableau Visualizations</ins>  

[Here is the link again to our Tableau Workbook](https://public.tableau.com/views/Group-6-Crypto-rev1/Group-6-Crypto_1?:language=en-US&:display_count=n&:origin=viz_share_link)























