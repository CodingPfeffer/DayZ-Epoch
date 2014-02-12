private["_svr, _plr, _case"];
_plr = _this select 0;
_case = _this select 1;
if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};

Switch (_case) do

{
case "Break Legs":
{
hint "Breaking Legs";

_svr = "if(format[name player] == _plr) then {
player setHit ['legs',1];
player setVariable ['hit_legs',2,true];
player setVariable['medForceUpdate',true,true];

};
";

sleep 0.1;
player setVehicleInit _svr;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;

};

Case "Fix Legs":
{
hint "Fixing";

_svr = "if(format[name player] == _plr) then {
player setHit ['legs',0];
player setVariable ['hit_legs',0,false];
player setVariable['medForceUpdate',true,true];

};
";

sleep 0.1;
player setVehicleInit _svr;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;

};

};