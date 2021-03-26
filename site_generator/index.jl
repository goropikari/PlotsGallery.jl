using TOML
pkgs = TOML.parsefile("../Manifest.toml")

pkg_ver(pkg) = pkgs[pkg][1]["version"]

fp = open("output/index.md", "w")
header = """# Plots Gallery

This site is an unofficial Plots.jl Gallery site. It is inspired by [MATLAB Plot Gallery](https://jp.mathworks.com/products/matlab/plot-gallery.html).

Figures are ploted by [Plots.jl](https://github.com/JuliaPlots/Plots.jl).

"""

print(fp, header)
print(fp,
"""## Tested Environment
- Julia $(string(VERSION))
- Plots $(pkg_ver("Plots"))
- PyPlot $(pkg_ver("PyPlot"))
- GR $(pkg_ver("GR"))

""")



println(fp, """
For all plots, you should import Plots.
```julia
using Plots
```

""")

function list_plots()
    str = String(read("notebook.jl"))
    arr = []
    rx = r"include\(\"(.+)\.jl\"\)"
    offset = 1
    while (m = match(rx, str, offset)) != nothing
        filename = m.captures[1]
        push!(arr, filename)
        offset = m.offset + length(filename)
    end

    titles = copy(arr)
    for (i, name) in enumerate(arr)
        titles[i] = titlecase(replace(name, "_" => " "))
    end
    return arr, titles
end

function seperate(items, n)
    arr = []
    subarr = []
    cnt = 0
    for item in items
        cnt += 1
        push!(subarr, item)
        if cnt % n == 0
            push!(arr, subarr)
            subarr = []
        end
    end
    !isempty(subarr) && push!(arr, subarr)
    return arr
end

n = 4
filenames, titles = list_plots()
filenames_jagged = seperate(filenames, n)
titles_jagged = seperate(titles, n)

for (files_item, titles_item) in zip(filenames_jagged, titles_jagged)
    len = length(files_item)
    print(fp, "| ")
    for title in titles_item
        print(fp, " $(title) |")
    end
    println(fp)

    print(fp, "| ")
    for i in 1:len
        print(fp, " ---- |")
    end
    println(fp)

    print(fp, "| ")
    for name in files_item
        print(fp, "![small_$(name).png](src/images/small_$(name).png) |")
    end
    println(fp)

    print(fp, "| ")
    for name in files_item
        print(fp, "[View source](src/$(name).md) |")
    end
    println(fp, "\n\n<br>\n")
end

close(fp)
