module PointProcessInference

using Distributions
using Optim
using Random, Statistics
using DelimitedFiles
using SpecialFunctions
using DataDeps

include("funs-ig.jl")
include("gen-extract-data.jl")

function __init__()
    registerdatadeps()
end

include("ppp.jl")

macro ggplot2()
    :(include(joinpath(dirname(pathof(PointProcessInference)), "..", "contrib", "process-output-simple.jl")))
end

end # module
