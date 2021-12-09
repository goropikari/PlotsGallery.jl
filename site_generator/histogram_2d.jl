# ### Hisogram plot 2d

#md # ![FILE_NAME.png](images/FILE_NAME.png)

x = randn(50000);
y = x * 1.2 + randn(50000);

plot(
    x,
    y,
    seriestype = :histogram2d,
    c = :vik,
    nbins = 200,
    show_empty_bins = :true
)

## equivalent
## histogram2d(
##     x,
##     y,
##     c = :vik,
##     nbins = 200,
##     show_empty_bins = :true
## )
