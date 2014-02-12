//Sector FNG Made by Phoenix @ http://fridaynightgaming.co.uk/
//Feel Free to test @ 91.121.11.49:2362 Bring a group you'll need one.
//Thanks to OpenDayZ for there hard work in helping others.
//Thanks to Sarge for his great AI work.

if (isServer) then {

//Zone alpha tower top
_vehicle_103769 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [8136.2,13487.2,9.117], [], 0, "CAN_COLLIDE"];
  _vehicle_103769 = _this;
  _this setDir -182.5;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  _this addWeaponCargoGlobal ["M9SD",2];
  _this addWeaponCargoGlobal ["DMR_DZ",2];
  _this addWeaponCargoGlobal ["M4A1_AIM_SD_camo",2];
  _this addWeaponCargoGlobal ["FN_FAL",2];
  _this addWeaponCargoGlobal ["M249_DZ",2];
  _this addWeaponCargoGlobal ["M14_EP1",2];
  _this addWeaponCargoGlobal ["Mk_48_DZ",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_SUSAT",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_Holo",2];
  _this addWeaponCargoGlobal ["G36K_camo",2];
  
  _this addWeaponCargoGlobal ["NVGoggles",1];
  _this addWeaponCargoGlobal ["Binocular_Vector",1];
  _this addWeaponCargoGlobal ["ItemGPS",1];

  _this addmagazineCargoGlobal ["20Rnd_762x51_DMR",20];
  _this addmagazineCargoGlobal ["30Rnd_556x45_StanagSD",20];
  _this addmagazineCargoGlobal ["20Rnd_762x51_FNFAL",10];
  _this addmagazineCargoGlobal ["100Rnd_762x51_M240",10];
  _this addmagazineCargoGlobal ["200Rnd_556x45_M249",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_G36",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
  _this addmagazineCargoGlobal ["15Rnd_9x19_M9SD",10];
  
  
  _this addmagazineCargoGlobal ["ItemHeatPack",15];
  _this addmagazineCargoGlobal ["ItemPainkiller",5];
  _this addmagazineCargoGlobal ["ItemMorphine",5];
  _this addmagazineCargoGlobal ["ItemBloodBag",5];
  _this addmagazineCargoGlobal ["ItemAntibiotic",5];

  _this addbackpackCargoGlobal ["DZ_Backpack_EP1",2];
  _this setVariable ["permaLoot",true];
  _this setPos [8136.2,13487.2,9.117];
};

//Zone alpha baracke top
_vehicle_103770 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [7940.4,13615.9,0.123], [], 0, "CAN_COLLIDE"];
  _vehicle_103770 = _this;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  _this addWeaponCargoGlobal ["NVGoggles",1];
  _this addWeaponCargoGlobal ["ItemGPS",1];
  _this addWeaponCargoGlobal ["ItemToolbox",5];
  
  _this addmagazineCargoGlobal ["PartEngine",15];
  _this addmagazineCargoGlobal ["PartGeneric",15];
  _this addmagazineCargoGlobal ["PartVRotor",5];
  _this addmagazineCargoGlobal ["PartWheel",20];
  _this addmagazineCargoGlobal ["PartFueltank",15];
  _this addmagazineCargoGlobal ["PartGlass",20];
  _this addmagazineCargoGlobal ["ItemJerrycan",20];
  
  _this addmagazineCargoGlobal ["FoodCanBadguy",10];
  _this addmagazineCargoGlobal ["FoodCanBoneboy",10];
  _this addmagazineCargoGlobal ["FoodCanCorn",10];
  _this addmagazineCargoGlobal ["FoodCanCurgon",10];
  _this addmagazineCargoGlobal ["FoodCanDemon",10];
  _this addmagazineCargoGlobal ["FoodCanFraggleos",10];
  _this addmagazineCargoGlobal ["FoodCanHerpy",10];
  _this addmagazineCargoGlobal ["FoodCanDerpy",10];
  _this addmagazineCargoGlobal ["FoodCanTylers",10];
  _this addmagazineCargoGlobal ["ItemSodaMtngreen",5];
  _this addmagazineCargoGlobal ["ItemSodaR4z0r",10];
  _this addmagazineCargoGlobal ["ItemSodaClays",10];
  _this addmagazineCargoGlobal ["ItemSodaSmasht",10];
  _this addmagazineCargoGlobal ["ItemSodaDrwaste",10];
  _this addmagazineCargoGlobal ["ItemSodaLemonade",10];
  _this addmagazineCargoGlobal ["ItemSodaLvg",10];
  _this addmagazineCargoGlobal ["ItemSodaMzly",10];
  _this addmagazineCargoGlobal ["ItemSodaRabbit",5];
  
   _this addmagazineCargoGlobal ["ItemSandbag",10];
  _this addmagazineCargoGlobal ["ItemTankTrap",10];
  _this addmagazineCargoGlobal ["ItemWire",10];
  _this addmagazineCargoGlobal ["PartGeneric",10];
  
   _this addmagazineCargoGlobal ["MortarBucket",5];
  _this addmagazineCargoGlobal ["CinderBlocks",5];
  _this addmagazineCargoGlobal ["PartWoodPlywood",10];
  _this addmagazineCargoGlobal ["ItemDocument",10];

  _this addbackpackCargoGlobal ["DZ_Backpack_EP1",1];
  _this setVariable ["permaLoot",true];
  _this setPos [7940.4,13615.9,0.123];
};

