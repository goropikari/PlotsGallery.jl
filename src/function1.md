# function plot 1

![line plot](figures/function1.png)

```julia
f(x) = 5exp(-x^2)
g(x) = x^2

plot([f, g], -3, 3)
```

```julia
f(x) = 5exp(-x^2)
g(x) = x^2

plot(f)
plot!(g)
```
