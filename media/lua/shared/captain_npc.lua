require "Scripting/MFManager"

local captain_model = {
    name = "captain_normal",
    script = "Base.MaleFolk",
    beard = "Long",
    haircut = { "LeftParting", {0.10588235408067703, 0.09019608050584793, 0.08627451211214066} },
    clothes = {
        { "Base.Tshirt_DefaultTEXTURE_TINT", {0.3607843220233917, 0.14509804546833038, 0.14509804546833038} },
        { "Base.Trousers_Denim", 0 },
        { "Base.Shoes_TrainerTINT", {0.3607843220233917, 0.250980406999588, 0.14509804546833038} }
    }
};

table.insert(MFManager.templates, captain_model);