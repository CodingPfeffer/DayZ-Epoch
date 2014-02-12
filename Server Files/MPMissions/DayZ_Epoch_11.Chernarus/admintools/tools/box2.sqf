

_dayz_bpk =["DZ_LargeGunBag_EP1","DZ_Backpack_EP1"];

_inventory = [
"Binocular",
"Binocular_Vector",
"ItemCompass",
"ItemEtool",
"ItemFlashlight",
"ItemFlashlightRed",
"ItemGPS",
"ItemHatchet",
"ItemKnife",
"ItemMap",
"ItemMatchbox",
"ItemRadio",
"ItemToolbox",
"ItemWatch",
"Laserdesignator",
"NVGoggles"
];

_items = [
"ItemTankTrap",
"ItemTent",
"ItemWire",
"metal_panel_kit",
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
"MortarBucket",
"ItemTopaz",
"ItemCitrine",
"ItemAmethyst",
"ItemEmerald",
"ItemObsidian",
"ItemRuby"
];

_skins = [
"Skin_Soldier_Bodyguard_AA12_PMC_DZ",
"Skin_Graves_Light_DZ",
"Skin_CZ_Soldier_Sniper_EP1_DZ",
"Skin_FR_Rodriguez_DZ",
"Skin_FR_OHara_DZ",
"Skin_Soldier_Sniper_PMC_DZ",
"Skin_Drake_Light_DZ",
"Skin_CZ_Special_Forces_GL_DES_EP1_DZ",
"Skin_BanditW2_DZ",
"Skin_BanditW1_DZ",
"Skin_TK_INS_Warlord_EP1_DZ",
"Skin_TK_INS_Soldier_EP1_DZ",
"Skin_Ins_Soldier_GL_DZ",
"Skin_Bandit2_DZ",
"Skin_Bandit1_DZ",
"Skin_Rocker4_DZ",
"Skin_Rocker3_DZ",
"Skin_Rocker1_DZ",
"Skin_SurvivorWdesert_DZ",
"Skin_SurvivorWcombat_DZ",
"Skin_SurvivorWcombat_DZ",
"Skin_SurvivorWurban_DZ",
"Skin_SurvivorWpink_DZ",
"Skin_Priest_DZ",
"Skin_Haris_Press_EP1_DZ",
"Skin_Functionary1_EP1_DZ",
"Skin_Rocker2_DZ"
];


_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
abox1 = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
abox1 setDir _dir;
abox1 setposATL _pos;
	
//abox1 = "MedBox0" createVehicle (position player);
{abox1 addWeaponCargoGlobal [_x,20];} forEach _dayz_wep;
{abox1 addMagazineCargoGlobal [_x,200];} forEach _dayz_mag;


{abox1 addBackpackCargo [_x,5];} forEach _dayz_bpk;
{abox1 addWeaponCargoGlobal [_x, 5];} forEach _inventory;
{abox1 addMagazineCargoGlobal [_x, 50];} forEach _items;
{abox1 addMagazineCargoGlobal [_x, 5];} forEach _skins;


sleep 300;

deletevehicle veh;

if (true) exitWith {};