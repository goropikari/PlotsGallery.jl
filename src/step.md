# Stairstep plot

![step.png](figures/step.png)

```julia
x = sin.(0:0.3:2pi)
plot(x, line=:stem, line=:steppre, markersize=20)
```
