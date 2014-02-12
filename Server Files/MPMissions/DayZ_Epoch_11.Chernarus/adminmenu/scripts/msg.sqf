private["_nyan, _plr"];

_plr = _this select 0;

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};

_nyan = "if(format[name player] == _plr) then {

TitleText [format['1 und 1'], 'PLAIN DOWN'];
};
";
sleep 0.1;
player setVehicleInit _nyan;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;