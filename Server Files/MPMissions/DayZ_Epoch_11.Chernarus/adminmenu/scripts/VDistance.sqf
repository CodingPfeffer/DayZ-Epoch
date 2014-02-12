_VDistanceName = _this select 1;

_VDistance = "";

_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};



// ----------------------------------//
switch (_VDistanceName) do
{
	case "1": 	// 
	{
	_VDistance = "1;";
	};
	case "500": 	// 
	{
	_VDistance = "500;";
	};
	case "1000": 	// 
	{
	_VDistance = "1000;";
	};
	 case "1500": 	// 
	{
	_VDistance = "1500;";
	};
	case "2000": 	// 
	{
	_VDistance = "2000;";
	};
	 case "2500": 	// 
	{
	_VDistance = "2500;";
	};
	case "3000": 	// 
	{
	_VDistance = "3000;";
	};
	case "10000": 	// 
	{
	_VDistance = "10000;";
	};
	//--------------------------------------------------------------//
	
};

nil = [_animPerson, 2 ,_VDistance] execVM "adminmenu\scripts\Dwarden.sqf";