import Pkg; Pkg.activate(@__DIR__)

using JSON
using ColorTypes
# using Colors
using FixedPointNumbers

rgb(r,g,b) = RGB{N0f8}(r/255, g/255, b/255)

data = JSON.parsefile(joinpath(@__DIR__,"palette.json"))

struct CatppuccinColor
	RGB::RGB
	accent::Bool
end

struct CatppuccinTheme
	name::String
	colors::Dict{String, CatppuccinColor}
end

# lattecolors = data["latte"]["colors"]
function colordict(colors::Dict{String,Any})
	Dict(name=>CatppuccinColor(rgb(c["rgb"]["r"],c["rgb"]["g"],c["rgb"]["b"]),c["accent"]) for (name,c) in pairs(colors))
end

# data["latte"]
function CatppuccinTheme(data::Dict{String,Any})
	name = data["name"]
	colors = colordict(data["colors"])
	return CatppuccinTheme(name,colors)
end

open(joinpath(@__DIR__,"themes.jl"), "w") do io
	for name in keys(data)
		# println(name)
		theme = CatppuccinTheme(data[name])
		println(io, name," = ", theme)
	end
end
