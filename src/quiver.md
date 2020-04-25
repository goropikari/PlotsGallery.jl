## Quiver plots

![quiver.png](images/quiver.png)

```julia
n = 7
f(x,y) = 1 / hypot(x, y)
x = repeat(-3:(2*3)/n:3, 1, n) |> vec
y = repeat(-3:(2*3)/n:3, 1, n)' |> vec
vx = f.(x,y) .* cos.(atan.(y,x)) |> vec
vy = f.(x,y) .* sin.(atan.(y,x)) |> vec

quiver(x, y, quiver=(vx, vy), aspect_ratio=:equal)
```

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

