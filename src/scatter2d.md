# scatter plot 2d

![scatter2d.png](figures/scatter2d.png)

```julia
srand(2018)

n = 50
x = rand(n)
y = rand(n)
ms = rand(50) * 30
scatter(x, y, markersize=ms)
```
