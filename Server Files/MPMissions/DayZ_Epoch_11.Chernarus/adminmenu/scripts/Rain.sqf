_RainName = _this select 1;

_Rain = "";

_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};



// ----------------------------------//
switch (_RainName) do
{
	case "NoRain":		// Clear
	{
	_Rain = "0";
	};
	case "Partly Rain":		// Partly Sunny
	{
	_Rain = "0.20";
	};
	case "A little Rain":		// Cloudy
	{
	_Rain = "0.40";
	};
	case "Rain":		// Rain
	{
	_Rain = "0.60";
	};
	case "Heavy Rain":		// Heavy Rain
	{
	_Rain = "0.80";
	};
	case "Mega Rain": 	// Storm
	{
	_Rain = "1";
	};
	//--------------------------------------------------------------//
	
};

nil = [_animPerson, 8 ,_Rain] execVM "adminmenu\scripts\Dwarden.sqf";