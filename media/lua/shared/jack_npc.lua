require "Scripting/MFManager"

local jack_model = {
    name = "jack_normal",
    script = "Base.MaleFolk",
    haircut = { "CentreParting", {0.8313725590705872, 0.6705882549285889, 0.2705882489681244} },
    clothes = {
        "Base.Hat_BaseballCapRed",
        "Base.Shirt_FormalWhite",
        "Base.Trousers_NavyBlue",
        "Shoes_ArmyBootsDesert"
    }
};

table.insert(MFManager.templates, jack_model);