TitleText [format["RICER WHEELS BRO"], "PLAIN DOWN"];
_veh = "ZU23_TK_GUE_EP1";
_veh_type=_veh;
_dir = getdir vehicle player;
_pos = getPos vehicle player;
_pos = [(_pos select 0)-5*sin(_dir),(_pos select 1)-5*cos(_dir),0]; // 50 meters behind
_xos = _pos select 0;
_yos = _pos select 1;
_zos = _pos select 2;
_rid = 999+random(9999);
_svr = format["
if (isServer) then {
_object = createVehicle ['%1', [%2, %3, %4], [], 0, 'CAN_COLLIDE']; 
_object setVariable ['ObjectID', %5, true];
dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
_uid = _object call dayz_objectUID;
_object setVariable ['ObjectUID', _uid, true];
_object setVariable ['OwnerID', 0, true];
}", _veh_type, _xos, _yos, _zos, _rid];


sleep 0.1;
player setVehicleInit _svr;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;