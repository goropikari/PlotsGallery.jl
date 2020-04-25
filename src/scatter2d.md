## Scatter plot
### Scatter plot 2d

![scatter2d.png](images/scatter2d.png)

```julia
Random.seed!(2018)

n = 50
x = rand(n)
y = rand(n)
ms = rand(50) * 30
scatter(x, y, markersize=ms)
```

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

