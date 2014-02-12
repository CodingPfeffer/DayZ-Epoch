private ["_ownerID", "_myKey", "_gotIT", "_myStr", "_key_colors", "_index", "_key_number", "_item"];
_ownerID = cursorTarget getVariable ["CharacterID","0"];
if(_ownerID != "0") then {
_myKey = -1;
_gotIT = true;
while{_gotIT} do 
{
_myKey = _myKey + 1;
_myStr = str(_myKey);
if (_ownerID == _myStr) then { 
_gotIT = false;
};
};
_key_colors = ["Green", "Red", "Blue", "Yellow", "Black"];
_index = floor(_myKey/ 2500);
_key_number = _myKey - (_index * 2500);
_item = format["ItemKey%1%2", _key_colors select _index, _key_number];
cutText [format["The key %1 has been added to your inventory.",_item], "PLAIN DOWN"];
[player, _item, 1] call BIS_fnc_invAdd;
} else {
cutText [format["There is no key for this vehicle.",_ownerID], "PLAIN DOWN"];
};