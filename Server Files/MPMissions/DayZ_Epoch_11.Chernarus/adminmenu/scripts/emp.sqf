private["_nyan, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

_class = "";

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};
if (_plr == "EVERYONE BUT ME") then {_plr = "FUCKEMGRANDPAIHATEJEWS";};



Switch (_case) do
{
  case "Give Gear":
  {
   _class = "removeAllWeapons player;
  player addWeapon 'BAF_AS50_TWS'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine '5Rnd_127x99_as50'; 
  player addMagazine 'ItemPainkiller'; 
  player addMagazine 'ItemPainkiller'; 
  player addMagazine 'ItemMorphine'; 
  player addMagazine 'ItemMorphine'; 
  player addMagazine 'Skin_Sniper1_DZ'; 

  player addWeapon 'UZI_SD_EP1';
  player addMagazine '30Rnd_9x19_UZI_SD'; 
  player addMagazine '30Rnd_9x19_UZI_SD'; 
  player addMagazine '30Rnd_9x19_UZI_SD'; 
  player addMagazine '30Rnd_9x19_UZI_SD'; 
  player addMagazine '30Rnd_9x19_UZI_SD'; 
  player addMagazine 'ItemBandage'; 
  player addMagazine 'ItemBandage'; 
  player addMagazine 'ItemBandage';

  player addWeapon 'Binocular_Vector';
  player addWeapon 'NVGoggles';
  player addWeapon 'ItemGPS';
  player addWeapon 'ItemRadio';
  player addWeapon 'ItemFlashlightRed';
  player addWeapon 'ItemCompass';
  player addWeapon 'ItemMap';
  player addWeapon 'ItemWatch';
  player addWeapon 'ItemHatchet';
  player addWeapon 'ItemKnife';
  player addWeapon 'Itemmatchbox';
  player addWeapon 'Itemetool';
  player addWeapon 'Itemtoolbox';
  player addBackpack 'DZ_Backpack_EP1';
  (Unitbackpack player) addWeaponCargo ['M4A1_HWS_GL_SD_Camo', 1];
  (Unitbackpack player) addMagazineCargo ['30Rnd_556x45_StanagSD', 6];
  (Unitbackpack player) addMagazineCargo ['ItemBloodbag', 2];
  (Unitbackpack player) addMagazineCargo ['ItemEpinephrine', 1];
  (Unitbackpack player) addMagazineCargo ['ItemWaterbottle', 2];
  (Unitbackpack player) addMagazineCargo ['FoodSteakCooked', 3];"
  };
  Case "Delete Gear":
  {
     _class = "removeAllWeapons player;"
  };
  Case "Break Legs":
  {
    _class = "player setHit ['legs',1];
    player setVariable ['hit_legs',2,true];
    player setVariable['medForceUpdate',true,true];"
  };
  Case "Fix Legs":
  {
    _class = "player setHit ['legs',0];
    player setVariable ['hit_legs',0,false];
    player setVariable['medForceUpdate',true,true];"
  };
  Case "Force Dance":
  {
    _class = "player playMoveNow 'ActsPercMstpSnonWnonDnon_DancingDuoIvan';"
  };
  Case "===CLICK TO ADVERTISE===":
  {
    _class = "TitleText [format['Want hacks?! MPGH.NET welcomes all!'], 'PLAIN DOWN'];"
  };
  Case "Disable Quit":
  {
    _nill = [] execVM "adminmenu\scripts\noquitinit.sqf";
    _class = "false spawn sdasdadsasdsaffsdsdfrtretrwe;
    (findDisplay 46) displayAddEventHandler ['KeyDown','_this call gfdiogfhdoigfdhiogfdoigfhd'];
    (findDisplay 46) displayAddEventHandler ['keyDown', '_this call TAG_onKeyDown'];";
  };
  Case "Enable Quit":
  {
    _class = "true spawn sdasdadsasdsaffsdsdfrtretrwe;
    (findDisplay 46) displayremoveallEventHandlers 'KeyDown';"
  };
};

nil = [_plr, 11 ,_class] execVM "adminmenu\scripts\Dwarden.sqf";
