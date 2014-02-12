#define GET_DISPLAY (findDisplay 155)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
#define KINDOF_ARRAY(a,b) [##a,##b] call {_veh = _this select 0;_types = _this select 1;_res = false; {if (_veh isKindOf _x) exitwith { _res = true };} forEach _types;_res}
#define balca_VC_vehlist_IDC = 101


_veh = player;

_veh addaction ["GodMode On/Off", "adminmenu\scripts\Godmode.sqf"];

_veh addaction ["Teleport Yourself", "adminmenu\scripts\teleport.sqf"];

_veh addaction ["Spawn AmmoBox", "adminmenu\scripts\weapons.sqf"];

// mess with the game and server hacking stuff here below

_veh addaction ["all Fly High", "adminmenu\scripts\allflyhigh.sqs"];


_veh addaction ["------------", ""];



/*

////////////////// spawn all vehicles eg


		player addaction["--- AIR TYPE VEHICLES ---",""];
		_kindOf = ["air"];
		_filter = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))) then {

					 player addaction[format["Spawn AIR -> %1",getText(_vehicle >> "displayName")],'adminmenu\scripts\!spawnvehicle.sqf',_veh_type];

				};
			};
		};
		player addaction["--- TANK TYPE VEHICLES ---",""];
		_kindOf = ["tank"];
		_filter = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))) then {

					 player addaction[format["Spawn TANK -> %1",getText(_vehicle >> "displayName")],'adminmenu\scripts\!spawnvehicle.sqf',_veh_type];
	
				};
			};
		};
    taskhint ["adminmenu!", [1, 1, 1, 1], "taskNew"];		
		
		player addaction["--- CAR TYPE VEHICLES ---",""];
		_kindOf = ["car"];
		_filter = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))) then {

					 player addaction[format["Spawn CAR -> %1",getText(_vehicle >> "displayName")],'adminmenu\scripts\!spawnvehicle.sqf',_veh_type];
		
				
				};
			};
		};
*/
sleep 2;
hint "all actions will be removed in (30) seconds! to remove this deletion look into the file scripts\Addactions.sqf .. open it with any text editor. and delete the lines sleep 30; and the lines that delete the actions. Press escape to get them back.";

//remove these next lines if you do not want the actions removed after 30 seconds
sleep 30;
_lastindex = player addaction ["", ""]; for [{_i = 0}, {_i <= _lastindex}, {_i = _i + 1}] do {player removeaction _i;}; 
//
	
