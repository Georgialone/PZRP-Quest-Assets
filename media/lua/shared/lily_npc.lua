require "Scripting/MFManager"

local lily_model = {
    name = "lily_normal",
    script = "Base.FemaleFolk",
    haircut = { "Bob", {0.21960784494876862, 0.16078431904315948, 0.10588235408067703} },
    clothes = {
        { "Base.BoobTube", {0.4000000059604645, 0.4000000059604645, 0.4000000059604645} },
        "Base.Necklace_DogTag",
        "Base.Trousers_CamoGreen",
        { "Base.Shoes_Random", 1 },
        "Base.AmmoStrap_Bullets"
    }
};

table.insert(MFManager.templates, lily_model);