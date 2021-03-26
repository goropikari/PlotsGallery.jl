using InteractiveUtils
versioninfo()
#-
using Pkg
Pkg.activate(".")

#-
## Pkg.update()

#-
Pkg.instantiate()

#-
Pkg.precompile()

#-
Pkg.status()

#-
ENV["GKS_ENCODING"]="utf-8" # for scientific formatter
using Plots;
## pyplot()
gr()

# # Standard Plots

include("line_plot_2d_1.jl")
include("line_plot_2d_2.jl")
include("datetime_plot.jl")

include("simple_fn.jl")
include("parametric2d.jl")
include("parametric3d.jl")

include("semilogy.jl")
include("semilogx.jl")
include("loglog.jl")

include("vertical_bar_plot.jl")
include("stacked_bar_plot.jl")
include("horizontal_bar_plot.jl")

include("histogram_plot.jl")
include("categorical_histogram_plot.jl")

include("boxplot.jl")
include("boxplot2.jl")

include("heatmap.jl")

include("pie.jl")

include("contour_plot.jl")
include("fn_contour_plot.jl")
include("polar.jl")
include("rose.jl")
include("scatter2d.jl")
include("scatter3d.jl")
include("stem.jl")
include("stairstep.jl")
include("error_bar.jl")
include("two_y_axis.jl")
include("subplot1.jl")
include("subplot2.jl")
include("subplot3.jl")
include("quiver.jl")
include("surface.jl")
include("surface2.jl")
include("surface3.jl")

# # Customizing plots
include("standard_line_colors.jl")
include("line_style.jl")
include("latex1.jl")
include("latex2.jl")
include("axis.jl")
include("no_axis.jl")
include("ticks.jl")
include("formatter.jl")
include("axis_range.jl")
include("aspect_ratio.jl")
include("axis_flip.jl")
include("font.jl")
