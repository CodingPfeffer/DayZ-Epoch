private ["_itemsPlayer","_temp_Keys","_temp_keysDisplayName","_temp_keysDisplayNameParse","_key_colors","_ownerKeyId","_carKey","_hasKey","_cTarget","_keyName","_carKeyName","_targetVehicleKey","_temp_keysParse"];
waitUntil {!isNil "dayz_animalCheck"};

/////////////////////////////////////////////////
/////////////////////////////////////////////////
// Edit these settings to fit your needs/likes //
/////////////////////////////////////////////////
/////////////////////////////////////////////////
///// Claim Vehicles that does not need Key /////
///////// 0 = Not allowed | 1 = Allowed /////////
vkc_claiming = 0;
/////////////////////////////////////////////////
/////// Need KeyKit to use this function ////////
////////// 0 = Not needed | 1 = Needed //////////
vkc_keykit = 1;
/////////////////////////////////////////////////
/////////////// DONT EDIT BELOW ! ///////////////
/////////////////////////////////////////////////

ON_fnc_vkc_reset = {
	_cTarget = objNull;
	_itemsPlayer = [];
	_temp_keys = [];
	_carKey = objNull;
	_hasKey = false;
	_temp_keysDisplayName = [];
	_temp_keysDisplayNameParse = [];
	_temp_keysParse = [];
	_targetVehicleKey = objNull;
	_carKeyName = "";
	player removeAction s_player_copyToKey;
	s_player_copyToKey = -1;
};

while{true} do {
	sleep 3;
	if (!isNull cursorTarget && speed player <= 1 && (vehicle player) == player && !isEngineOn cursorTarget && (cursorTarget isKindOf "Car" || cursorTarget isKindOf "Air" || cursorTarget isKindOf "Ship") && (cursorTarget distance player) <= 10) then {
		_cTarget = cursorTarget;
		_itemsPlayer = items player;
		if ((lastKeyChangeCursorTarget select 0) != _cTarget) then {
			if (s_player_copyToKey >= 0) then {
				player removeAction s_player_copyToKey;
				s_player_copyToKey = -1;
			};
		};
		lastKeyChangeCursorTarget set [0,_cTarget];
		_carKey = _cTarget getVariable ["CharacterID","0"];
		if ((("ItemKeyKit" in _itemsPlayer && vkc_keykit == 1) || vkc_keykit == 0) && ((_carKey == "0" && vkc_claiming == 1) || _carKey != "0")) then {
			if (_carKey == "0" && vkc_claiming == 1) then {
				//_itemsPlayer = items player;
				_temp_keys = [];
				_temp_keysDisplayName = [];
				_temp_keysDisplayNameParse = [];
				_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
				{
					if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
						_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
						_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
						_temp_keysDisplayName set [count _temp_keysDisplayName,_keyName];
						_temp_keys set [count _temp_keys,str(_ownerKeyId)];
					};
				} forEach _itemsPlayer;
				if ((count _temp_keys) > 0) then {
					if (s_player_copyToKey < 0) then {
						lastKeyChangeCursorTarget set [0,_cTarget];
						s_player_copyToKey = player addAction [("<t color=""#0000FF"">" + ("Change Vehicle Key") + "</t>"),"custom\VehicleKeyChanger\VehicleKeyChanger.sqf",[_cTarget, _temp_keys, "0", _temp_keysDisplayName, "0", "0"],-1,false,false,"",""];
					};
				} else {
					[] call ON_fnc_vkc_reset;
				};
			};
			if (_carKey != "0") then {
				_temp_keys = [];
				_temp_keysDisplayName = [];
				_temp_keysDisplayNameParse = [];
				_temp_keysParse = [];
				_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
				{
					if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
						_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
						_keyName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
						_temp_keysDisplayName set [count _temp_keysDisplayName,_keyName];
						_temp_keysDisplayNameParse set [_ownerKeyId,_keyName];
						_temp_keys set [count _temp_keys,str(_ownerKeyId)];
						_temp_keysParse set [_ownerKeyId, _x];
					};
				} forEach _itemsPlayer;
				_hasKey = _carKey in _temp_keys;
				if (_hasKey && (count _temp_keys) > 1) then {
					_carKeyName = (_temp_keysDisplayNameParse select (parseNumber _carKey));
					_targetVehicleKey = (_temp_keysParse select (parseNumber _carKey));
					_temp_keys = _temp_keys - [_carKey];
					_temp_keysDisplayName = _temp_keysDisplayName - [_carKeyName];
					if (s_player_copyToKey < 0) then {
						lastKeyChangeCursorTarget set [0,_cTarget];
						s_player_copyToKey = player addAction [("<t color=""#0000FF"">" + ("Change Vehicle Key") + "</t>"),"custom\VehicleKeyChanger\VehicleKeyChanger.sqf",[_cTarget, _temp_keys, _carKey, _temp_keysDisplayName, _carKeyName, _targetVehicleKey],-1,false,false,"",""];
					};
				} else {
					[] call ON_fnc_vkc_reset;
				};
			};
		} else {
			[] call ON_fnc_vkc_reset;
		};
	} else {
		lastKeyChangeCursorTarget = [objNull,objNull,objNull,objNull,objNull];
		[] call ON_fnc_vkc_reset;
	};
};
