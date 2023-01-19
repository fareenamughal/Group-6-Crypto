# Group-6-Crypto
Group 6 project:

Draft 1 - Dated :- 2023.01.17


Questions -

Top 3 or 5
Historical prices
Future price prediction
Corelation with S&P 500 or any other variables?
Predicting volatility of Crypto vs S&P 500 ?
Question for the project : what should one invest in crypto (BTC, another coin) or S&P - (TBD)


Dataset -

https://www.kaggle.com/datasets/sudalairajkumar/cryptocurrency-historical-prices-coingecko?select=algorand.csv

https://finance.yahoo.com/quote/%5EGSPC/history?period1=1577836800&period2=1673913600&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true


Actions -

1. Yahoo dataset needs to be scraped.
2. Check any policy/ ethics or any disclaimers for using data from yahoo finance?
3. ERD diagram
4. Time frame for the study? how far back? and how far into the future? or a date range by user? TBD



### Meeting #2 - Date: 2023.01.18
#### Questions:
* Do we need to host the database on AWS or on PosgreSQL?

#### Notes:
* Pulling 5 years worth of data from Yahoo finance to meet the 1K rows (2015-2020 full years) from both datasets
* Columns that will be used for both tables:  
  * Date
  * Open Price
  * Volume (to round up for Bitcoin dataset)
  * Volatility (calculated column in both dataset)

#### Actions:
* Reasons why we chose selected topic.







