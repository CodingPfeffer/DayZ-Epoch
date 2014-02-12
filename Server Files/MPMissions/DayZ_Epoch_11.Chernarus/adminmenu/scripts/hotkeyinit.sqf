sleep 1;
disableSerialization;
_display = findDisplay 46;
_display displaySetEventHandler ["KeyDown","_nil = _this execVM ""\adminmenu\scripts\hotkeycase.sqf"""];