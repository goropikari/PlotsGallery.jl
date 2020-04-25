# ## Axis
# ### axis

#md # ![FILE_NAME.png](images/FILE_NAME.png)

using Measures
gr()

plot(sin, 0, 2π,
    xticks=0:0.5:2π,
    xrotation=60,
    xtickfont=font(30),
    bottom_margin=15mm)
