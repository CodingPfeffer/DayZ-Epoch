_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtoshields = "admintools\shields\";
_pathtovehicles = "admintools\vehicles\";
_pathtobuildings = "admintools\buildings\";
_pathtoitems = "admintools\items\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoshields+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtobuildings+'%1"';
_EXECscript7 = 'player execVM "'+_pathtoitems+'%1"';
//customise these menus to fit your server
	if ((getPlayerUID player) in ["UID"]) then { 
		adminmenu =
		[
			["",true],
				//["Adminmenu", [2],  "", -5, [["expression", format[_EXECscript1,"start2.sqf"]]], "1", "1"],
				["Spawn Menu", [3], "#USER:SpawnMenu", -5, [["expression", ""]], "1", "1"],
				["Tools", [4], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["God Mode", [5],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
				["Car God", [6],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
				["Map Teleport", [7],  "", -5, [["expression", format[_EXECscript1,"adminmap.sqf"]]], "1", "1"],
				["Fun Menu", [7],  "#USER:FunMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};

//customise to fit
SpawnMenu =
[
	["",true],
		["",true],
		["Skins Menu", [2], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
		["Gear Menu", [3], "#USER:GearMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicle Menu", [4], "#USER:VehiclemainMenu", -5, [["expression", ""]], "1", "1"],
		["Spawn Vehicles With Keys", [5], "#USER:VehiclemainMenu2", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

FunMenu =
[
	["",true],
		["",true],
		["Skins Menu", [2], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
		["Gear Menu", [3], "#USER:GearMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicle Menu", [4], "#USER:VehiclemainMenu", -5, [["expression", ""]], "1", "1"],
		["Spawn Vehicles With Keys", [5], "#USER:VehiclemainMenu2", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

//Tools menu
AdminToolsMenu =
[
	["",true],
		//["Admin Map", [2],  "", -5, [["expression", format[_EXECscript1,"DMdzesp.sqf"]]], "1", "1"],
		["Heal Player(s)", [3],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Look-N-Repair", [4],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Spectate Player", [5],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [6], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		//["deleteVehicle", [7], "", -5, [["expression", format[_EXECscript1, "deleteVehicle.sqf"]]], "1", "1"],
		["SpeedHack Shift", [7], "", -5, [["expression", format[_EXECscript1, "speedhack.sqf"]]], "1", "1"],
		["Flip Vehicle", [8],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		//["Base Destruction", [11], "#USER:BaseDestructionMenu", -5, [["expression", ""]], "1", "1"],
		["Next page", [9], "#USER:AdminToolsMenu2", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [10], "", -3, [["expression", ""]], "1", "1"]
];
AdminToolsMenu2 =
[
	["",true],
		//["Get key", [2],  "", -5, [["expression", format[_EXECscript1,"key.sqf"]]], "1", "1"],
		//["Get Code", [2],  "", -5, [["expression", format[_EXECscript1,"code.sqf"]]], "1", "1"],
		["Minigun", [4],  "", -5, [["expression", format[_EXECscript1,"minigun.sqf"]]], "1", "1"],
		["deleteVehicle", [5], "", -5, [["expression", format[_EXECscript1, "deleteVehicle.sqf"]]], "1", "1"],
		["Base Destruction", [6], "#USER:BaseDestructionMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehiclemainMenu =
[
	["",true],
		["Spawn Car", [2], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
		["Spawn Militär Cars", [3], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],
		["Spawn Helis", [4], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
		["ATV/Bike/...", [5], "#USER:VehicleMenu6", -5, [["expression", ""]], "1", "1"],
		["Trucks", [6], "#USER:VehicleMenu9", -5, [["expression", ""]], "1", "1"],
		["Planes", [7], "#USER:VehicleMenu7", -5, [["expression", ""]], "1", "1"],
		["Boats", [8], "#USER:VehicleMenu8", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehiclemainMenu2 =
[
	["",true],
		["Car", [2], "#USER:HiveVehicles1", -5, [["expression", ""]], "1", "1"],
		["Militär Cars", [3], "#USER:HiveVehicles2", -5, [["expression", ""]], "1", "1"],
		["Helis", [4], "#USER:HiveVehicles3", -5, [["expression", ""]], "1", "1"],
		["ATV/Bike/...", [5], "#USER:HiveVehicles4", -5, [["expression", ""]], "1", "1"],
		["Trucks", [6], "#USER:HiveVehicles5", -5, [["expression", ""]], "1", "1"],
		["Planes", [7], "#USER:HiveVehicles6", -5, [["expression", ""]], "1", "1"],
		["Boats", [8], "#USER:HiveVehicles7", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu =
[
	["",true],
		["Hero", [2],  "", -5, [["expression", format[_EXECscript2,"Hero.sqf"]]], "1", "1"],
		["Camo", [3],  "", -5, [["expression", format[_EXECscript2,"Camo.sqf"]]], "1", "1"],
		["Ghillie", [4],  "", -5, [["expression", format[_EXECscript2,"Ghille.sqf"]]], "1", "1"],
		["Suvivor", [5],  "", -5, [["expression", format[_EXECscript2,"Male.sqf"]]], "1", "1"],
		["Soldier", [6],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],
		["invisible", [7],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
GearMenu =
[
	["",true],
		["Weapon Kits", [2], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
		["Box Dayz", [3],  "", -5, [["expression", format[_EXECscript1,"box.sqf"]]], "1", "1"],
		["Box Epoch", [4],  "", -5, [["expression", format[_EXECscript1,"box2.sqf"]]], "1", "1"],
		["Bulding Box", [5],  "", -5, [["expression", format[_EXECscript1,"box3.sqf"]]], "1", "1"],
		["Building Menu", [6], "#USER:BuildingMenu", -5, [["expression", ""]], "1", "1"],
		["Items Menu", [7], "#USER:ItemMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["",true],
		["No Weapons", [2],  "", -5, [["expression", format[_EXECscript3,"items.sqf"]]], "1", "1"],
		["M4 Holo", [3],  "", -5, [["expression", format[_EXECscript3,"itemz.sqf"]]], "1", "1"],
		["M4 CCO SD", [4],  "", -5, [["expression", format[_EXECscript3,"itemz2.sqf"]]], "1", "1"],
		["Stadt-Bauer", [5],  "", -5, [["expression", format[_EXECscript3,"itemz3.sqf"]]], "1", "1"],
		["FN FAL", [6],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
		["Basen-Bauer", [7],  "", -5, [["expression", format[_EXECscript3,"itemz5.sqf"]]], "1", "1"],
		["Baumarkt", [8],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
		["Holzfäller", [9],  "", -5, [["expression", format[_EXECscript3,"item7.sqf"]]], "1", "1"],
		["Gold AK", [10],  "", -5, [["expression", format[_EXECscript3,"item8.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 =
[
	["",true],
		["Aks Kobra", [2],  "", -5, [["expression", format[_EXECscript3,"item9.sqf"]]], "1", "1"],
		[".338 LAPUA", [3],  "", -5, [["expression", format[_EXECscript3,"item10.sqf"]]], "1", "1"],
		["DMR", [4],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
		["M4A1 HWS GL SD Camo", [5],  "", -5, [["expression", format[_EXECscript3,"item12.sqf"]]], "1", "1"],
		["M14 Aim", [6],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
		["Alice", [7],  "", -5, [["expression", format[_EXECscript3,"bp2.sqf"]]], "1", "1"],
		["Coyote", [8],  "", -5, [["expression", format[_EXECscript3,"bp1.sqf"]]], "1", "1"],
		["Delete gear", [9],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:WeaponMenu3", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//extra menu for custom kits remove "//" from lines below to use
WeaponMenu3 =
[
	["",true],
			//["", [2],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [3],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [4],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [5],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [6],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [7],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [8],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [9],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ShieldMenu =
[
	["",true],
		["Zombie Shield", [2],  "", -5, [["expression", format[_EXECscript4,"zombieshield.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];



BaseDestructionMenu =
[
	["",true],
		["Set Center", [2], "", -5, [["expression", '["center"] execVM "admintools\tools\basedestruction.sqf"']], "1", "1"],
		["Set Radius", [3], "", -5, [["expression", '["radius"] execVM "admintools\tools\basedestruction.sqf"']], "1", "1"],
		["Show Dome", [4], "", -5, [["expression", '["dome"] execVM "admintools\tools\basedestruction.sqf"']], "1", "1"],
		[format["Include Vehicles (%1)",BD_vehicles], [5], "", -5, [["expression", "BD_vehicles = !BD_vehicles;"]], "1", "1"],
		["DESTROY ALL INSIDE DOME", [6], "", -5, [["expression", '["destroy"] execVM "admintools\tools\basedestruction.sqf"']], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles1 =
[
	["",true],
		["SUV Charcoal", [1],  "", -5, [["expression", format[_EXECscript5,"hiveCharcoalSUV.sqf"]]], "1", "1"],
		["SUV Pink", [2],  "", -5, [["expression", format[_EXECscript5,"hiveSUV_Pink.sqf"]]], "1", "1"],      
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles2 =
[
	["",true],
		["HMMV m2", [2],  "", -5, [["expression", format[_EXECscript5,"hiveHMMVm2.sqf"]]], "1", "1"],
		["Armed SUV", [3],  "", -5, [["expression", format[_EXECscript5,"hiveArmedSUV.sqf"]]], "1", "1"],
		["M1A2_US_TUSK_MG_EP1", [4],  "", -5, [["expression", format[_EXECscript5,"hiveM1A2_US_TUSK_MG_EP1.sqf"]]], "1", "1"],
		["HMMWV_MK19_DES_EP1", [5],  "", -5, [["expression", format[_EXECscript5,"hiveHMMWV_MK19_DES_EP1.sqf"]]], "1", "1"],
		["BRDM2_TK_GUE_EP1", [6],  "", -5, [["expression", format[_EXECscript5,"hiveBRDM2_TK_GUE_EP1.sqf"]]], "1", "1"],
		["LandRover_Special_CZ_EP1_DZE", [7],  "", -5, [["expression", format[_EXECscript5,"hiveLandRover_Special_CZ_EP1_DZE.sqf"]]], "1", "1"],
		["BRDM2_TK_EP1", [8],  "", -5, [["expression", format[_EXECscript5,"hiveBRDM2_TK_EP1.sqf"]]], "1", "1"],
		["BTR60_TK_EP1", [9],  "", -5, [["expression", format[_EXECscript5,"hiveBTR60_TK_EP1.sqf"]]], "1", "1"],
		["BTR40_MG_TK_INS_EP1", [10],  "", -5, [["expression", format[_EXECscript5,"hiveBTR40_MG_TK_INS_EP1.sqf"]]], "1", "1"],
		["AAV", [11],  "", -5, [["expression", format[_EXECscript5,"hiveAAV.sqf"]]], "1", "1"],
		["BTR90", [12],  "", -5, [["expression", format[_EXECscript5,"hiveBTR90.sqf"]]], "1", "1"],
		["GAZ_Vodnik_HMG", [13],  "", -5, [["expression", format[_EXECscript5,"hiveGAZ_Vodnik_HMG.sqf"]]], "1", "1"],
		["2S6M_Tunguska", [14],  "", -5, [["expression", format[_EXECscript5,"hive2S6M_Tunguska.sqf"]]], "1", "1"],
		["M2A3_EP1", [14],  "", -5, [["expression", format[_EXECscript5,"hiveM2A3_EP1.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles3 =
[
	["",true],
		["MI17", [2],  "", -5, [["expression", format[_EXECscript5,"hiveMI17civ.sqf"]]], "1", "1"],
		["UH60", [3],  "", -5, [["expression", format[_EXECscript5,"hiveUH60.sqf"]]], "1", "1"],
		["UH1Y", [4],  "", -5, [["expression", format[_EXECscript5,"hiveUH1Y.sqf"]]], "1", "1"],
		["Merlin", [5],  "", -5, [["expression", format[_EXECscript5,"hiveMerlin.sqf"]]], "1", "1"],
		["Bird", [6],  "", -5, [["expression", format[_EXECscript5,"hivebird.sqf"]]], "1", "1"],
		["Chinook", [7],  "", -5, [["expression", format[_EXECscript5,"hivechinook.sqf"]]], "1", "1"],
		["Osprey", [8],  "", -5, [["expression", format[_EXECscript5,"hivemv22.sqf"]]], "1", "1"],
		["AH64D_EP1", [9],  "", -5, [["expression", format[_EXECscript5,"AH64D_EP1.sqf"]]], "1", "1"],
		["AV8B2", [10],  "", -5, [["expression", format[_EXECscript5,"hiveAV8B2.sqf"]]], "1", "1"],
		["UH1Y_DZE", [11],  "", -5, [["expression", format[_EXECscript5,"hiveUH1Y_DZE.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles4 =
[
	["",true],
		["Osprey", [2],  "", -5, [["expression", format[_EXECscript5,"hivemv22.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles5 =
[
	["",true],
		["Osprey", [2],  "", -5, [["expression", format[_EXECscript5,"hivemv22.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

HiveVehicles6 =
[
	["",true],
		["Osprey", [2],  "", -5, [["expression", format[_EXECscript5,"hivemv22.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
HiveVehicles7 =
[
	["",true],
		["Osprey", [2],  "", -5, [["expression", format[_EXECscript5,"hivemv22.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//Autos
VehicleMenu = 
[
	["",true],	
		["Sedan", [2],  "", -5, [["expression", format[_EXECscript5,"sedan.sqf"]]], "1", "1"],
		["SUV", [3],  "", -5, [["expression", format[_EXECscript5,"SUV.sqf"]]], "1", "1"],
		["Taxi", [4],  "", -5, [["expression", format[_EXECscript5,"taxi.sqf"]]], "1", "1"],
		["Tour Car", [5],  "", -5, [["expression", format[_EXECscript5,"tourcar.sqf"]]], "1", "1"],
		["VW Golf", [6],  "", -5, [["expression", format[_EXECscript5,"miniHB.sqf"]]], "1", "1"],
		["KA60 Namal", [7],  "", -5, [["expression", format[_EXECscript5,"KA60_namalsk.sqf"]]], "1", "1"],
		["Red Lada", [8],  "", -5, [["expression", format[_EXECscript5,"ladared.sqf"]]], "1", "1"],
		["White Lada", [9],  "", -5, [["expression", format[_EXECscript5,"Ladawhite.sqf"]]], "1", "1"],
		["Pickup Tubeframe", [10],  "", -5, [["expression", format[_EXECscript5,"tubeframe.sqf"]]], "1", "1"],
		["2S6M_Tunguska", [10],  "", -5, [["expression", format[_EXECscript5,"2S6M_Tunguska.sqf"]]], "1", "1"],
		["MTVR", [10],  "", -5, [["expression", format[_EXECscript5,"hiveMTVR.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 =
[
["",true],
		["Offroad", [2],  "", -5, [["expression", format[_EXECscript5,"Offroad.sqf"]]], "1", "1"],
		["Offroad 2", [3],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_d.sqf"]]], "1", "1"],
		["Offroad 3", [4],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_w"]]], "1", "1"],
		["Red Offroad", [5],  "", -5, [["expression", format[_EXECscript5,"offroadRed.sqf"]]], "1", "1"],
		["Offroad Saffari", [6],  "", -5, [["expression", format[_EXECscript5,"offroadSaffari.sqf"]]], "1", "1"],
		["Offroad Tan", [7],  "", -5, [["expression", format[_EXECscript5,"offroadTan.sqf"]]], "1", "1"],
		["Bus", [8],  "", -5, [["expression", format[_EXECscript5,"bus.sqf"]]], "1", "1"],
		["Gaz", [9],  "", -5, [["expression", format[_EXECscript5,"Gaz.sqf"]]], "1", "1"],
		["Tractor 2", [10],  "", -5, [["expression", format[_EXECscript5,"Tractor.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]

];

//Militär autos
VehicleMenu3 =
[
["",true],
		["Tank", [2],  "", -5, [["expression", format[_EXECscript5,"tank.sqf"]]], "1", "1"],
		["Tank Fallu", [3],  "", -5, [["expression", format[_EXECscript5,"TANKfall.sqf"]]], "1", "1"],
		["Tank Namal", [4],  "", -5, [["expression", format[_EXECscript5,"TANKnam.sqf"]]], "1", "1"],
		["Mill Offroad", [5],  "", -5, [["expression", format[_EXECscript5,"militrayOffroad.sqf"]]], "1", "1"],
		["Ural", [6],  "", -5, [["expression", format[_EXECscript5,"Ural.sqf"]]], "1", "1"],
		["MTVR fors", [7],  "", -5, [["expression", format[_EXECscript5,"MTVRf.sqf"]]], "1", "1"],
		["MTVR des", [8],  "", -5, [["expression", format[_EXECscript5,"MTVR.sqf"]]], "1", "1"],
		["HMMV fors", [9],  "", -5, [["expression", format[_EXECscript5,"HMMV.sqf"]]], "1", "1"],
		["HMMV des", [10],  "", -5, [["expression", format[_EXECscript5,"HMMV_Fallu.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Helis
VehicleMenu4 =
[
["",true],
		["MH6J", [2],  "", -5, [["expression", format[_EXECscript5,"MH6J.sqf"]]], "1", "1"],
		["Little Bird", [3],  "", -5, [["expression", format[_EXECscript5,"littleBird.sqf"]]], "1", "1"],
		["MI17", [4],  "", -5, [["expression", format[_EXECscript5,"MI17civ.sqf"]]], "1", "1"],
		["MH60S", [5],  "", -5, [["expression", format[_EXECscript5,"FISH.sqf"]]], "1", "1"],
		["Chinook", [6],  "", -5, [["expression", format[_EXECscript5,"chinook.sqf"]]], "1", "1"],
		["Apache", [7],  "", -5, [["expression", format[_EXECscript5,"APACHE.sqf"]]], "1", "1"],
		["Little Bird", [8],  "", -5, [["expression", format[_EXECscript5,"AH64.sqf"]]], "1", "1"],
		["MI24", [9],  "", -5, [["expression", format[_EXECscript5,"MI24.sqf"]]], "1", "1"],
		["UH60", [10],  "", -5, [["expression", format[_EXECscript5,"UH60.sqf"]]], "1", "1"],
		["UH1H camo", [11],  "", -5, [["expression", format[_EXECscript5,"UH1H_TK.sqf"]]], "1", "1"],
		["UH1", [12],  "", -5, [["expression", format[_EXECscript5,"UH1.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// ATV Fahrrad, Motorrad
VehicleMenu6 =
[
["",true],
		["Moto", [2],  "", -5, [["expression", format[_EXECscript5,"Moto.sqf"]]], "1", "1"],
		["Moto 2", [3],  "", -5, [["expression", format[_EXECscript5,"Moto2.sqf"]]], "1", "1"],
		["Moto 3", [4],  "", -5, [["expression", format[_EXECscript5,"Moto3.sqf"]]], "1", "1"],
		["Moto 4", [5],  "", -5, [["expression", format[_EXECscript5,"Moto4.sqf"]]], "1", "1"],
		["ATV", [6],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Bike", [7],  "", -5, [["expression", format[_EXECscript5,"Bike.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

//Flugzeug
VehicleMenu7 =
[
["",true],
		["MV22", [2],  "", -5, [["expression", format[_EXECscript5,"MV22.sqf"]]], "1", "1"],
		["F35", [3],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["C130", [4],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],
		["A10", [5],  "", -5, [["expression", format[_EXECscript5,"A10.sqf"]]], "1", "1"],	 
		["SU25", [6],  "", -5, [["expression", format[_EXECscript5,"SU25.sqf"]]], "1", "1"],
		["UAZ", [7],  "", -5, [["expression", format[_EXECscript5,"UAZ.sqf"]]], "1", "1"],
		["L39", [8],  "", -5, [["expression", format[_EXECscript5,"L39.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

//Boat
VehicleMenu8 =
[
["",true],	
		["Boat 2", [2],  "", -5, [["expression", format[_EXECscript5,"FISH2.sqf"]]], "1", "1"],
		["Boat 3", [3],  "", -5, [["expression", format[_EXECscript5,"FISH3.sqf"]]], "1", "1"],
		["PBX", [4],  "", -5, [["expression", format[_EXECscript5,"PBX.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


 BuildingMenu =
[
["",true],
		["Wood Floor", [2],  "", -5, [["expression", format[_EXECscript6,"ItemWoodFloor.sqf"]]], "1", "1"],
		["Wood Floor 1/2", [3],  "", -5, [["expression", format[_EXECscript6,"ItemWoodFloorHalf.sqf"]]], "1", "1"],
		["Wood Floor 1/4", [4],  "", -5, [["expression", format[_EXECscript6,"ItemWoodFloorQuarter.sqf"]]], "1", "1"],
		["Wood Stairs", [5],  "", -5, [["expression", format[_EXECscript6,"ItemWoodStairs.sqf"]]], "1", "1"],
		["Wood Stairs /w supp", [6],  "", -5, [["expression", format[_EXECscript6,"ItemWoodStairsSupport.sqf"]]], "1", "1"],
		["Wood Ladder", [7],  "", -5, [["expression", format[_EXECscript6,"ItemWoodLadder.sqf"]]], "1", "1"],
		["Wood Wall", [8],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWall.sqf"]]], "1", "1"],
		["Wood Wall 1/3", [9],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallThird.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:BuildingMenu2", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

BuildingMenu2 =
[
["",true],
		["Wood Wall Door", [2],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallDoor.sqf"]]], "1", "1"],
		["Wood Wall /w Door", [3],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWithDoor.sqf"]]], "1", "1"],
		["Wood Wall /w Door Locked", [4],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWithDoorLocked.sqf"]]], "1", "1"],
		["Wood Wall Window", [5],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWindow.sqf"]]], "1", "1"],
		["Wood Stairs /w supp", [6],  "", -5, [["expression", format[_EXECscript6,"ItemWoodStairsSupport.sqf"]]], "1", "1"],
		["Wood Wall Large", [7],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallLg.sqf"]]], "1", "1"],
		["Wood Wall Garage Door", [8],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallGarageDoor.sqf"]]], "1", "1"],
		["Wood Wall Garage Door Locked", [9],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallGarageDoorLocked.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:BuildingMenu3", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

BuildingMenu3 =
[
["",true],
		["Wood Wall Door Large", [2],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallDoorLg.sqf"]]], "1", "1"],
		["Wood Wall /w Door Large", [3],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWithDoorLg.sqf"]]], "1", "1"],
		["Wood Wall /w Door Large Locked", [4],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWithDoorLgLocked.sqf"]]], "1", "1"],
		["Wood Wall Window Large", [5],  "", -5, [["expression", format[_EXECscript6,"ItemWoodWallWindowLg.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


ItemMenu =
[
["",true],
		["Supply Crate Empty", [2],  "", -5, [["expression", format[_EXECscript7,"bulk_empty.sqf"]]], "1", "1"],
		["Gold Bar", [3],  "", -5, [["expression", format[_EXECscript7,"ItemGoldBar.sqf"]]], "1", "1"],
		["Gold Bar 10oz", [4],  "", -5, [["expression", format[_EXECscript7,"ItemGoldBar10oz.sqf"]]], "1", "1"],
		["Silver Bar", [5],  "", -5, [["expression", format[_EXECscript7,"ItemSilverBar.sqf"]]], "1", "1"],
		["Silver Bar 10oz", [6],  "", -5, [["expression", format[_EXECscript7,"ItemSilverBar10oz.sqf"]]], "1", "1"],
		["Copper Bar", [7],  "", -5, [["expression", format[_EXECscript7,"ItemCopperBar.sqf"]]], "1", "1"],
		["Copper Bar 10oz", [8],  "", -5, [["expression", format[_EXECscript7,"ItemCopperBar10oz.sqf"]]], "1", "1"],
		["Aluminium Bar", [9],  "", -5, [["expression", format[_EXECscript7,"ItemAluminumBar.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu2", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu2 =
[
["",true],
		["Aluminium Bar 10oz", [2],  "", -5, [["expression", format[_EXECscript7,"ItemAluminumBar10oz.sqf"]]], "1", "1"],
		["Tin Bar", [3],  "", -5, [["expression", format[_EXECscript7,"ItemTinBar.sqf"]]], "1", "1"],
		["Tin Bar 10oz", [4],  "", -5, [["expression", format[_EXECscript7,"ItemTinBar10oz.sqf"]]], "1", "1"],
		["Bronze Bar", [5],  "", -5, [["expression", format[_EXECscript7,"ItemBronzeBar.sqf"]]], "1", "1"],
		["Briefcase Empty", [6],  "", -5, [["expression", format[_EXECscript7,"ItemBriefcaseEmpty.sqf"]]], "1", "1"],
		["Briefcase Full", [7],  "", -5, [["expression", format[_EXECscript7,"ItemBriefcase100oz.sqf"]]], "1", "1"],
		["Fuel Barrel", [8],  "", -5, [["expression", format[_EXECscript7,"ItemFuelBarrel.sqf"]]], "1", "1"],
		["Fuel Barrel Empty", [9],  "", -5, [["expression", format[_EXECscript7,"ItemFuelBarrelEmpty.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu3", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu3 =
[
["",true],
		["Jerry Can", [2],  "", -5, [["expression", format[_EXECscript7,"ItemJerrycan.sqf"]]], "1", "1"],
		["Generator", [3],  "", -5, [["expression", format[_EXECscript7,"ItemGenerator.sqf"]]], "1", "1"],
		["Fuel Pump", [4],  "", -5, [["expression", format[_EXECscript7,"ItemFuelPump.sqf"]]], "1", "1"],
		["Safe", [5],  "", -5, [["expression", format[_EXECscript7,"ItemVault.sqf"]]], "1", "1"],
		["Sledgehammer Handle", [6],  "", -5, [["expression", format[_EXECscript7,"ItemSledgeHandle.sqf"]]], "1", "1"],
		["Sledgehammer Head", [7],  "", -5, [["expression", format[_EXECscript7,"ItemSledgeHead.sqf"]]], "1", "1"],
		["Beartrap", [8],  "", -5, [["expression", format[_EXECscript7,"TrapBear.sqf"]]], "1", "1"],
		["Cinder Wall Kit", [9],  "", -5, [["expression", format[_EXECscript7,"cinder_wall_kit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu4", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu4 =
[
["",true],
		["Cinder Garage Kit", [2],  "", -5, [["expression", format[_EXECscript7,"cinder_garage_kit.sqf"]]], "1", "1"],
		["Cinder Door Kit", [3],  "", -5, [["expression", format[_EXECscript7,"cinder_door_kit.sqf"]]], "1", "1"],
		["Metal Floor Kit", [4],  "", -5, [["expression", format[_EXECscript7,"metal_floor_kit.sqf"]]], "1", "1"],
		["Cinderblocks", [5],  "", -5, [["expression", format[_EXECscript7,"CinderBlocks.sqf"]]], "1", "1"],
		["Mortar Bucket", [6],  "", -5, [["expression", format[_EXECscript7,"MortarBucket.sqf"]]], "1", "1"],
		["Deerstand Kit", [7],  "", -5, [["expression", format[_EXECscript7,"deer_stand_kit.sqf"]]], "1", "1"],
		["Desert Large Net Kit", [8],  "", -5, [["expression", format[_EXECscript7,"desert_large_net_kit.sqf"]]], "1", "1"],
		["Forest Large Net Kit", [9],  "", -5, [["expression", format[_EXECscript7,"forest_large_net_kit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu5", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu5 =
[
["",true],
		["Desert Net Kit", [2],  "", -5, [["expression", format[_EXECscript7,"desert_net_kit.sqf"]]], "1", "1"],
		["Forest Net Kit", [3],  "", -5, [["expression", format[_EXECscript7,"forest_net_kit.sqf"]]], "1", "1"],
		["Fuel Pump Kit", [4],  "", -5, [["expression", format[_EXECscript7,"fuel_pump_kit.sqf"]]], "1", "1"],
		["Light Pole Kit", [5],  "", -5, [["expression", format[_EXECscript7,"light_pole_kit.sqf"]]], "1", "1"],
		["Stick Fence Kit", [6],  "", -5, [["expression", format[_EXECscript7,"stick_fence_kit.sqf"]]], "1", "1"],
		["Wooden Shed Kit", [7],  "", -5, [["expression", format[_EXECscript7,"wooden_shed_kit.sqf"]]], "1", "1"],
		["Wood Shack Kit", [8],  "", -5, [["expression", format[_EXECscript7,"wood_shack_kit.sqf"]]], "1", "1"],
		["M240 Nest Kit", [9],  "", -5, [["expression", format[_EXECscript7,"m240_nest_kit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu6", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu6 =
[
["",true],
		["Sun Shade Kit", [2],  "", -5, [["expression", format[_EXECscript7,"sun_shade_kit.sqf"]]], "1", "1"],
		["Park Bench Kit", [3],  "", -5, [["expression", format[_EXECscript7,"park_bench_kit.sqf"]]], "1", "1"],
		["Rusty Gate Kit", [4],  "", -5, [["expression", format[_EXECscript7,"rusty_gate_kit.sqf"]]], "1", "1"],
		["Sandbag Nest Kit", [5],  "", -5, [["expression", format[_EXECscript7,"sandbag_nest_kit.sqf"]]], "1", "1"],
		["Outhouse Kit", [6],  "", -5, [["expression", format[_EXECscript7,"outhouse_kit.sqf"]]], "1", "1"],
		["Storage Shed Kit", [7],  "", -5, [["expression", format[_EXECscript7,"storage_shed_kit.sqf"]]], "1", "1"],
		["Hotwire Kit", [8],  "", -5, [["expression", format[_EXECscript7,"ItemHotwireKit.sqf"]]], "1", "1"],
		["Wood Ramp", [9],  "", -5, [["expression", format[_EXECscript7,"ItemDocumentRamp.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ItemMenu7", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ItemMenu7 =
[
["",true],
		["30m Plot Pole", [2],  "", -5, [["expression", format[_EXECscript7,"30m_plot_kit.sqf"]]], "1", "1"],
		["Lightbulb", [3],  "", -5, [["expression", format[_EXECscript7,"ItemLightBulb.sqf"]]], "1", "1"],
		["Combolock", [4],  "", -5, [["expression", format[_EXECscript7,"ItemComboLock.sqf"]]], "1", "1"],
		["Lockbox", [5],  "", -5, [["expression", format[_EXECscript7,"ItemLockbox.sqf"]]], "1", "1"],
		["Corrugated Fence", [6],  "", -5, [["expression", format[_EXECscript7,"ItemCorrugated.sqf"]]], "1", "1"],
		["Metal Pole", [7],  "", -5, [["expression", format[_EXECscript7,"ItemPole.sqf"]]], "1", "1"],
		["Gunrack Kit", [8],  "", -5, [["expression", format[_EXECscript7,"ItemGunRackKit.sqf"]]], "1", "1"],
		["Workbench kit", [9],  "", -5, [["expression", format[_EXECscript7,"workbench_kit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:adminmenu";