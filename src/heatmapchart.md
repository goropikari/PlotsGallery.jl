# heatmap chart

![heatmapchart.png](figures/heatmapchart.png)

```julia
srand(2018)

a = rand(5,5)
xlabel = 'A':'E'
ylabel = 'a':'e'
heatmap(a, xticks=(1:5, xlabel), yticks=(1:5, ylabel), 
    fill_z=a, aspect_ratio=:equal)

fontsize = 15
nrow, ncol = size(a)
ann = [(i,j, text(round(a[i,j], 2), fontsize, :white, :center)) 
            for i in 1:nrow for j in 1:ncol]
annotate!(ann, linecolor=:white)
```

```julia
julia> round.(rotl90(a), 2)
  5×5 Array{Float64,2}:
   0.01  0.5   0.6   0.44  0.38
   0.25  0.16  0.28  0.41  0.54
   0.36  0.26  0.97  0.97  0.35
   0.68  0.15  0.61  0.98  0.76
   0.65  0.11  0.72  0.72  0.26
```
