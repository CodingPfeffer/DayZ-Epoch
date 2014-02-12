_FogName = _this select 1;

_FogClass = "";

_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};



// ----------------------------------//
switch (_FogName) do
{
	case "Off": 	// 
	{
	_FogClass = "0;";
	};
	case "fog 20%": 	// 
	{
	_FogClass = "0.20;";
	};
	case "fog 40%": 	// 
	{
	_FogClass = "0.40;";
	};
    case "fog 60%": 	// 
	{
	_FogClass = "0.60;";
	};
	case "fog 80%": 	// 
	{
	_FogClass = "0.80;";
	};
	case "fog 100%": 	// 
	{
	_FogClass = "1;";
	};
	//--------------------------------------------------------------//
	
};

nil = [_animPerson, 3 ,_FogClass] execVM "adminmenu\scripts\Dwarden.sqf";