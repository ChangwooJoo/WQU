library(quantmod) 
# 8.1 compute pearson correlation between gold and equity
getSymbols(Symbols = "GLD", from = "2019-09-30", to = "2019-11-30" , src = "yahoo")
GLD$GLD.Close
plot( x = index( GLD ), y = GLD$GLD.Close )
getSymbols(Symbols = "UKOG.L", from = "2019-09-30", to = "2019-11-30" , src = "yahoo")
UKOG.L$UKOG.L.Close
plot( x = index( UKOG.L ), y = UKOG.L$UKOG.L.Close )

gld_oct = GLD["2019-10"]
gld_oct
length( gld_oct$GLD.Close )
ukog_oct = UKOG.L["2019-10"]
length( ukog_oct$UKOG.L.Close )
cor.test(gld_oct$GLD.Close, ukog_oct$UKOG.L.Close, method=c("pearson"))


gld_nov = GLD["2019-11"]
gld_nov$GLD.Close
length( gld_nov$GLD.Close )
ukog_nov = UKOG.L["2019-11"]
ukog_nov$UKOG.L.Close
length( ukog_nov$UKOG.L.Close )
length(ukog_nov[-20,]$UKOG.L.Close)
cor.test(gld_nov$GLD.Close, ukog_nov[-20,]$UKOG.L.Close, method=c("pearson"))