//town hotel
_vehicle_103771 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [1950, 12210 ,72], [], 0, "CAN_COLLIDE"];
  _vehicle_103771 = _this;
  _this setDir -178.83;
  //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  _this addWeaponCargoGlobal ["NVGoggles",1];
  _this addWeaponCargoGlobal ["Binocular_Vector",1];
  _this addWeaponCargoGlobal ["ItemGPS",1];
  _this addWeaponCargoGlobal ["ItemRadio",2];

  _this addmagazineCargoGlobal ["ItemHeatPack",15];
  _this addmagazineCargoGlobal ["ItemBandage",30];
  _this addmagazineCargoGlobal ["ItemPainkiller",30];
  _this addmagazineCargoGlobal ["ItemMorphine",10];
  _this addmagazineCargoGlobal ["ItemBloodBag",10];
  _this addmagazineCargoGlobal ["ItemEpinephrine",15];
  _this addmagazineCargoGlobal ["ItemAntibiotic",10];

   _this addWeaponCargoGlobal ["M9SD",2];
  _this addWeaponCargoGlobal ["DMR_DZ",2];
  _this addWeaponCargoGlobal ["M4A1_AIM_SD_camo",2];
  _this addWeaponCargoGlobal ["FN_FAL",2];
  _this addWeaponCargoGlobal ["M249_DZ",2];
  _this addWeaponCargoGlobal ["M14_EP1",2];
  _this addWeaponCargoGlobal ["Mk_48_DZ",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_SUSAT",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_Holo",2];
  _this addWeaponCargoGlobal ["G36K_camo",2];
  
   _this addmagazineCargoGlobal ["20Rnd_762x51_DMR",20];
  _this addmagazineCargoGlobal ["30Rnd_556x45_StanagSD",20];
  _this addmagazineCargoGlobal ["20Rnd_762x51_FNFAL",10];
  _this addmagazineCargoGlobal ["100Rnd_762x51_M240",10];
  _this addmagazineCargoGlobal ["200Rnd_556x45_M249",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_G36",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
  _this addmagazineCargoGlobal ["15Rnd_9x19_M9SD",10];
  
    _this addmagazineCargoGlobal ["ItemSandbag",10];
  _this addmagazineCargoGlobal ["ItemTankTrap",10];
  _this addmagazineCargoGlobal ["ItemWire",10];
  _this addmagazineCargoGlobal ["PartGeneric",10];
  
   _this addmagazineCargoGlobal ["MortarBucket",5];
  _this addmagazineCargoGlobal ["CinderBlocks",5];
  _this addmagazineCargoGlobal ["PartWoodPlywood",10];
  _this addmagazineCargoGlobal ["ItemDocument",10];
  
  _this addmagazineCargoGlobal ["FoodCanBadguy",10];
  _this addmagazineCargoGlobal ["FoodCanBoneboy",10];
  _this addmagazineCargoGlobal ["FoodCanCorn",10];
  _this addmagazineCargoGlobal ["FoodCanCurgon",10];
  _this addmagazineCargoGlobal ["FoodCanDemon",10];
  _this addmagazineCargoGlobal ["FoodCanFraggleos",10];
  _this addmagazineCargoGlobal ["FoodCanHerpy",10];
  _this addmagazineCargoGlobal ["FoodCanDerpy",10];
  _this addmagazineCargoGlobal ["FoodCanTylers",10];
  _this addmagazineCargoGlobal ["ItemSodaR4z0r",10];
  _this addmagazineCargoGlobal ["ItemSodaClays",10];
  _this addmagazineCargoGlobal ["ItemSodaSmasht",10];
  _this addmagazineCargoGlobal ["ItemSodaDrwaste",10];
  _this addmagazineCargoGlobal ["ItemSodaLemonade",10];
  _this addmagazineCargoGlobal ["ItemSodaLvg",10];
  _this addmagazineCargoGlobal ["ItemSodaMzly",10];
  _this addmagazineCargoGlobal ["ItemSodaRabbit",5];
  
  _this addmagazineCargoGlobal ["ItemWoodLadder",5];
  _this addmagazineCargoGlobal ["light_pole_kit",5];
  

  _this addbackpackCargoGlobal ["DZ_LargeGunBag_EP1",2];
  _this setVariable ["permaLoot",true];
  _this setPos [2022.77,12217.9,57.278];
};

