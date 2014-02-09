private["_position","_veh","_num","_config","_itemType","_itemChance","_weights","_index","_iArray"];
 
 
if (isDedicated) then {
  diag_log(format["CAREPACKAGE URAL: IN FILE"]);
    _position = [getMarkerPos "center",0,4000,10,0,2000,0] call BIS_fnc_findSafePos; 
    _randomvehicle = ["UralWreck","UralWreck","UralWreck"] call BIS_fnc_selectRandom;
    _vehicleloottype = ["Industrial"] call BIS_fnc_selectRandom;
 
    _veh = createVehicle [_randomvehicle,_position, [], 0, "CAN_COLLIDE"];
    dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_veh];
    _veh setVariable ["ObjectID",1,true]; 
 
    if (_randomvehicle == "UralWreck") then { _num = round(random 3) + 3; };
    if (_randomvehicle == "UralWreck") then { _num = round(random 6) + 4; };
    if (_randomvehicle == "UralWreck") then { _num = round(random 12) + 5; };
 
  diag_log(format["CAREPACKAGE URAL: rv: '%1', pos: '%2',vlt :'%3'", str(_randomvehicle), str(_position), str(_vehicleloottype)]);
    switch (_vehicleloottype) do {
        case "Industrial": {   
    _itemType = [["WeaponHolder_PartGeneric", "object"], ["WeaponHolder_PartFueltank", "object"], ["WeaponHolder_PartWheel", "object"], ["WeaponHolder_PartEngine", "object"], ["WeaponHolder_PartGlass", "object"], ["WeaponHolder_PartVRotor", "object"], ["ItemToolbox", "weapon"], ["ItemToolbox", "weapon"], ["ItemToolbox", "weapon"], ["WeaponHolder_ItemJerrycan", "object"], ["", "Industrial"], ["ItemGPS", "weapon"]];                   
        };
    };
 
    diag_log(format["CAREPACKAGE URAL Medic: Spawning a " + str (_randomvehicle) + " at " + str(_position) + " with loot type " + str(_vehicleloottype) + " With total loot drops = " + str(_num)]);
 
    itemTypeCount = (count _itemType) - 1;
    for "_x" from 1 to _num do {
        _index = random itemTypeCount;
        sleep 1;
        if (count _itemType > _index) then {
            _iArray = _itemType select _index;
            _iArray set [2,_position];
            _iArray set [3,10];
            _iArray call spawn_loot;
            _nearby = _position nearObjects ["WeaponHolder",20];
            {
                _x setVariable ["permaLoot",true];
            } forEach _nearBy;
        };
    };
 
 
};