_name = _this select 2;

_veh = _this select 3;


_how = "";

if (_name == "") exitwith { hint "YOU MUST!! select a name or EVERYONE for all players"; };

if (_name=="EVERYONE") then {

hint format["%1 sent %2",_veh,_name];

_how = format['"%1" createvehiclelocal ( position player );',_veh];

};

if (_name != "EVERYONE") then {

hint format["%1 sent to %2",_veh,_name];

_how = format['if ( name player == "%1" ) then { "%2" createvehiclelocal ( position player );};',_name,_veh];

};


_nil = [_how] exec "adminmenu\scripts\_do_public.sqs";