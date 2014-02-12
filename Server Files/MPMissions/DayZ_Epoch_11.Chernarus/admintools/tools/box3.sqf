_dayz_bpk =["DZ_LargeGunBag_EP1","DZ_Backpack_EP1"];

_items = [
"ItemTankTrap",
"2000Rnd_762x51_M134",
"100Rnd_127x99_M2",
"48Rnd_40mm_MK19",
"50Rnd_127x107_DSHKM",
"ItemBriefcase100oz",
"ItemCopperBar10oz",
"ItemGoldBar10oz",
"ItemSilverBar10oz",
"ItemTinBar10oz",
"ItemWire",
"metal_panel_kit",
"sandbag_nest_kit",
"ItemGenerator",
"ItemCorrugated",
"ItemSandbagLarge",
"CinderBlocks",
"cinder_door_kit",
"MortarBucket",
"ItemTentOld",
"ItemTentDomed",
"ItemTentDomed2",
"workbench_kit",
"wood_shack_kit",
"deer_stand_kit",
"wooden_shed_kit",
"forest_net_kit",
"forest_large_net_kit",
"light_pole_kit",
"PartWoodLumber",
"PartWoodPlywood",
"ItemWoodWallThird",
"ItemWoodWallLg",
"ItemWoodFloorQuarter",
"ItemWoodFloorHalf",
"ItemWoodFloor",
"rusty_gate_kit",
"outhouse_kit",
"storage_shed_kit",
"ItemPole",
"ItemSandbag",
"cinder_garage_kit",
"cinder_wall_kit",
"desert_large_net_kit",
"deer_stand_kit",
"fuel_pump_kit",
"desert_net_kit",
"sunshade_kit",
"m240_nest_kit",
"metal_floor_kit",
"ItemWoodWallGarageDoor",
"ItemCanvas",
"ItemComboLock",
"ItemFuelPump",
"ItemGunRackKit",
"ItemLightBulb",
"ItemLockbox",
"ItemVault",
"park_bench_kit",
"stick_fence_kit"
];

_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
abox1 = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
abox1 setDir _dir;
abox1 setposATL _pos;
	
//abox1 = "MedBox0" createVehicle (position player);
{abox1 addBackpackCargo [_x,2];} forEach _dayz_bpk;
{abox1 addMagazineCargoGlobal [_x, 50];} forEach _items;



sleep 300;

deletevehicle veh;

if (true) exitWith {};
"ItemTankTrap",
"ItemTent",
"ItemWire",
"30m_plot_kit",
"AmmoBoxSmall_556",
"AmmoBoxSmall_762",
"light_pole_kit",
"sandbag_nest_kit",
"workbench_kit",
"wood_shack_kit",
"wooden_shed_kit",
"ItemGenerator",
"ItemCorrugated",
"ItemSandbagLarge",
"CinderBlocks",
"cinder_door_kit",
"MortarBucket"
"metal_panel_kit",
"ItemGoldBar10oz",
"ItemSilverBar10oz",
"ItemTinBar10oz",
"ItemDocument",
"ItemWire",
"metal_panel_kit",
"sandbag_nest_kit",
"ItemGenerator",
"ItemCorrugated",
"ItemSandbagLarge",
"CinderBlocks",
"cinder_door_kit",
"MortarBucket",
"ItemTentOld",
"ItemTentDomed",
"ItemTentDomed2",
"workbench_kit",
"wood_shack_kit",
"deer_stand_kit",
"wooden_shed_kit",
"forest_net_kit",
"forest_large_net_kit",
"light_pole_kit",
"PartWoodLumber",
"PartWoodPlywood",
"ItemWoodWallThird",
"ItemWoodWallLg",
"ItemWoodFloorQuarter",
"ItemWoodFloorHalf",
"ItemWoodFloor",
"rusty_gate_kit",
"outhouse_kit",
"storage_shed_kit",
"ItemPole",
"ItemSandbag",
"cinder_garage_kit",
"cinder_wall_kit",
"desert_large_net_kit",
"deer_stand_kit",
"fuel_pump_kit",
"desert_net_kit",
"sunshade_kit",
"m240_nest_kit",
"metal_floor_kit",
"ItemWoodWallGarageDoor",
"ItemCanvas",
"ItemComboLock",
"ItemFuelPump",
"ItemGunRackKit",
"ItemLightBulb",
"ItemLockbox",
"ItemVault",
"park_bench_kit",
"stick_fence_kit"
];

_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
abox1 = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
abox1 setDir _dir;
abox1 setposATL _pos;
	
//abox1 = "MedBox0" createVehicle (position player);
{abox1 addBackpackCargo [_x,2];} forEach _dayz_bpk;
{abox1 addMagazineCargoGlobal [_x, 50];} forEach _items;



sleep 300;

deletevehicle veh;

if (true) exitWith {};