# Plots Gallery

This site is an unofficial Plots.jl Gallery site. It is inspired by [MATLAB Plot Gallery](https://jp.mathworks.com/products/matlab/plot-gallery.html).

[jupyter notebook version](http://nbviewer.jupyter.org/github/goropikari/PlotsGallery.jl/blob/master/PlotsGallery.ipynb)

# Docker
```bash
docker build -t julia_notebook .
docker run --rm -p 8888:8888 -v $(pwd):/home/jovyan/work julia_notebook
```
