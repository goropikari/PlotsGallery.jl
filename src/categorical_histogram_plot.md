### Categorical Histogram Plot

![categorical_histogram_plot.png](images/categorical_histogram_plot.png)

https://jp.mathworks.com/matlabcentral/fileexchange/63452-matlab-plot-gallery-categorical-histogram-plot?focused=7852078&tab=example

````julia
using StatsBase, Random

Random.seed!(2018)
s = ["Poor", "Fair", "Good", "Excellent"]
data = sample(s, Weights([1,1,2,2]), 100)
datamap = countmap(data)
bar((x -> datamap[x]).(s), xticks=(1:4, s))
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

