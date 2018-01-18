# Surface

![surface](figures/surface.png)

```julia
f(x,y) = x^2 + y^2
x = -10:10
y = x
surface(x, y, f)
```

```julia
# same
plot(x, y, f, linetype=:surface)
```
