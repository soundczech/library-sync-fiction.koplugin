local providers = {
    grimmory = require("providers_f/grimmory"),
    bookorbit = require("providers_f/bookorbit"),
}

function providers.get(id)
    return providers[id] or providers.grimmory
end

function providers.isValid(id)
    return providers[id] ~= nil
end

return providers
