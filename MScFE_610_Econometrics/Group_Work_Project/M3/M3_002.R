library(quantmod) 
# 1.1 Obtain Treasury yield data
t2yr = getSymbols(Symbols = "DGS2", src = "FRED", auto.assign = FALSE)
t2yr = t2yr["2019-10/2019-11"]
t2yr
plot(x = index(t2yr),
     y = t2yr$DGS2,
     xlab = "Date",
     ylab = "Yield (%)",
     type = "l",
     col = "red",
     main = "10-Year US Treasury Yields")

plot(x = index(t2yr),
     y = t2yr$DGS2,
     xlab = "Date",
     ylab = "Yield (%)",
     type = "l",
     col = "red",
     main = "10-Year US Treasury Yields")

t3yr = getSymbols(Symbols = "DGS3", src = "FRED", auto.assign = FALSE)
t3yr = t3yr["2019-10/2019-11"]
t5yr = getSymbols(Symbols = "DGS5", src = "FRED", auto.assign = FALSE)
t5yr = t5yr["2019-10/2019-11"]
t7yr = getSymbols(Symbols = "DGS7", src = "FRED", auto.assign = FALSE)
t7yr = t7yr["2019-10/2019-11"]
t10yr = getSymbols(Symbols = "DGS10", src = "FRED", auto.assign = FALSE)
t10yr = t10yr["2019-10/2019-11"]
t30yr = getSymbols(Symbols = "DGS30", src = "FRED", auto.assign = FALSE)
t30yr = t30yr["2019-10/2019-11"]
plot( x = index( t3yr ), y = t3yr$DGS3 )
plot( x = index( t5yr ), y = t5yr$DGS5 )
plot( x = index( t7yr ), y = t7yr$DGS7 )
plot( x = index( t10yr ), y = t10yr$DGS10 )
plot( x = index( t30yr ), y = t30yr$DGS30 )

# 1.2 import GLD ETF
getSymbols(Symbols = "GLD", from = "2019-09-30", to = "2019-11-30" , src = "yahoo")
GLD$GLD.Close
plot( x = index( GLD ), y = GLD$GLD.Close )

# 1.3 import my ETF
# iShares U.S. Oil & Gas Exploration & Production ETF (IEO)
getSymbols(Symbols = "IEO", from = "2019-09-30", to = "2019-11-30" , src = "yahoo")
IEO$IEO.Close
plot( x = index( IEO ), y = IEO$IEO.Close )

# 2.1 calcualte the log returns
GLD$GLD.Close
gldlog = diff( log( GLD$GLD.Close ) )
gldlog
gldlog2 = na.omit( gldlog )
gldlog2

IEO$IEO.Close
ieolog = diff( log( IEO$IEO.Close ) )
ieolog
ieolog2 = na.omit( ieolog )
ieolog2

# 3.1 calculate benchmark security average yield for Oct and Nov

t2yr = na.omit( t2yr )
t2yravr1 = mean( t2yr$DGS2["2019-10"] )
t2yravr1
t2yravr2 = mean( t2yr$DGS2["2019-11"] )
t2yravr2

t3yr = na.omit( t3yr )
t3yravr1 = mean( t3yr$DGS3["2019-10"] )
t3yravr1
t3yravr2 = mean( t3yr$DGS3["2019-11"] )
t3yravr2

t5yr = na.omit( t5yr )
t5yravr1 = mean( t5yr$DGS5["2019-10"] )
t5yravr1
t5yravr2 = mean( t5yr$DGS5["2019-11"] )
t5yravr2

t7yr = na.omit( t7yr )
t7yravr1 = mean( t7yr$DGS7["2019-10"] )
t7yravr1
t7yravr2 = mean( t7yr$DGS7["2019-11"] )
t7yravr2

t10yr = na.omit( t10yr )
t10yravr1 = mean( t10yr$DGS10["2019-10"] )
t10yravr1
t10yravr2 = mean( t10yr$DGS10["2019-11"] )
t10yravr2

t30yr = na.omit( t30yr )
t30yravr1 = mean( t30yr$DGS30["2019-10"] )
t30yravr1
t30yravr2 = mean( t30yr$DGS30["2019-11"] )
t30yravr2

# 3.2 average price of gold ETF 

gldavr1 = mean( GLD$GLD.Close["2019-10"])
gldavr1
gldavr2 = mean( GLD$GLD.Close["2019-11"])
gldavr2

# 3.3 average price of equity ETF 

ieoavr1 = mean( IEO$IEO.Close["2019-10"])
ieoavr1
ieoavr2 = mean( IEO$IEO.Close["2019-11"])
ieoavr2

# 3.4 std of benchmark security std for Oct and Nov

t2yrsd1 = sd( t2yr$DGS2["2019-10"] )
t2yrsd1
t2yrsd2 = sd( t2yr$DGS2["2019-11"] )
t2yrsd2

t3yrsd1 = sd( t3yr$DGS3["2019-10"] )
t3yrsd1
t3yrsd2 = sd( t3yr$DGS3["2019-11"] )
t3yrsd2

t5yrsd1 = sd( t5yr$DGS5["2019-10"] )
t5yrsd1
t5yrsd2 = sd( t5yr$DGS5["2019-11"] )
t5yrsd2

t7yrsd1 = sd( t7yr$DGS7["2019-10"] )
t7yrsd1
t7yrsd2 = sd( t7yr$DGS7["2019-11"] )
t7yrsd2

t10yrsd1 = sd( t10yr$DGS10["2019-10"] )
t10yrsd1
t10yrsd2 = sd( t10yr$DGS10["2019-11"] )
t10yrsd2

t30yrsd1 = sd( t30yr$DGS30["2019-10"] )
t30yrsd1
t30yrsd2 = sd( t30yr$DGS30["2019-11"] )
t30yrsd2

# 3.5 srd price of gold ETF 
gldsd1 = sd( GLD$GLD.Close["2019-10"])
gldsd1
gldsd2 = sd( GLD$GLD.Close["2019-11"])
gldsd2

# 3.6 srd price of gold ETF 

ieosd1 = sd( IEO$IEO.Close["2019-10"])
ieosd1
ieosd2 = sd( IEO$IEO.Close["2019-11"])
ieosd2