//miene top
_vehicle_103772 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [2099.46,12852.9,0.001], [], 0, "CAN_COLLIDE"];
  _vehicle_103772 = _this;
  _this setDir 90.560677;
  //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo

  _this addmagazineCargoGlobal ["ItemHeatPack",15];
  _this addmagazineCargoGlobal ["ItemBandage",30];
  _this addmagazineCargoGlobal ["ItemPainkiller",30];
  _this addmagazineCargoGlobal ["ItemMorphine",10];
  _this addmagazineCargoGlobal ["ItemBloodBag",10];
  _this addmagazineCargoGlobal ["ItemEpinephrine",15];
  _this addmagazineCargoGlobal ["ItemAntibiotic",10];

   _this addWeaponCargoGlobal ["M9SD",2];
  _this addWeaponCargoGlobal ["DMR_DZ",2];
  _this addWeaponCargoGlobal ["M4A1_AIM_SD_camo",2];
  _this addWeaponCargoGlobal ["FN_FAL",2];
  _this addWeaponCargoGlobal ["M249_DZ",2];
  _this addWeaponCargoGlobal ["M14_EP1",2];
  _this addWeaponCargoGlobal ["Mk_48_DZ",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_SUSAT",2];
  _this addWeaponCargoGlobal ["BAF_L85A2_RIS_Holo",2];
  _this addWeaponCargoGlobal ["G36K_camo",2];
  
   _this addmagazineCargoGlobal ["20Rnd_762x51_DMR",20];
  _this addmagazineCargoGlobal ["30Rnd_556x45_StanagSD",20];
  _this addmagazineCargoGlobal ["20Rnd_762x51_FNFAL",10];
  _this addmagazineCargoGlobal ["100Rnd_762x51_M240",10];
  _this addmagazineCargoGlobal ["200Rnd_556x45_M249",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_G36",10];
  _this addmagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
  _this addmagazineCargoGlobal ["15Rnd_9x19_M9SD",10];
  
  _this addWeaponCargoGlobal ["NVGoggles",1];
  _this addWeaponCargoGlobal ["Binocular_Vector",1];
  _this addWeaponCargoGlobal ["ItemGPS",1];
  _this addWeaponCargoGlobal ["ItemRadio",2];
  
  _this addmagazineCargoGlobal ["HandGrenade_West",10];
  
  _this addmagazineCargoGlobal ["ItemSandbag",10];
  _this addmagazineCargoGlobal ["ItemTankTrap",10];
  _this addmagazineCargoGlobal ["ItemWire",10];
  _this addmagazineCargoGlobal ["PartGeneric",10];
  
   _this addmagazineCargoGlobal ["MortarBucket",5];
  _this addmagazineCargoGlobal ["CinderBlocks",5];
  _this addmagazineCargoGlobal ["PartWoodPlywood",10];
  _this addmagazineCargoGlobal ["ItemDocument",10];

  
  _this addbackpackCargoGlobal ["DZ_Backpack_EP1",1];
  _this setVariable ["permaLoot",true];
  _this setPos [2099.46,12852.9,0.001];
};
};