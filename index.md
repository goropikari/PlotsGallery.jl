# Julia Plots Gallery

This site is an unofficial Plots.jl Gallery site. It is inspired by [MATLAB Plot Gallery](https://jp.mathworks.com/products/matlab/plot-gallery.html).

Figures are drawed by [Plots.jl](https://github.com/JuliaPlots/Plots.jl) with GR backend except for two y axis plot.

## Environment
- Julia version 0.6.2
- Plots.jl version 0.14.2

```julia
using Plots
gr()
```

## Standard plots

|line plot (1)| line plot (2)| date time plot | function plot|
| ---- | ---- | ---- | ---- |
| ![s_line_plot1.png](src/figures/s_line_plot1.png) | ![s_line_plot2.png](src/figures/s_line_plot2.png) | ![s_datetime_plot1.png](src/figures/s_datetime_plot1.png) | ![s_function1.png](src/figures/s_function1.png) |
|[View source](src/line_plot1.md)|[View source](src/line_plot2.md)|[View source](src/datetime_plot1.md)|[View source](src/function1.md)|

<br>

|implicit function | parametric 2d | parametric 3d | 
| ---- | ---- | ---- |
| ![s_implicit.png](src/figures/s_implicit.png) | ![s_parametric2d.png](src/figures/s_parametric2d.png) | ![s_parametric3d.png](src/figures/s_parametric3d.png) | 
|[View source](src/implicit.md)|[View source](src/parametric2d.md)|[View source](src/parametric3d.md)|

<br>

| semilog x | semilog y | log-log | 
| ---- | ---- | ---- |
| ![s_semilogx.png](src/figures/s_semilogx.png) | ![s_semilogy.png](src/figures/s_semilogy.png) | ![s_loglog.png](src/figures/s_loglog.png) | 
|[View source](src/semilogx.md)| [View source](src/semilogy.md)| [View source](src/loglog.md)|

<br>

| bar side by side | stacked bar | horizontal bar| histogram |
|----|----|----|----|
| ![s_bardodge.png](src/figures/s_bardodge.png) | ![s_barstacked.png](src/figures/s_barstacked.png) | ![s_barhorizontal.png](src/figures/s_barhorizontal.png)|![histogram.png](src/figures/s_histogram.png) |
| [View source](src/bardodge.md)|[View source](src/barstacked.md)| [View source](src/barhorizontal.md)| [View source](src/histogram.md) |

<br>

| Categorical histogram plot | heatmap chart | pie | contour plot |
|----|----|----|----|
| ![categorical_histogram.png](src/figures/s_categorical_histogram.png) | ![heatmapchart.png](src/figures/s_heatmapchart.png) | ![pie.png](src/figures/s_pie.png) | ![contour.png](src/figures/s_contour.png) |
| [View source](src/Categoricalhistogramplot.md) | [View source](src/heatmapchart.md) | [View source](src/pie.md) | [View source](src/contourplot.md) |

<br>

| Function Contour plot | polar plots | rose plot | scatter plot 2d |
|----|----|----|----|
| ![fncontour.png](src/figures/s_fncontour.png) | ![polar.png](src/figures/s_polar.png) | ![rose.png](src/figures/s_rose.png) | ![scatter2d.png](src/figures/s_scatter2d.png) |
| [View source](src/rncontour.md) | [View source](src/polar.md) | [View source](src/rose.md) | [View source](src/scatter2d.md) |

<br>

| scatter plot 3d | stem plot | step plot | error bar |
|----|----|----|----|
| ![scatter3d.png](src/figures/s_scatter3d.png) | ![stem.png](src/figures/s_stem.png) | ![step.png](src/figures/s_step.png) | ![errorbar.png](src/figures/s_errorbar.png) |
| [View source](src/scatter3d.md) | [View source](src/stem.md) | [View source](src/step.md) | [View source](src/errorbar.md) |

<br>

| Two Y axis | subplot 1 | subplot 3 | subplot 3 |
|----|----|----|----|
| ![twoyaxis.png](src/figures/s_twoyaxis.png) | ![subplot1.png](src/figures/s_subplot1.png) | ![subplot2.png](src/figures/s_subplot2.png) | ![subplot3.png](src/figures/s_subplot3.png) |
| [View source](src/twoyaxis.md) | [View source](src/subplot1.md) | [View source](src/subplot2.md) | [View source](src/subplot3.md) |

<br>

| Quiver 2d | Surface | Mesh |
|----|----|----|
| ![quiver2d.png](src/figures/s_quiver2d.png) | ![surface.png](src/figures/s_surface.png) | ![mesh.png](src/figures/s_mesh.png) |
| [View source](src/quiver2d.md) | [View source](src/surface.md) | [View source](src/mesh.md) | 



## Customizing Plots

| Standard Line Colors | Standard Line Styles | Standard Plot Markers | Adding Latex to Plots |
|----|----|----|----|
| ![colorplot.png](src/figures/s_colorplot.png) | ![linestyle.png](src/figures/s_linestyle.png) | ![markertypes.png](src/figures/s_markertypes.png) | ![latex.png](src/figures/s_latex.png) |
| [View source](src/colorplot.md) | [View source](src/linestyle.md) | [View source](src/markertypes.md) | [View source](src/latex.md) |

<br>

| Axis | Font |
|----|----|
| ![colorplot.png](src/figures/s_axis.png) | ![linestyle.png](src/figures/s_font.png) |
| [View source](src/axis.md) | [View source](src/font.md) |
