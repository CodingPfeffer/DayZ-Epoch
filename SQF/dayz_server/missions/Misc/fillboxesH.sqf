_crate3 = _this select 0;

clearWeaponCargoGlobal _crate3;
clearMagazineCargoGlobal _crate3;

// RIFLES
_crate3 addWeaponCargoGlobal ["DMR", 1];
_crate3 addWeaponCargoGlobal ["M40A3", 1];
_crate3 addWeaponCargoGlobal ["M24_des_EP1", 1];
_crate3 addWeaponCargoGlobal ["SVD_CAMO", 1];
_crate3 addWeaponCargoGlobal ["SVD", 1];

// PISTOLS
_crate3 addWeaponCargoGlobal ["M9SD", 2];
_crate3 addWeaponCargoGlobal ["MakarovSD", 2];


// AMMUNITION
_crate3 addMagazineCargoGlobal ["15Rnd_9x19_M9SD", 8];
_crate3 addMagazineCargoGlobal ["8Rnd_9x18_MakarovSD", 8];
_crate3 addMagazineCargoGlobal ["10Rnd_762x54_SVD", 5];
_crate3 addMagazineCargoGlobal ["20Rnd_762x51_DMR", 5];


// CLOTHING
_crate3 addMagazineCargoGlobal ["Skin_Sniper1_DZ", 2];

// BACKPACKS
_crate3 addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];

_crate setVariable ["permaLoot",true];