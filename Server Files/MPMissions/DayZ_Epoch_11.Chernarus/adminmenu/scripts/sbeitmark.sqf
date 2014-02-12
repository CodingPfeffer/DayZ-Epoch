TitleText [format["THE FAGGOTS GUIDE TO THE GALAXY"], "PLAIN DOWN"];

private["_mapDrawEvent", "_unitList", "_vehList", "_i", "_j", "_unit", "_veh", "_markerName", "_marker", "_localPlayerVehicle"];

_mapDrawEvent = 
{
	_unitList = allUnits;
	_i = 0;
	_j = count _unitList;
	
	for "_i" from 0 to _j do
	{
		_unit = _unitList select _i;
		
		_markerName = ("_playerMark" + (str _i));
		
		deleteMarkerLocal _markerName;
		
		_unit setVariable ["_markerName", _markerName, false];
		
		// Don't include the local player or players in vehicles in this
		if(isNull assignedVehicle _unit && player != _unit) then {
			_marker = createMarkerLocal [_markerName, position _unit];
			
			_marker setMarkerTypeLocal "mil_dot";
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerPosLocal (position _unit);
			_marker setMarkerColorLocal ("ColorRed");
			_marker setMarkerTextLocal format["%1", name _unit];
			_marker setMarkerSizeLocal  [0.8, 0.8];
		}
	};
	
	_vehList = vehicles;
	_i = 0;
	_j = count _vehList;
	
	for "_i" from 0 to _j do
	{
		_veh = _vehList select _i;

		_markerName = ("_vehMark" + (str _i));
		
		deleteMarkerLocal _markerName;
		
		_veh setVariable ["_markerName", _markerName, false];
		
		_marker = createMarkerLocal [_markerName, position _veh];
		
		// Setup information
		_marker setMarkerTypeLocal "mil_dot";
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerPosLocal (position _veh);
		
		// if occupied, it's green, if not, its yellow
		if(count (crew _veh) > 0) then {
			_marker setMarkerColorLocal ("ColorGreen");
		} else {
			_marker setMarkerColorLocal ("ColorYellow");
		}
		
		_marker setMarkerTextLocal format["%1", (getText (configFile >> "CfgVehicles" >> typeOf _veh >> "displayName"))];
		_marker setMarkerSizeLocal  [1.5, 1.5];
	};
	
	deleteMarkerLocal "_mainPlayerMarker";
	
	_localPlayerVehicle = assignedVehicle player;
	
	// Delete the local player vehicle marker if it's around
	if(!isNull _localPlayerVehicle) then {
		deleteMarkerLocal _localPlayerVehicle getVariable["_markerName", "invalidMarker"];
	}

	// Draw ourselves nukka
	_marker = createMarkerLocal["_mainPlayerMarker", position player];
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerPosLocal (position player);
	_marker setMarkerColorLocal ("ColorBlue");
	_marker setMarkerTextLocal "YOURSELF";
	_marker setMarkerSizeLocal [2.0, 2.0];
};

while{true} do
{
	call _mapDrawEvent;
	
	sleep 1;
};