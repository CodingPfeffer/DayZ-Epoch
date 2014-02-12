private["_nyan, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

_class = "";

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};
if (_plr == "EVERYONE BUT ME") then {_plr = "FUCKEMGRANDPAIHATEJEWS";};

Switch (_case) do
{
  case "Destroyer":
  {
'Goat' createunit [[(getpos player select 0), (getpos player select 1), 50], group beeeh beeeh addMPEventHandler ['mpkilled',
{
	vehicleToSpawn = 'Landrover_CZ_EP1';
    if (isServer) then
    {
        _Boat= vehicleToSpawn createVehicle (position beeeh);
        dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,getPos beeeh nearestObject vehicleToSpawn];
		_Dirback = 4;
		_LHDspawn = _this select 0;
		_LHDdir = ((getdir _LHDspawn)+_Dirback);
		_LHDspawnpoint = getpos _LHDspawn;
			_dummy = "Land_Destroyer" createvehicle _LHDspawnpoint;
			_dummy setdir _LHDdir;
			_dummy attachto [_Boat];
			_dummy setDir 180;
	
		player moveInDriver _Boat;
    };
}];
  };
Case "Fregata":
{
'Goat' createunit [[(getpos player select 0), (getpos player select 1), 50], group beeeh beeeh addMPEventHandler ['mpkilled',
{
	vehicleToSpawn = 'Landrover_CZ_EP1';
    if (isServer) then
    {
        _Boat= vehicleToSpawn createVehicle (position beeeh);
        dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,getPos beeeh nearestObject vehicleToSpawn];
		_Dirback = 180;
		_LHDspawn = _this select 0;
		_LHDdir = ((getdir _LHDspawn)+_Dirback);
		_LHDspawnpoint = getpos _LHDspawn;
		
		
			_dummy = "Land_Fregata" createvehicle _LHDspawnpoint;
			_dummy attachto [_Boat];
			_dummy setdir 180;
		player moveInDriver _Boat;
    };
}];
};
  Case "Heli Bus":
  {
'Goat' createunit [[(getpos player select 0), (getpos player select 1), 50], group player,'beeeh = this', 1.0, 'PRIVATE'];
beeeh addMPEventHandler ['mpkilled',
{
	vehicleToSpawn = 'Landrover_CZ_EP1';
    if (isServer) then
    {
        _Boat= vehicleToSpawn createVehicle (position beeeh);
        dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,getPos beeeh nearestObject vehicleToSpawn];
		_Dirback = 4;
		_LHDspawn = _this select 0;
		_LHDdir = ((getdir _LHDspawn)+_Dirback);
		_LHDspawnpoint = getpos _LHDspawn;
			_dummy = "Land_Destroyer" createvehicle _LHDspawnpoint;
			_dummy setdir _LHDdir;
			_dummy attachto [_Boat];
			_dummy setDir 180;
	
		player moveInDriver _Boat;
    };
}];
  };
  Case "LHDG":
  {
'Goat' createunit [[(getpos player select 0), (getpos player select 1), 50], group player,'beeeh = this', 1.0, 'PRIVATE'];
beeeh addMPEventHandler ['mpkilled',
{
	vehicleToSpawn = 'Landrover_CZ_EP1';
    if (isServer) then
    {
        _Boat= vehicleToSpawn createVehicle (position beeeh);
        dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,getPos beeeh nearestObject vehicleToSpawn];
		_Dirback = 4;
		_LHDspawn = _this select 0;
		_LHDdir = ((getdir _LHDspawn)+_Dirback);
		_LHDspawnpoint = getpos _LHDspawn;
			_dummy = "Land_Destroyer" createvehicle _LHDspawnpoint;
			_dummy setdir _LHDdir;
			_dummy attachto [_Boat];
			_dummy setDir 180;
	
		player moveInDriver _Boat;
      };
    }];
  };
};

nil = [_plr, 11 ,_class] execVM "adminmenu\scripts\Dwarden.sqf";
