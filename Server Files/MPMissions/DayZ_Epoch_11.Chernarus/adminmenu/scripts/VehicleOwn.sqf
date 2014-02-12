_animName = _this select 1;

_animPerson = _this select 0;

_animClass = "";

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};
if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};




// ----------------------------------//
switch (_animName) do
{
	
	case "Kill Player(s)":
	{
		_animClass = "player setdamage 1"
	};
	case "LockAir":
	{
		_animClass = "nearestObject[vehicle player,""Air""] lock true;"
	};
	case "UnlockAir":
	{
		_animClass = "nearestObject[vehicle player,""Air""] lock false;"
	};
    case "LockTank":
	{
		_animClass = "nearestObject[vehicle player,""Tank""] lock true;"
	};
	case "UnlockTank":
	{
		_animClass = "nearestObject[vehicle player,""Tank""] lock false;"
	};
	case "LockCar":
	{
		_animClass = "nearestObject[vehicle player,""Car""] lock true;"
	};
	case "UnlockCar":
	{
		_animClass = "nearestObject[vehicle player,""Car""] lock false;"
	};
	case "LockMan":
	{
		_animClass = "disableUserInput true;"
	};
	case "UnlockMan":
	{
		_animClass = "disableUserInput false;"
	};
	case "HitBackRottor":
	{
		_animClass = "vehicle player setHit [""mala vrtule"", 1];"
	};
	case "HitChopperEngine":
	{
		_animClass = "vehicle player setHit [""motor"", 1];" 
	};
	case "DestroyAir":
	{
		_animClass = "nearestObject[vehicle player,""Air""] setdamage 1;"
	};
	case "DestroyCar":
	{
		_animClass = "nearestObject[vehicle player,""Car""] setdamage 1;" 
	};
	case "DestroyTank":
	{
		_animClass = "nearestObject[vehicle player,""Tank""] setdamage 1;" 
	};
	case "DestroyBuilding":
	{
		_animClass = "nearestObject[vehicle player,""Building""] setdamage 1;" 
	};
	case "EjectPlayer":
	{
		_animClass = "player Action [""eject"", vehicle player];"
	};
	
			case "Be a cop":	// Be COP
	{_animClass ="
		rolecop = 0;
		if (civ1 == player) then {role = cop1; rolestring = ""cop1""; rolecop = 1; iscop = TRUE; rolenumber = 11; rolecopnumber = 1; longrolenumber = 1101;};
		if (civ2 == player) then {role = cop2; rolestring = ""cop2""; rolecop = 1; iscop = TRUE; rolenumber = 12; rolecopnumber = 2; longrolenumber = 1102;};
		if (civ3 == player) then {role = cop3; rolestring = ""cop3""; rolecop = 1; iscop = TRUE; rolenumber = 13; rolecopnumber = 3; longrolenumber = 1103;};
		if (civ4 == player) then {role = cop4; rolestring = ""cop4""; rolecop = 1; iscop = TRUE; rolenumber = 14; rolecopnumber = 4; longrolenumber = 1104;};
		if (civ5 == player) then {role = cop5; rolestring = ""cop5""; rolecop = 1; iscop = TRUE; rolenumber = 15; rolecopnumber = 5; longrolenumber = 1105;};
		if (civ6 == player) then {role = cop6; rolestring = ""cop6""; rolecop = 1; iscop = TRUE; rolenumber = 16; rolecopnumber = 6; longrolenumber = 1106;};
		if (civ7 == player) then {role = cop6; rolestring = ""cop6""; rolecop = 1; iscop = TRUE; rolenumber = 16; rolecopnumber = 6; longrolenumber = 1106;};
		if (civ8 == player) then {role = cop6; rolestring = ""cop6""; rolecop = 1; iscop = TRUE; rolenumber = 16; rolecopnumber = 6; longrolenumber = 1106;};
		if (civ9 == player) then {role = cop6; rolestring = ""cop6""; rolecop = 1; iscop = TRUE; rolenumber = 16; rolecopnumber = 6; longrolenumber = 1106;};
		if (civ10 == player) then {role = cop6; rolestring = ""cop6""; rolecop = 1; iscop = TRUE; rolenumber = 16; rolecopnumber = 6; longrolenumber = 1106;};
		"
	};
	case "Add Cash":	// Add Cash
	{
		_animClass ="Kontostand = (Kontostand+1000000);['moneh', 1002525] call INV_addinventoryitem; add_civmoney	 = 1002525;add_copmoney	 = 1002525; add_workplace	 = 1002525;"
		

	};
		case "Add Cash 12143":	// Add Cash
	{
		_animClass ="Kontostand = (Kontostand+12143); ['moneh', 12143] call INV_addinventoryitem; add_civmoney	 = 12143; add_copmoney	 = 12143;add_workplace	 = 12143;"
		

	};
		case "Remove Cash":	// Add Cash
	{
		_animClass ="Kontostand = 1; Geld=0; geld=0; copfgeld=0;['moneh', -99999999] call INV_addinventoryitem;add_civmoney	 = -999999999;add_copmoney	 = -99999999999;add_workplace	 = -99999999999;"
		};
	case "Faster Respawn": // Faster Respawn
	{
	_animClass ="
		extradeadtime=0;
		suicidepenalty=0;
		DeadTimeMax=5;
		"
	};
		case "Longer Respawn": // Faster Respawn
	{
	_animClass ="
		extradeadtime=99990;
		suicidepenalty=99990;
		DeadTimeMax=99990;
		"
	};
	case "Infinite Petrol": // Infinite Petrol
	{
		_animClass ="petroluse=0;
		"
	};
	case "Anti-Stun": // Anti-Stun
	{
	_animClass ="
		StunTimePerHit=0;
		MaxStunTime=0;
		"
	};
		case "GiveTank": // GiveTank
	{
	_animClass ="
		
		_veh = 'su25_tk_ep1' createVehicleLocal (position player);		_veh setVariable ['ObjectID',999+random(9999),true] > 0;TitleText ['', 'PLAIN DOWN'];
		"
	};
			case "GiveHelicopter": // GiveTank
	{
	_animClass ="
		
		_veh = 'AH6J_EP1' createVehicleLocal (position player);		_veh setVariable ['ObjectID',999+random(9999),true] > 0;TitleText ['poop on my chest ', 'PLAIN DOWN'];
		"
	};
	
	
	
};
//hint format ["%1 , %2 , %3",_animPerson,_animName,_animClass];
nil = [_animPerson, 11 ,_animClass] execVM "adminmenu\scripts\Dwarden.sqf";