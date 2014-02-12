private["_nyan, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};
if (_plr == "EVERYONE BUT ME") then {_plr = "FUCKEMGRANDPAIHATEJEWS";};



Switch (_case) do

{
case "Give Gear":
{
hint ["Adding Gear to %1",_plr];
_nyan = format["if((name player) == '%1') then {
  removeAllWeapons player;

  player addWeapon 'BAF_AS50_TWS'; 
  player addMagazine '10Rnd_127x99_m107'; 
  player addMagazine '10Rnd_127x99_m107'; 
  player addMagazine '10Rnd_127x99_m107'; 
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine 'ItemPainkiller';
  player addMagazine 'FoodSteakCooked'; 
  player addMagazine 'ItemWaterBottle'; 
  player addMagazine 'ItemMorphine'; 
  player addMagazine 'Skin_Sniper1_DZ'; 
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine '10Rnd_127x99_m107';
  player addMagazine '10Rnd_127x99_m107';

  player addWeapon 'Colt1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine '7Rnd_45ACP_1911';
  player addMagazine 'ItemBandage';

  player addWeapon 'Binocular_Vector';
  player addWeapon 'NVGoggles';
  player addWeapon 'ItemGPS';
  player addWeapon 'ItemCompass';
  player addWeapon 'ItemMap';
  player addWeapon 'ItemWatch';
  player addWeapon 'ItemHatchet';
  player addWeapon 'ItemKnife';
  player addWeapon 'Itemmatchbox';
  player addWeapon 'Itemetool';
  player addWeapon 'Itemtoolbox';
  player addBackpack 'DZ_Backpack_EP1';

TitleText [format['REPERATIONS NIGGAS'], 'PLAIN DOWN'];
};", _plr];

sleep 0.1;
player setVehicleInit _nyan;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;

};
Case "Delete Gear":
{
hint format["Deleting gear from %1", _plr];

_nyan = "if(format[name player] == _plr) then {
  removeAllWeapons player;
};
";

sleep 0.1;
player setVehicleInit _nyan;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;

};

};

