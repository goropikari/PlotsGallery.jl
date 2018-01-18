# scatter plot 3d

![scatter3d.png](figures/scatter3d.png)

```julia
srand(2018)

n = 50
x = rand(n)
y = rand(n)
z = rand(n)
ms = rand(50) * 30
scatter(x, y, z, markersize=ms)
```
