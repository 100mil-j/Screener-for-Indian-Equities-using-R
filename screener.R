install.packages("quantmod")
install.packages("ExcelFunctionsR")
install.packages("pillar")
library(quantmod)
library(ExcelFunctionsR)
library(pillar)

#nifty auto
niftyauto <- as.data.frame(read.csv(url("https://archives.nseindia.com/content/indices/ind_niftyautolist.csv"),header=T))
niftyauto$yahoo <- CONCAT(text1 = niftyauto$Symbol,text2 = ".BO")
niftyauto$ratios <- as.data.frame(getQuote(niftyauto$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyauto <- niftyauto[-c(2:6)]

#nifty 50
nifty50 <- as.data.frame(read.csv(url("https://www1.nseindia.com/content/indices/ind_nifty50list.csv"),header=T))
nifty50$yahoo <- CONCAT(text1 = nifty50$Symbol,text2 = ".BO")
nifty50$ratios <- as.data.frame(getQuote(nifty50$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
nifty50 <- nifty50[-c(2:6)]

#nifty 500
nifty500 <- as.data.frame(read.csv(url("https://www1.nseindia.com/content/indices/ind_nifty500list.csv"),header=T))
nifty500$yahoo <- CONCAT(text1 = nifty500$Symbol,text2 = ".BO")
nifty500$ratios <- as.data.frame(getQuote(nifty500$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
nifty500 <- nifty500[-c(2:6)]

#nifty 50 midcap
nifty50midcap <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftymidcap50list.csv"),header=T))
nifty50midcap$yahoo <- CONCAT(text1 = nifty50midcap$Symbol,text2 = ".BO")
nifty50midcap$ratios <- as.data.frame(getQuote(nifty50midcap$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
nifty50midcap <- nifty50midcap[-c(2:6)]

#nifty bank
niftybank <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftybanklist.csv"),header=T))
niftybank$yahoo <- CONCAT(text1 = niftybank$Symbol,text2 = ".BO")
niftybank$ratios <- as.data.frame(getQuote(niftybank$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftybank <- niftybank[-c(2:6)]

#nifty financial services
niftyfinserv <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyfinancelist.csv"),header=T))
niftyfinserv$yahoo <- CONCAT(text1 = niftyfinserv$Symbol,text2 = ".BO")
niftyfinserv$ratios <- as.data.frame(getQuote(niftyfinserv$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyfinserv <- niftyfinserv[-c(2:6)]

#nifty it
niftyit <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyitlist.csv"),header=T))
niftyit$yahoo <- CONCAT(text1 = niftyit$Symbol,text2 = ".BO")
niftyit$ratios <- as.data.frame(getQuote(niftyit$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyit <- niftyit[-c(2:6)]

#nifty pharma
niftypharma <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftypharmalist.csv"),header=T))
niftypharma$yahoo <- CONCAT(text1 = niftypharma$Symbol,text2 = ".BO")
niftypharma$ratios <- as.data.frame(getQuote(niftypharma$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftypharma <- niftypharma[-c(2:6)]

#nifty fmcg
niftyfmcg <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyfmcglist.csv"),header=T))
niftyfmcg$yahoo <- CONCAT(text1 = niftyfmcg$Symbol,text2 = ".BO")
niftyfmcg$ratios <- as.data.frame(getQuote(niftyfmcg$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyfmcg <- niftyfmcg[-c(2:6)]

#nifty healthcare
niftyhealthcare <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyhealthcarelist.csv"),header=T))
niftyhealthcare$yahoo <- CONCAT(text1 = niftyhealthcare$Symbol,text2 = ".BO")
niftyhealthcare$ratios <- as.data.frame(getQuote(niftyhealthcare$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyhealthcare <- niftyhealthcare[-c(2:6)]

#nifty realty
niftyrealty <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyrealtylist.csv"),header=T))
niftyrealty$yahoo <- CONCAT(text1 = niftyrealty$Symbol,text2 = ".BO")
niftyrealty$ratios <- as.data.frame(getQuote(niftyrealty$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyrealty <- niftyrealty[-c(2:6)]

#nifty oil and gas
niftyoilgas <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyoilgaslist.csv"),header=T))
niftyoilgas$yahoo <- CONCAT(text1 = niftyoilgas$Symbol,text2 = ".BO")
niftyoilgas$ratios <- as.data.frame(getQuote(niftyoilgas$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyoilgas <- niftyoilgas[-c(2:6)]

#nifty metals
niftymetals <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftymetallist.csv"),header=T))
niftymetals$yahoo <- CONCAT(text1 = niftymetals$Symbol,text2 = ".BO")
niftymetals$ratios <- as.data.frame(getQuote(niftymetals$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftymetals <- niftymetals[-c(2:6)]

#nifty media
niftymedia <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftymedialist.csv"),header=T))
niftymedia$yahoo <- CONCAT(text1 = niftymedia$Symbol,text2 = ".BO")
niftymedia$ratios <- as.data.frame(getQuote(niftymedia$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftymedia <- niftymedia[-c(2:6)]

#nifty consumer durables
niftyconsdurables <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyconsumerdurableslist.csv"),header=T))
niftyconsdurables$yahoo <- CONCAT(text1 = niftyconsdurables$Symbol,text2 = ".BO")
niftyconsdurables$ratios <- as.data.frame(getQuote(niftyconsdurables$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyconsdurables <- niftyconsdurables[-c(2:6)]

#nifty energy
niftyenergy <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyenergylist.csv"),header=T))
niftyenergy$yahoo <- CONCAT(text1 = niftyenergy$Symbol,text2 = ".BO")
niftyenergy$ratios <- as.data.frame(getQuote(niftyenergy$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyenergy <- niftyenergy[-c(2:6)]

#nifty infrastructure
niftyinfra <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftyinfralist.csv"),header=T))
niftyinfra$yahoo <- CONCAT(text1 = niftyinfra$Symbol,text2 = ".BO")
niftyinfra$ratios <- as.data.frame(getQuote(niftyinfra$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftyinfra <- niftyinfra[-c(2:6)]

#nifty commodities
niftycommodities <- as.data.frame(read.csv(url("https://www.niftyindices.com/IndexConstituent/ind_niftycommoditieslist.csv"),header=T))
niftycommodities$yahoo <- CONCAT(text1 = niftycommodities$Symbol,text2 = ".BO")
niftycommodities$ratios <- as.data.frame(getQuote(niftycommodities$yahoo, what = yahooQF(c("Last Trade (Price Only)","P/E Ratio","Price/Book","Dividend Yield","Dividend/Share","Earnings/Share","Book Value","Market Capitalization"))))
niftycommodities <- niftycommodities[-c(2:6)]