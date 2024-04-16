module CatppuccinMakieThemes

using ColorTypes
using FixedPointNumbers
using MakieCore: Theme


rgb(r,g,b) = RGB{N0f8}(r/255, g/255, b/255)

#basic:

function theme_latte()
	gridcolor = rgb(156, 160, 176) #overlay0
    Theme(
        backgroundcolor = rgb(239, 241, 245),
        textcolor = rgb(76, 79, 105),
        linecolor = rgb(172, 176, 190),
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

function theme_mocha()
	gridcolor = rgb(108, 112, 134) #overlay0
    Theme(
        backgroundcolor = rgb(30, 30, 46), #base
        textcolor = rgb(205, 214, 244), #text
        linecolor = rgb(88, 91, 112), #surface2
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

end
