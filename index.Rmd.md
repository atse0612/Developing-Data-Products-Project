Developing Data Products and Reproducible Research Course Project (Quantmod)
========================================================
author: Andy Tse
date: 9/8/2016
autosize: true

Introduction/Overview
========================================================

In this project, we are going to use forecast the stocks based on your choice on what you want to look at by knowing its symbol.
We are going to analyze the different trends of each stock company to determine what is the best long-term stock to do forecasting trends.

App Link: https://atse0612.shinyapps.io/stock_visualizer_with_quantmod/

Github Repo: https://github.com/atse0612/Developing-Data-Products-Project


Functionality of the App
========================================================
In this shiny app, we are going to demonstrate on how to use the stock symbols in order to gather information to gather long-term statistics.

First, type in the stock quote to gather the price of a share. If you don't know the stock symbol, look it up on any finance sites. If you type in a stock symbol that does not exist, it will generate an error message, which the plot would not display.

Second, you can have options to select the plot a y-axis on the scale, and to choose the option for the inflation adjustment price. 

Third, you can play around the dates in order to get the forecasted data for the historical information about the company. 


Getting Data on Stocks (Example)
========================================================
For this section, we are going to use the quantmod package to get information on the stock. In this slide, we are going to demonstrate the first set of data that is provided by using the head function in R.

```
[1] "GOOG"
```

```r
head(GOOG)
```

```
           GOOG.Open GOOG.High GOOG.Low GOOG.Close GOOG.Volume
2007-01-03    232.77    238.09   230.32     233.56          NA
2007-01-04    234.27    241.73   233.94     241.39          NA
2007-01-05    241.01    243.51   238.82     243.35          NA
2007-01-08    243.60    244.69   240.86     241.55          NA
2007-01-09    242.48    243.88   240.36     242.51          NA
2007-01-10    241.97    246.53   240.78     244.49          NA
```

Stock Plot (Example)
========================================================
The plot for this dataset shows the forecast of Google stock for the last 12 months in terms of the price of the stock.
![plot of chunk unnamed-chunk-3](index.Rmd-figure/unnamed-chunk-3-1.png)




