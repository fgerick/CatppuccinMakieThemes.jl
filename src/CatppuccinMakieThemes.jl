module CatppuccinMakieThemes

using ColorTypes
using FixedPointNumbers
using MakieCore: Theme

struct CatppuccinColor
	RGB::RGB
	accent::Bool
end

struct CatppuccinTheme
	name::String
	colors::Dict{String, CatppuccinColor}
end

include("themes.jl")

rgb(r,g,b) = RGB{N0f8}(r/255, g/255, b/255)

#basic:

function theme(t::CatppuccinTheme)
    gridcolor = t.colors["overlay0"].RGB
    Theme(
        backgroundcolor = t.colors["base"].RGB,
        textcolor = t.colors["text"].RGB,
        linecolor = t.colors["surface2"].RGB,
        Axis = (
            backgroundcolor = :transparent,
            xgridcolor = gridcolor,
            ygridcolor = gridcolor,
            leftspinevisible = false,
            rightspinevisible = false,
            bottomspinevisible = false,
            topspinevisible = false,
            xminorticksvisible = false,
            yminorticksvisible = false,
            xticksvisible = false,
            yticksvisible = false,
            xlabelpadding = 3,
            ylabelpadding = 3
        ),
        Legend = (
            framevisible = false,
            padding = (0, 0, 0, 0),
        ),
        Axis3 = (
            xgridcolor = gridcolor,
            ygridcolor = gridcolor,
            zgridcolor = gridcolor,
            xspinesvisible = false,
            yspinesvisible = false,
            zspinesvisible = false,
            xticksvisible = false,
            yticksvisible = false,
            zticksvisible = false,
        ),
        Colorbar = (
            ticksvisible = false,
            spinewidth = 0,
            ticklabelpad = 5,
        )
    )
end

Mocha = theme(mocha)
Latte = theme(latte)
Macchiato = theme(macchiato)
Frappe = theme(frappe)

end #module
