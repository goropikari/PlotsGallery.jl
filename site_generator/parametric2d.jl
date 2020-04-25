# ### parametric function plot
# http://docs.juliaplots.org/latest/examples/pyplot/

#md # ![FILE_NAME.png](images/FILE_NAME.png)

xₜ(t) = sin(t)
yₜ(t) = sin(2t)

plot(xₜ, yₜ, 0, 2π, leg=false, fill=(0,:orange))
