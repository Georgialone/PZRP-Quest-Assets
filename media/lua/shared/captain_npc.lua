require "Scripting/MFManager"

local captain_model = {
    name = "captain_normal",
    script = "Base.MaleFolk",
    beard = "BeardOnly",
    haircut = { "Bald", {0.6509804129600525, 0.6431372761726379, 0.6235294342041016} },
    clothes = {
        { "Base.Hat_Beret", {0.20000000298023224, 0.20000000298023224, 0.20000000298023224} },
        "Base.Tshirt_Profession_VeterenGreen",
        "Base.Shirt_CamoGreen",
        "Base.Trousers_CamoGreen",
        "Base.Shoes_ArmyBoots",
        "Base.Glasses_Aviators"
    }
};

table.insert(MFManager.templates, captain_model);