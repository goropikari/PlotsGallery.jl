# horizontal bar

![line plot](figures/barhorizontal.png)

```julia
gr()
bar(1:12, orientation=:h, yticks=(1:12, 'a':'l'), yflip=true)
```
