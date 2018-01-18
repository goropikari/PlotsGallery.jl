# implicit function

![line plot](figures/implicit.png)

```julia
# Pkg.add("ImplicitEquations")
using ImplicitEquations

f(x,y) = x^2 + y^2 - 3x
plot(f ⩵ 0, aspect_ratio=:equal)  # \Equal[tab]
```
