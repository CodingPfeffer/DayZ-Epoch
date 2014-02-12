
_random_obj = ["AV8B2","A10","SU39"] call BIS_fnc_selectRandom;
_obj = _random_obj;
sleep 0.1;
_dir = getdir vehicle player;
_pos = getPosATL vehicle player;
_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
_rid = 999+random(99999);
_object = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
_object setVariable ['ObjectID', _rid, true];
serverObjectMonitor set [count serverObjectMonitor, _object];
_uid = _object call objectUID;
_object setVariable ['ObjectUID', _uid, true];
_object setVariable ['OwnerID', 0, true];
_object setDir _dir;

cutText [format["%1 spawned",_obj], "PLAIN DOWN"];

//_oldcount = (count([6800, 9200, 0] nearEntities [["Air"],25000]));
//waitUntil {(count([6800, 9200, 0] nearEntities [["Air"],25000])) != _oldcount};

_pos = getPos vehicle player;

	player addRating 9999999;
	
	{_x addRating 9999999;} forEach (units group player);
	
	{
		_x addRating -100000;
		
		{
			_x addRating 9999999;
		} forEach (units group player);
	} foreach playableUnits;
	
	{
		_x addRating -100000;
	
		{
			_x addRating 9999999;
		} forEach (units group player);
	} forEach entities "AllVehicles";


private["_driver_star", "_grp"];
_grp = (group player);

_grp allowFleeing 0;
_grp setFormation "LINE";
_grp enableAttack true;
_driver_star= (_grp) createunit ["SurvivorW2_DZ", [_pos select 0, _pos select 1, 0], [], 0, "FORM"];

_driver_star setCombatMode "RED";
_driver_star setBehaviour "CARELESS";
_driver_star allowDammage true;

_driver_star enableAI "MOVE";
_driver_star enableAI "FSM";
_driver_star enableAI "AUTOTARGET";

reload _driver_star;

_driver_star setSkill ["aimingAccuracy",1];
_driver_star setSkill ["aimingShake",1];
_driver_star setSkill ["aimingSpeed",1];
_driver_star setSkill ["endurance",1];
_driver_star setSkill ["spotDistance",1];
_driver_star setSkill ["spotTime",1];
_driver_star setSkill ["courage",1];
_driver_star setSkill ["reloadSpeed",1];
_driver_star setSkill ["commanding",1];
_driver_star setSkill ["general",1];

[_driver_star] join _grp;

_grp setCombatMode "RED";
_grp enableAttack true;

_diesesfahrzeuggeraet = _object;
//_diesesfahrzeuggeraet = (nearestObject[vehicle player,"AIR"]);sleep 0.1;
_driver_star moveInDriver _diesesfahrzeuggeraet;




{_diesesfahrzeuggeraet removeWeapon _x;} forEach (weapons _diesesfahrzeuggeraet);

_diesesfahrzeuggeraet addweapon 'Gau8';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';
_diesesfahrzeuggeraet addMagazine '1350Rnd_30mmAP_A10';


spawning_air_for_ai = false;

sleep 0.1;
_driver_star setSkill 1;

_pos = getPosASL vehicle player;
_dir = getdir vehicle player;
_distance = -3500;
_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)+800];
_diesesfahrzeuggeraet setPosASL _pos;
_diesesfahrzeuggeraet engineOn true;
_dir = getDir _diesesfahrzeuggeraet;
_speed = 300;
_driver_star flyInHeight 450;

sleep 0.5;
_diesesfahrzeuggeraet setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];





while {alive _diesesfahrzeuggeraet} do
{
	_diesesfahrzeuggeraet setvehicleammo 1;

sleep 0.5;
};

sleep 1;

ratingloooooooop_infistar = true;
while {ratingloooooooop_infistar} do 
{
	player addRating 9999999;
	
	{_x addRating 9999999;} forEach (units group player);
	
	{
		_x addRating -100000;
		
		{
			_x addRating 9999999;
		} forEach (units group player);
	} foreach playableUnits;
	
	{
		_x addRating -100000;
	
		{
			_x addRating 9999999;
		} forEach (units group player);
	} forEach entities "AllVehicles";
sleep 1;
};