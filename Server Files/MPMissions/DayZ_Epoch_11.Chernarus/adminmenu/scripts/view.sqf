_animName = _this select 1;

_animPerson = _this select 0;

_animClass = "";

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};



switch (_animName) do
{
case "Viewshort";
{
_animClass = "40;";
};
case "Viewfar";
{
_animClass = "10000;";
};

};
nil = [_animPerson, 2, _animclass] execVM "adminmenu\scripts\Dwarden.sqf";