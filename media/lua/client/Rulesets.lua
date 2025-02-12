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

local function is_hoarder(item) 
    if item:getScriptItem():getDisplayCategory() == "Container" then
        return true;
    end
    return false;
end

local function is_vparts(item) 
    if item:getScriptItem():getDisplayCategory() == "VehicleParts" then
        return true;
    end
    return false;
end

local function is_ammo(item) 
    local item_type = item:getType();
    for i=1, #ammo_types do
        if ammo_types[i] == item_type then
            return true;
        end
    end
    return false;
end

local function canned_food(item)
    local scriptItem = item:getScriptItem();
    if scriptItem then
        if item:getStringItemType() == "CannedFood" and scriptItem:isCantEat() then
            return true;
        end
    end
    return false;
end

local function skill_book(item)
    local item_type = item:getType();
    if item_type ~= "Book" and item_type:starts_with("Book") then
        return true;
    end
    return false;
end

local function is_holsters(item)
    local item_type = item:getType();
    if item_type == 'HolsterSimple' or item_type == 'HolsterDouble' then
        return true;
    end
    return false;
end

local function is_attachments(item)
    if item:getScriptItem():getDisplayCategory() == "WeaponPart" then
        return true;
    end
    return false;
end

ItemFetcher.add_ruleset("VehicleParts", is_vparts);
ItemFetcher.add_ruleset("Attachments", is_attachments);
ItemFetcher.add_ruleset("Holsters", is_holsters);
ItemFetcher.add_ruleset("Ammo", is_ammo);
ItemFetcher.add_ruleset("Hoarder", is_hoarder);
ItemFetcher.add_ruleset("CannedFood", canned_food);
ItemFetcher.add_ruleset("SkillBook", skill_book);
