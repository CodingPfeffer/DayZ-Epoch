terminate dayz_slowCheck;
player_spawn_2 = compile preprocessFileLineNumbers "\adminmenu\player_spawn_2_custom.sqf";
dayz_slowCheck = [] spawn player_spawn_2;