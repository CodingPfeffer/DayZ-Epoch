// parameter format, array of:
// output item, array of input items and how many of each item. Treat each input item as an array
// that includes the class name and the number required.
 
 
// PARAMETER STRUCTURE VERY IMPORTANT
// type = 0 for magazine, 1 for weapon/toolbelt
// [ [ type, "Finished Readable Item Name","FinishedItemClassName","FinishedQty" ] , [ [type, "RequiredClassName","RequiredQty"] , [type, "RequiredClassName2","RequiredQty"] ... ]]
 
sleep 1;
 
if (!show_weapons) then {
    show_weapons = true;
    _restriction = "count ((position player) nearObjects ['Land_fire', 10]) > 0";
 
    manatee_craft_menu_wea = [];
    manatee_craft_menu_wea set [count manatee_craft_menu_wea, player addaction [("<t color=""#FFC726"">" + ("    M24 Sniper Rifle") +"</t>"),"crafting\oven.sqf",[[1,"M24 Sniper Rifle","M24",1],[[1,"huntingrifle",1],[0,"PartGeneric",4]]],92,false,false,"",_restriction]];
    manatee_craft_menu_wea set [count manatee_craft_menu_wea, player addaction [("<t color=""#FFC726"">" + ("    M24 Desert Camo") +"</t>"),"crafting\oven.sqf",[[1,"M24 Desert Camo Rifle","M24_des_EP1",1],[[1,"M24",1],[0,"Skin_Sniper1_DZ",1]]],92,false,false,"",_restriction]];
    manatee_craft_menu_wea set [count manatee_craft_menu_wea, player addaction [("<t color=""#FFC726"">" + ("    M4A1_AIM_SD_camo") +"</t>"),"crafting\oven.sqf",[[1,"M4A1_AIM_SD_camo","M4A1_AIM_SD_camo",1],[[1,"M4A1_Aim",1],[0,"Skin_Camo1_DZ",1],[0,"ItemTrashToiletpaper",4]]],92,false,false,"",_restriction]];
    manatee_craft_menu_wea set [count manatee_craft_menu_wea, player addaction [("<t color=""#FFC726"">" + ("    FN_FAL_ANPVS4") +"</t>"),"crafting\oven.sqf",[[1,"FN_FAL_ANPVS4","FN_FAL_ANPVS4",1],[[1,"FN_FAL",1],[1,"Binocular_Vector",1],[1,"NVGoggles",1]]],92,false,false,"",_restriction]];		
    manatee_craft_menu_wea set [count manatee_craft_menu_wea, player addaction [("<t color=""#FFC726"">" + ("    M40A3 Sniper Rifle") +"</t>"),"crafting\oven.sqf",[[1,"M40A3 Sniper Rifle","M40A3",1],[[1,"M24",1],[0,"Skin_Sniper1_DZ",1]]],92,false,false,"",_restriction]];
} else {
    show_weapons = false;
    {player removeAction _x;} foreach manatee_craft_menu_wea; manatee_craft_menu_wea = [];
};