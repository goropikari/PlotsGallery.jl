using Literate

files = Set(readdir())
exclude_files = Set(["output", "build.jl", "notebook.jl", "index.jl", "index.md", "README.md"])
target_files = setdiff(files, exclude_files)

function replace_includes(str)
    included = target_files

    # Here the path loads the files from their proper directory,
    # which may not be the directory of the `examples.jl` file!
    path = "./"

    for ex in included
        content = read(path*ex, String)
        str = replace(str, "include(\"$(ex)\")" => content)
    end
    return str
end

function update_file_name(content, file_name)
    content = replace(content, "FILE_NAME" => file_name)
    return content
end

cp("../Project.toml", "output/Project.toml", force=true)
cp("../Manifest.toml", "output/Manifest.toml", force=true)
Literate.notebook("notebook.jl", "output", config=Dict("execute"=>false), preprocess = replace_includes, name = "PlotsGallery")
rm("output/Project.toml")
rm("output/Manifest.toml")

# Insert Table of Contents
using Pkg
Pkg.add("JSON")
import JSON
json = JSON.parsefile("output/PlotsGallery.ipynb")
cells = json["cells"]
sources = []
for cell in cells
    if cell["cell_type"] == "markdown"
        append!(sources, cell["source"])
    end
end

toc = []
for item in sources
    m = match(r"#+ [^\n]*", item)
    if !isnothing(m)
        push!(toc, m.match)
    end
end

function to_toc(item)
    h, c = match(r"(#+) ([^\n]+)", item).captures
    link = replace(c, " " => "-")
    n = length(h) - 1
    return repeat(" ", 2 * n) * "1. [$(c)](#$(link))"
end

str = join(to_toc.(toc), "\n")
str = "# Table of Contents\n" * str
toc_cell = Dict("cell_type" => "markdown", "source" => [str], "metadata" => Dict())
pushfirst!(json["cells"], toc_cell)

open("output/PlotsGallery.ipynb", "w") do f
    print(f, JSON.json(json))
end


# Generate markdown for site
for file in target_files
    Literate.markdown(file, "output/src", config=Dict("documenter"=>false),
                      preprocess = x -> update_file_name(x, splitext(file)[1]))
end

# Generate index.md
include("index.jl")

# Generate figures
ENV["GKS_ENCODING"]="utf-8" # for scientific formatter
using Plots;
gr()

for file in target_files
    include(file)
    name = splitext(file)[1] * ".png"
    OUTPUT_DIR = "output/src/images/"
    savefig(OUTPUT_DIR * name)
    run(`convert $(OUTPUT_DIR * name) -resize 30% $(OUTPUT_DIR)small_$(name)`)
end
