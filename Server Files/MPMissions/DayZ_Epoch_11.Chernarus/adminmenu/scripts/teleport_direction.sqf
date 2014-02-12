/*
[infiSTAR -teleport "_distance" meter in direction Script-]
20:00 12/10/12 UTC+1, Germany
v2.0
*/
if (isNil "m0nkyaatp_sadksadxa") then 
{
	[] spawn
	{
		_tempTime = time;
		time = "m0nkyaatp_RANDSTR";
		sleep 3;
		[_tempTime] spawn
		{
		  _tempTime = (_this select 0) + 3;
		  while {true} do
			{
				time = _tempTime;
				_tempTime = _tempTime + 1;
				sleep 1;
			};
		};
	};
};


_distance = 10;
_dir = getdir vehicle player;
_pos = getpos vehicle player;
if (surfaceIsWater getpos vehicle player) then {_pos = getPosASL vehicle player;}else{_pos = getPosATL vehicle player;};

if !("ItemMap" in items player) then {player addweapon "ItemMap";};

if ((vehicle player) isKindOf "Air") then
{	

	if (count(crew (vehicle player))>1) then 
	{ 
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)+100]; 
	} 
	else
	{
		_distance = 50;
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
	};

}
else
{
	if (player != vehicle player) then {_distance = 50;};
	
	if ((_pos select 2) > 5) then 
	{
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
	}
	else
	{
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
	};
};

_Object = (vehicle player);
if (surfaceIsWater _pos) then 
{if (!isNil ("dayz_instance")) then {"respawn_west" setMarkerPos _pos;};_Object setPosASL _pos;if (!isNil ("dayz_instance")) then {"respawn_west" setMarkerPos _pos;};}else
{if (!isNil ("dayz_instance")) then {"respawn_west" setMarkerPos _pos;};_Object setPosATL _pos;if (!isNil ("dayz_instance")) then {"respawn_west" setMarkerPos _pos;};};




cutText [format["Teleported %1m in direction", _distance], "PLAIN DOWN"];