# horizontal bar

![line plot](figures/barhorizontal.png)

```julia
ticklabel = string.(collect('a':'l'))
bar(1:12, orientation=:h, yticks=(1:12, ticklabel), yflip=true)
```
