import Pkg; Pkg.activate(joinpath(@__DIR__,".."))

using JSON
using ColorTypes
using Colors
using FixedPointNumbers

rgb(r,g,b) = RGB{N0f8}(r/255, g/255, b/255)

data = JSON.parsefile("src/palette.json")

struct CatppuccinColor
	HSL::HSL
	accent::Bool
end

struct CatppuccinTheme
	name::String
	colors::Dict{String, CatppuccinColor}
end

# lattecolors = data["latte"]["colors"]
function colordict(colors::Dict{String,Any})
	Dict(name=>CatppuccinColor(HSL(c["hsl"]["h"],c["hsl"]["s"],c["hsl"]["l"]),c["accent"]) for (name,c) in pairs(colors))
end

# data["latte"]
function CatppuccinTheme(data::Dict{String,Any})
	name = data["name"]
	colors = colordict(data["colors"])
	return CatppuccinTheme(name,colors)
end

t = CatppuccinTheme(data["mocha"])

RGB([data["latte"]["colors"]["mauve"]["rgb"][rgb] for rgb in ("r","g","b")]...)
convert(RGB,t.colors["mauve"].HSL)
hex(t.colors["mauve"].HSL)
data["latte"]["colors"]["mauve"]["hex"]