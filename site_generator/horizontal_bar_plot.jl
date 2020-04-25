# ### Horizontal Bar Plot

#md # ![FILE_NAME.png](images/FILE_NAME.png)

ticklabel = string.(collect('a':'l'))
bar(1:12, orientation=:h, yticks=(1:12, ticklabel), yflip=true)
