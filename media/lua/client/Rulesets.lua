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

local ripped_sheets = {
    "RippedSheets",
    "RippedSheetsDirty",
    "AlcoholRippedSheets"
}

local map_list = {
    "Map",
    "LouisvilleMap5",
    "LouisvilleMap6",
    "LouisvilleMap2",
    "LouisvilleMap3",
    "LouisvilleMap1",
    "LouisvilleMap8",
    "LouisvilleMap9",
    "LouisvilleMap7",
    "LouisvilleMap4",
    "MarchRidgeMap",
    "MuldraughMap",
    "RiversideMap",
    "RosewoodMap",
    "WestpointMap"
}

local skillbook_list = {
    "BookCarpentry1",
    "BookCarpentry2",
    "BookCarpentry3",
    "BookCarpentry4",
    "BookCarpentry5",
    "BookCooking1",
    "BookCooking2",
    "BookCooking3",
    "BookCooking4",
    "BookCooking5",
    "BookFarming1",
    "BookFarming2",
    "BookFarming3",
    "BookFarming4",
    "BookFarming5",
    "BookFirstAid1",
    "BookFirstAid2",
    "BookFirstAid3",
    "BookFirstAid4",
    "BookFirstAid5" ,
    "BookElectrician1",
    "BookElectrician2",
    "BookElectrician3",
    "BookElectrician4",
    "BookElectrician5",
    "BookMetalWelding1,",
    "BookMetalWelding2",
    "BookMetalWelding3",
    "BookMetalWelding4",
    "BookMetalWelding5",
    "BookMechanic1",
    "BookMechanic2",
    "BookMechanic3",
    "BookMechanic4",
    "BookMechanic5",
    "BookTailoring1",
    "BookTailoring2,",
    "BookTailoring3",
    "BookTailoring4",
    "BookTailoring5",
    "BookFishing1",
    "BookFishing2",
    "BookFishing3",
    "BookFishing4",
    "BookFishing5",
    "BookTrapping1",
    "BookTrapping2",
    "BookTrapping3",
    "BookTrapping4",
    "BookTrapping5",
    "BookForaging1",
    "BookForaging2",
    "BookForaging3",
    "BookForaging4",
    "BookForaging5"
}

local magazine_list = {
    "FishingMag1",
    "FishingMag2",
    "ElectronicsMag1",
    "ElectronicsMag2",
    "ElectronicsMag3",
    "ElectronicsMag4",
    "EngineerMagazine1",
    "EngineerMagazine2",
    "CookingMag1",
    "CookingMag2",
    "FarmingMag1",
    "HuntingMag1",
    "HuntingMag2",
    "HuntingMag3",
    "MetalworkMag1",
    "MetalworkMag2",
    "MetalworkMag3",
    "MetalworkMag4"
}

local function is_magazine(item) 
    local item_type = item:getType();
    for i=1, #magazine_list do
        if magazine_list[i] == item_type then
            return true;
        end
    end
    return false;
end

local function is_map(item) 
    local item_type = item:getType();
    for i=1, #map_list do
        if map_list[i] == item_type then
            return true;
        end
    end
    return false;
end

local function is_sheets(item) 
    local item_type = item:getType();
    for i=1, #ripped_sheets do
        if ripped_sheets[i] == item_type then
            return true;
        end
    end
    return false;
end

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

local function is_skillbook(item) 
    local item_type = item:getType();
    for i=1, #skillbook_list do
        if skillbook_list[i] == item_type then
            return true;
        end
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
ItemFetcher.add_ruleset("maps_list", is_map);
ItemFetcher.add_ruleset("RippedSheets", is_sheets);
ItemFetcher.add_ruleset("Hoarder", is_hoarder);
ItemFetcher.add_ruleset("CannedFood", canned_food);
ItemFetcher.add_ruleset("SkillBook", is_skillbook);
ItemFetcher.add_ruleset("Magazine", is_magazine);
