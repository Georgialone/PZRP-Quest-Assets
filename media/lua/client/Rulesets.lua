require "Scripting/ItemFetcher"

local ammo_types = { 
    "308Bullets",
    "223Bullets",
    "556Bullets",
    "Bullets38",
    "Bullets44",
    "Bullets45",
    "Bullets9mm",
    "ShotgunShells"
}

local function is_ammo(item) 
    local item_type = item:getType();
    for i=1, #ammo_types do
        if ammo_types[i] == item_type then
            return true;
        end
    end
    return false;
end

ItemFetcher.add_ruleset("Ammo", is_ammo);
