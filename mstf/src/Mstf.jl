
module Mstf
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/mstf_mstf.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "mstf",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-mstf.js",
    external_url = "https://unpkg.com/mstf@0.0.1/mstf/async-mstf.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-mstf.js.map",
    external_url = "https://unpkg.com/mstf@0.0.1/mstf/async-mstf.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "mstf.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "mstf.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
