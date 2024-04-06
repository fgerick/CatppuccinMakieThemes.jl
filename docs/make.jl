using CatppuccinMakieThemes
using Documenter

DocMeta.setdocmeta!(CatppuccinMakieThemes, :DocTestSetup, :(using CatppuccinMakieThemes); recursive=true)

makedocs(;
    modules=[CatppuccinMakieThemes],
    authors="Felix <felixgerick@gmail.com> and contributors",
    sitename="CatppuccinMakieThemes.jl",
    format=Documenter.HTML(;
        canonical="https://fgerick.github.io/CatppuccinMakieThemes.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fgerick/CatppuccinMakieThemes.jl",
    devbranch="main",
)
