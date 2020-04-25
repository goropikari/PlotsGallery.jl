# ### axis flip

#md # ![FILE_NAME.png](images/FILE_NAME.png)

plot(x->x, 0:0.01:2π,
    proj=:polar,
    xflip=true,
    yflip=true,
    ## flip=true # x,y-flip
)
