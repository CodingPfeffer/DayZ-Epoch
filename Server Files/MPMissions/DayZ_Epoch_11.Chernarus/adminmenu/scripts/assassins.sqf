TitleText [format["Assassin On Your Target!"], "PLAIN DOWN"];

private["_spawnAIS", "_plrGroup"];
private["_svr, _plr, _case"];

_plr = _this select 0;
_case = _this select 1;
_class = "";

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};
if (_plr == "ALL PLAYERS") then {_plr = "";};

CIVILIAN setFriend [WEST,0];
WEST setFriend [CIVILIAN,0];

player addRating 50000;

_plrGroup = (group player);
_plrGroup allowFleeing 0;
_plrGroup setFormation "LINE";

"Survivor2_DZ" createUnit [[(getpos player select 0), (getpos player select 1), 50], _plrGroup, "_spawnAIS = this;"];

_spawnAIS enableAI "TARGET";
_spawnAIS enableAI "AUTOTARGET";
_spawnAIS enableAI "MOVE";
_spawnAIS enableAI "ANIM";
_spawnAIS enableAI "FSM";

_spawnAIS allowDammage true;

_spawnAIS setCombatMode "RED";
_spawnAIS setBehaviour "COMBAT";

_spawnAIS addweapon "G36_C_SD_camo";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS selectWeapon "G36_C_SD_camo";

_spawnAIS setSkill ["aimingAccuracy",1];
_spawnAIS setSkill ["aimingShake",1];
_spawnAIS setSkill ["aimingSpeed",1];
_spawnAIS setSkill ["endurance",1];
_spawnAIS setSkill ["spotDistance",1];
_spawnAIS setSkill ["spotTime",1];
_spawnAIS setSkill ["courage",1];
_spawnAIS setSkill ["reloadSpeed",1];
_spawnAIS setSkill ["commanding",1];
_spawnAIS setSkill ["general",1];

[_spawnAIS] join _plrGroup;

_class = "player addRating -500000;";

nil = [_plr, 11 ,_class] execVM "menu\scripts\666.sqf";

_spawnAIS addEventHandler ["Fired", {_this call player_fired;}];

while {alive _spawnAIS} do 
{
	{
		_x addRating 250000;
	} forEach allMissionObjects "zZombie_Base"; // doesn't attacks zombies yo
	
	sleep 0.1;
};