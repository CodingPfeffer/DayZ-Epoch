_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addMagazineCargoGlobal ["ItemBandage", 10];
_crate addMagazineCargoGlobal ["ItemMorphine", 10];
_crate addMagazineCargoGlobal ["ItemEpinephrine", 10];
_crate addMagazineCargoGlobal ["ItemPainkiller", 15];
_crate addMagazineCargoGlobal ["ItemWaterbottle", 10];
_crate addMagazineCargoGlobal ["FoodCanBakedBeans", 15];
_crate addMagazineCargoGlobal ["ItemAntibiotic", 5];
_crate addMagazineCargoGlobal ["ItemBloodbag", 15];

_crate setVariable ["permaLoot",true];