# parametric function 2d

ref: http://docs.juliaplots.org/latest/examples/pyplot/

![line plot](figures/parametric2d.png)

```julia
xₜ(t) = sin(t)
yₜ(t) = sin(2t)

plot(xₜ, yₜ, 0, 2π, leg=false, fill=(0,:orange))
```
