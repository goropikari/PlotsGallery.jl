# Two Y axis


![twoyaxis](figures/twoyaxis.png)

```julia
pyplot()
using Measures

srand(2018)
plot(randn(100), ylabel="y1", leg=:topright)
plot!(twinx(), randn(100)*10, 
    c=:red, 
    ylabel="y2", 
    leg=:bottomright,
    size=(600, 400))
plot!(right_bottom=10mm)
```
