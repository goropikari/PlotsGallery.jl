# Contour plot

![contour.png](figures/contour.png)

```julia
f(x,y) = x^2 + y^2
x = repmat(linspace(0,2), 1, 50)
y = repmat(linspace(0,2), 1, 50)'

contour( f.(x, y) )
```
