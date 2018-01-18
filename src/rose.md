# Rose plot

![rose.png](figures/rose.png)

```julia
srand(2018)

n = 24
R = rand(n+1)
θ = 0:2pi/n:2pi
plot(θ, R, proj=:polar, line=:steppre, lims=(0:2))
```
