_side = side player;
_side = group player;
_pos = getPos vehicle player;
_dir = getDir vehicle player;

cutText [format["Spawning Heli Squad"], "PLAIN DOWN"];

	
_distance = -700;
[[((_pos) select 0)+_distance*sin(_dir), ((_pos) select 1)+_distance*cos(_dir),300], _dir, 'AH1Z', _side] call bis_fnc_spawnvehicle;sleep 0.1;
_distance = -750;


_dir = _dir + 180;

_distance = -700;
[[((_pos) select 0)+_distance*sin(_dir), ((_pos) select 1)+_distance*cos(_dir),300], _dir, 'AH64D', _side] call bis_fnc_spawnvehicle;sleep 0.1;
