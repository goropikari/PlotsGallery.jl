# ### Aspect ratio

#md # ![FILE_NAME.png](images/FILE_NAME.png)

s = bitrand(10, 10)
heatmap(s,
        aspect_ratio=:equal,
        c=:blues,
        colorbar=false)
