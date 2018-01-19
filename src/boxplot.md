# Box plot

![boxplot.png](figures/boxplot.png)

```julia
using StatPlots
srand(2018)

n = 30
science = rand(1:10, n)
english = rand(1:10, n)

@show median(science)
@show median(english)

boxplot([science english], label=["science" "english"])
```
