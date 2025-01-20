require "Scripting/MFManager"

local nicole_model = {
    name = "nicole_normal",
    script = "Base.MaleFolk",
    beard = "Long",
    haircut = { "LongBraids02", {0.43529412150382996, 0.34117648005485535, 0.23529411852359772} },
    clothes = {
        { "Base.Tshirt_WhiteLongSleeveTINT", {0.6196078658103943, 0.5882353186607361, 0.3843137323856354} },
        "Base.Trousers_Black",
        { "Base.Shoes_Fancy", {0.20000000298023224, 0.20000000298023224, 0.20000000298023224} },
        "Base.Apron_Black"
    }
};

table.insert(MFManager.templates, nicole_model);