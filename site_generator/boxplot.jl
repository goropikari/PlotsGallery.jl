# ## Box plot
# ### Box plot (1)

#md # ![FILE_NAME.png](images/FILE_NAME.png)

using StatsPlots, Statistics, Random
Random.seed!(2018)

n = 30
science = rand(1:10, n)
@show median(science)
boxplot(science, label=permutedims(["science"]))
