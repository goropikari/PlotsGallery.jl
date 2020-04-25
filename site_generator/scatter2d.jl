# ## Scatter plot
# ### Scatter plot 2d

#md # ![FILE_NAME.png](images/FILE_NAME.png)

using Random
Random.seed!(2018)

n = 50
x = rand(n)
y = rand(n)
ms = rand(50) * 30
scatter(x, y, markersize=ms)
