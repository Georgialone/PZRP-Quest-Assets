require "Scripting/MFManager"

local axel_model = {
    name = "axel_normal",
    script = "Base.MaleFolk",
    haircut = { "CentreParting", {0.8313725590705872, 0.6705882549285889, 0.2705882489681244} },
    clothes = {
        { "Base.Boilersuit_BlueRed", 0 },
        { "Base.Shoes_TrainerTINT", {0.3607843220233917, 0.250980406999588, 0.14509804546833038} }
    }
};

table.insert(MFManager.templates, axel_model);