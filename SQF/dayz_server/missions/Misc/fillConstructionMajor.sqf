//Created by TheSzerdi edited by MimiC
_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// CONSTRUCTION MATERIALS
_crate addMagazineCargoGlobal ["bulk_empty", 15];
_crate addMagazineCargoGlobal ["CinderBlocks", 10];
_crate addMagazineCargoGlobal ["MortarBucket", 10];
_crate addMagazineCargoGlobal ["PartPlywoodPack", 15];
_crate addMagazineCargoGlobal ["PartLumberPack", 15];
_crate addMagazineCargoGlobal ["ItemCanvas", 15];
_crate addMagazineCargoGlobal ["PartGeneric", 15];
_crate addMagazineCargoGlobal ["ItemSandbag", 10];
_crate addMagazineCargoGlobal ["ItemTankTrap", 10];
_crate addMagazineCargoGlobal ["PartWoodPile", 20];

// TOOLS
_crate addWeaponCargoGlobal ["ItemToolbox", 2];
_crate addWeaponCargoGlobal ["ItemEtool", 2];
_crate addWeaponCargoGlobal ["ItemCrowbar", 2];
_crate addWeaponCargoGlobal ["ItemKnife", 2];