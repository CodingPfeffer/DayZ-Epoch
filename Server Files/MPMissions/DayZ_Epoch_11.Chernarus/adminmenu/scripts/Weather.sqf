_WeathName = _this select 1;

_Weather = "";

_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};



// ----------------------------------//
switch (_WeathName) do
{
	case "Clear":		// Clear
	{
	_Weather = "0";
	};
	case "Partly Sunny":		// Partly Sunny
	{
	_Weather = "0.2";
	};
	case "Cloudy":		// Cloudy
	{
	_Weather = "0.4";
	};
	case "Rain":		// Rain
	{
	_Weather = "0.6";
	};
	case "Heavy Rain":		// Heavy Rain
	{
	_Weather = "0.8";
	};
	case "Storm": 	// Storm
	{
	_Weather = "1";
	};
	//--------------------------------------------------------------//
	
};

nil = [_animPerson, 5 ,_Weather] execVM "adminmenu\scripts\Dwarden.sqf";