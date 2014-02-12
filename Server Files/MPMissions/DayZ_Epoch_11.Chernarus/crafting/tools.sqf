// parameter format, array of:
// output item, array of input items and how many of each item. Treat each input item as an array
// that includes the class name and the number required.
 
 
// PARAMETER STRUCTURE VERY IMPORTANT
// type = 0 for magazine, 1 for weapon/toolbelt
// [ [ type, "Finished Readable Item Name","FinishedItemClassName","FinishedQty" ] , [ [type, "RequiredClassName","RequiredQty"] , [type, "RequiredClassName2","RequiredQty"] ... ]]
 
 
sleep 1;
 
if (!show_tools) then {
    show_tools = true;
    _restriction = "count ((position player) nearObjects ['Land_fire', 10]) > 0";
    manatee_craft_menu_tools = [];
    manatee_craft_menu_tools set [count manatee_craft_menu_tools, player addaction [("<t color=""#FFC726"">" + ("    Hatchet") +"</t>"),"crafting\oven.sqf",[[1,"Hatchet","ItemHatchet",1],[[0,"ItemTrashRazor",4],[0,"PartWoodLumber",2]]],90,false,false,"",_restriction]];
    manatee_craft_menu_tools set [count manatee_craft_menu_tools, player addaction [("<t color=""#FFC726"">" + ("    Box of Matches") +"</t>"),"crafting\oven.sqf",[[1,"Box of Matches","ItemMatchbox",1],[[0,"ItemBandage",4],[0,"HandRoadFlare",1]]],90,false,false,"",_restriction]];
    manatee_craft_menu_tools set [count manatee_craft_menu_stools, player addaction [("<t color=""#FFC726"">" + ("    Rangefinder") +"</t>"),"crafting\oven.sqf",[[1,"Rangefinder","Binocular_Vector",1],[[1,"NVGoggles",1],[1,"ItemGPS",1],[1,"ItemMap",1],[1,"ItemCompass",1],[1,"Binocular",1]]],90,false,false,"",_restriction]];
    manatee_craft_menu_tools set [count manatee_craft_menu_tools, player addaction [("<t color=""#FFC726"">" + ("    NVGoggles") +"</t>"),"crafting\oven.sqf",[[1,"NVGoggles","NVGoggles",1],[[1,"Binocular",1],[0,"PartGeneric",2],[0,"HandChemGreen",4],[0,"ItemBandage",2]]],90,false,false,"",_restriction]];
} else {
    show_tools = false;
    {player removeAction _x;} foreach manatee_craft_menu_tools; manatee_craft_menu_tools = [];
};