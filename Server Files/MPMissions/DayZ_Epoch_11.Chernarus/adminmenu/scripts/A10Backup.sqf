TitleText [format["Spawning air force"], "PLAIN DOWN"];

_units_list = units group player;{deleteVehicle _x} forEach _units_list;
_pos=getpos player;
Armor1=getpos player;
_marker = createMarker ["PlaneSpawn", position player];
planeGroup = group player;
_grp = group player;
_wp = _grp addWaypoint [Armor1, 0];

[_grp, 0] setWaypointType "DESTROY";
[_grp, 0] setWaypointSpeed "FULL";
[_grp, 0] setWaypointBehaviour "CARELESS";
_me=typeOf player;
for [{_x = 1}, {_x <= 7}, {_x = _x + 1}] do
{

_a10 = "MH6J_EP1" createVehicle [(getMarkerPos "PlaneSpawn" select 0), (getMarkerPos "PlaneSpawn" select 1), 250];
_a10 setPos [(getPos _a10 select 0) + (_x * 40), getPos _a10 select 1, 250];
_a10 engineOn true;
_a10 setDir 290;
_dir = 290;
_speed = 500;
_a10 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
_a10 removeWeapon "MaverickLauncher"; _a10 removeMagazine "5Rnd_Maverick_A10"; _a10 addWeapon "BombLauncher"; _a10 addMagazine "6Rnd_GBU12_AV8B";



_me createUnit [getMarkerPos "PlaneSpawn", _grp, "pilot = this ;"];
//_me createUnit [getMarkerPos "PlaneSpawn", _grp, "commander = this ;"];

pilot moveInDriver _a10;
pilot setSkill 1;
pilot flyInHeight 250;
//commander moveInGunner _a10;
//commander setSkill 1;
//commander flyInHeight 250;

};