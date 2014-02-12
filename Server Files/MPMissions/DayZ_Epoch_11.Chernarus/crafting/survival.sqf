// parameter format, array of:
// output item, array of input items and how many of each item. Treat each input item as an array
// that includes the class name and the number required.
 
 
// PARAMETER STRUCTURE VERY IMPORTANT
// type = 0 for magazine, 1 for weapon/toolbelt
// [ [ type, "Finished Readable Item Name","FinishedItemClassName","FinishedQty" ] , [ [type, "RequiredClassName","RequiredQty"] , [type, "RequiredClassName2","RequiredQty"] ... ]]
 
 
sleep 1;
 
if (!show_survival) then {
    show_survival = true;
    _restriction = "count ((position player) nearObjects ['Land_fire', 10]) > 0";
    manatee_craft_menu_sur = [];
    manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Toiletpaper") +"</t>"),"crafting\oven.sqf",[[0,"Toiletpaper","ItemTrashToiletpaper",1],[[0,"ItemBandage",2]]],94,false,false,"",_restriction]];
	manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Bandage") +"</t>"),"crafting\oven.sqf",[[0,"Bandage","ItemBandage",1],[[0,"ItemTrashToiletpaper",4]]],94,false,false,"",_restriction]];
	manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    HeatPack") +"</t>"),"crafting\oven.sqf",[[0,"HeatPack","ItemHeatPack",1],[[0,"ItemBandage",2],[0,"HandRoadFlare",1]]],94,false,false,"",_restriction]];
    manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Splint (Morphine)") +"</t>"),"crafting\oven.sqf",[[0,"Splint (Morphine)","ItemMorphine",1],[[0,"ItemBandage",4],[0,"PartWoodPile",2]]],94,false,false,"",_restriction]];
    manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Razor") +"</t>"),"crafting\oven.sqf",[[1,"Razor","ItemTrashRazor",1],[[0,"TrashTinCan",3],[0,"TrashJackDaniels",1],[0,"ItemBandage",1]]],94,false,false,"",_restriction]];	
	manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Bloodbag") +"</t>"),"crafting\oven.sqf",[[0,"Bloodbag","ItemBloodbag",1],[[0,"ItemBandage",4],[0,"ItemTrashRazor",1],[0,"TrashTinCan",1],[0,"ItemWaterBottle",3]]],94,false,false,"",_restriction]];
	manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Epinephrine") +"</t>"),"crafting\oven.sqf",[[0,"Epinephrine","ItemEpinephrine",1],[[0,"ItemBloodbag",2],[0,"ItemSodaCoke",1]]],94,false,false,"",_restriction]];
    manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Old Camping Tent") +"</t>"),"crafting\oven.sqf",[[0,"Old Camping Tent","ItemTent",1],[[0,"ItemTankTrap",2],[0,"PartGeneric",1],[0,"Skin_Sniper1_DZ",2]]],94,false,false,"",_restriction]];
	manatee_craft_menu_sur set [count manatee_craft_menu_sur, player addaction [("<t color=""#FFC726"">" + ("    Parkbank") +"</t>"),"crafting\oven.sqf",[[0,"Parkbank","park_bench_kit",1],[[0,"PartWoodLumber",2],[0,"PartGeneric",1],[0,"PartWoodPlywood",2]]],94,false,false,"",_restriction]];
} else {
    show_survival = false;
    {player removeAction _x;} foreach manatee_craft_menu_sur; manatee_craft_menu_sur = [];
};