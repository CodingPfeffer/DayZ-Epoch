// parameter format, array of:
// output item, array of input items and how many of each item. Treat each input item as an array
// that includes the class name and the number required.
 
 
// PARAMETER STRUCTURE VERY IMPORTANT
// type = 0 for magazine, 1 for weapon/toolbelt
// [ [ type, "Finished Readable Item Name","FinishedItemClassName","FinishedQty" ] , [ [type, "RequiredClassName","RequiredQty"] , [type, "RequiredClassName2","RequiredQty"] ... ]]
 
 
sleep 1;
 
if (!show_industrial) then {
    show_industrial = true;
    _restriction = "count ((position player) nearObjects ['Land_fire', 10]) > 0";
 
    manatee_craft_menu_ind = [];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Scrap Metal") +"</t>"),"crafting\oven.sqf",[[0,"Scrap Metal","PartGeneric",1],[[0,"TrashTinCan",12]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Tank Trap") +"</t>"),"crafting\oven.sqf",[[0,"Tank Trap","ItemTankTrap",1],[[0,"PartGeneric",4],[0,"ItemBandage",2]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Wire Kit") +"</t>"),"crafting\oven.sqf",[[0,"Wire Kit","ItemWire",1],[[0,"ItemTrashRazor",8],[0,"ItemTankTrap",2]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Windscreen") +"</t>"),"crafting\oven.sqf",[[0,"Windscreen","PartGlass",1],[[0,"TrashJackDaniels",6],[0,"PartGeneric",1],[0,"ItemBandage",1]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Wheel") +"</t>"),"crafting\oven.sqf",[[0,"Wheel","PartWheel",1],[[0,"PartGeneric",1],[0,"ItemHeatPack",3],[0,"ItemBandage",4]]],96,false,false,"",_restriction]];	
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Engine") +"</t>"),"crafting\oven.sqf",[[0,"Engine","PartEngine",1],[[0,"TrashJackDaniels",3],[0,"PartGeneric",2],[0,"ItemBandage",5],[0,"ItemJerrycan",2]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Fueltank") +"</t>"),"crafting\oven.sqf",[[0,"Fueltank","PartFueltank",1],[[0,"ItemHeatPack",3],[0,"PartGeneric",2],[0,"ItemBandage",5],[0,"ItemJerrycan",1]]],96,false,false,"",_restriction]];
    manatee_craft_menu_ind set [count manatee_craft_menu_ind, player addaction [("<t color=""#FFC726"">" + ("    Sandbag") +"</t>"),"crafting\oven.sqf",[[0,"Sandbag","ItemSandbag",1],[[0,"ItemHeatPack",3],[0,"ItemTankTrap",3],[0,"ItemBandage",5],[0,"ItemTrashToiletpaper",2]]],96,false,false,"",_restriction]];	
} else {
    show_industrial = false;
    {player removeAction _x;} foreach manatee_craft_menu_ind; manatee_craft_menu_ind = [];
};