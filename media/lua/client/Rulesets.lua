require "Scripting/ItemFetcher"

local function any_ammo(item)
    if item:getScriptItem():getDisplayCategory() == "Ammo" then
        return true;
    end
    return false;
end

ItemFetcher.add_ruleset("Ammo", any_ammo);