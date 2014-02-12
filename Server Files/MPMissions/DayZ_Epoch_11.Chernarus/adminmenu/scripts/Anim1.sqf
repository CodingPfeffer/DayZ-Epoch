_actionName = _this select 1;


_actionClass = "";


_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};


if (_animPerson == "ALL PLAYERS") then {_animPerson = "";};

if (_animPerson == "EVERYONE BUT ME") then {_animPerson = "FUCKEMGRANDPAIHATEJEWS";};


// ----------------------------------//

switch (_actionName) do

{
	
// Defualt //
	
case "Back to Normal":
	
{
		
_actionClass = "";
	
};
	
// --- //
	
	
// Acin ... //
	
	case "Standing still while dragging another unit":

	{
		
	_actionClass = "AcinPknlMstpSrasWrflDnon";

	};

	case "Walking backwards while dragging another unit":

	{
		
	_actionClass = "AcinPknlMwlkSrasWrflbd";

	};

	// --- //

	// Acts.. //

	case "(delayed beginning) Standing with hands bound, then moving":

	{
		
	_actionClass = "ActsPercMstpSnonWunaDnon_sceneNikitinDisloyalty_Miles";

	};

	case "Pacing with rifle in on hand, walking in the air, then falling dead":

	{

	_actionClass = "ActsPercMstpSlowWrflDnon_sceneNikitinDisloyalty_Homeless";

	};
	
	case "Executing a prisoners, giving orders, then walking off":

	{
	
	_actionClass = "ActsPercMstpSlowWpstDnon_sceneNikitinDisloyalty_Lopotev2";

	};
	
	case "(Evasive) Running forward and performing combat roll":

	{
	
	_actionClass = "ActsPercMrunSlowWrflDf_FlipFlopPara";

	};

	case "(Evasive) Side-stepping to the right":
	
	{
	
	_actionClass = "AmovPercMstpSlowWrflDnon_ActsPercMstpSlowWrflDr_HideFromFire";

	};
	
	// --- //

	

	// Adth... //

	case "Standing with weapon lowered, falls back dead":

	{
	
	_actionClass = "AdthPercMstpSlowWrf_beating";

	};

	case "Standing with rifle raised, falls back dead":

	{
	
	_actionClass = "AdthPercMstpSrasWrflDnon_NikitinDead";

	};

	// --- //

	
	// Aidl ... //

	case "Speaking (no weapons)":

	{
	
	_actionClass = "AidlPercSnonWnonDnon_talk1";

	};
	
	case "Lay down on back":
	
	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepA_layDown";

	};
	
	case "Standing up from lying on back":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepA_standUp";

	};

	case "Dying while lying on back":

	{

		_actionClass = "AidlPpneMstpSnonWnonDnon_SleepA_death";

	};

	case "Lying down on back, not sleeping":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepB_layDown";

	};

	case "Dying":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepB_death";

	};

	case "Trying to kill a fly, slapping his leg":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepC_killFly";

	};

	case "Lying down on side, head propped on arm":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepC_layDown";

	};

	case "Standing up from lying on side":

	{
	
	_actionClass = "AidlPpneMstpSnonWnonDnon_SleepC_standUp";

	};

	// --- //

	// Amov... //

	case "Full workout":

	{
	
	_actionClass = "AmovPercMstpSnonWnonDnon_idle56kliky";

	};

	case "Boxing":

	{
	
	_actionClass = "AmovPercMstpSnonWnonDnon_idle68boxing";

	};

	case "Squat, jump, stretch, kick only":

	{

	_actionClass = "AmovPercMstpSnonWnonDnon_idle69drepy";

	};

	case "Hand-stands":

	{
	
	_actionClass = "AmovPercMstpSnonWnonDnon_idle70chozeniPoRukou";

	};

	case "Pushups + getting tired":

	{
	
	_actionClass = "AmovPercMstpSnonWnonDnon_idle71kliky";

	};

	case "Situps":

	{
	
	_actionClass = "AmovPercMstpSnonWnonDnon_idle72lehSedy";

	};

	case "Salute":

	{

	_actionClass = "AmovPercMstpSlowWrflDnon_Salute";
	};

	case "Sprinting":

	{
	
	_actionClass = "amovpercmevasraswrfldf";

	};

	case "Running":

	{

	_actionClass = "amovpercmrunsraswrfldf";

	};

	case "Sitting smoking":

	{
	
	_actionClass = "amovpsitmstpsraswrfldnon_smoking";

	};

	case "Sitting checking weapon":

	{
	
	_actionClass = "amovpsitmstpsraswrfldnon_weaponcheck1";

	};

	// --- //


	// Misc //

	case "Lying on face with hands behind back (not animated)":

	{
	
	_actionClass = "CivilLying01";

	};

	case "Clapping with both hands above head":

	{
	
	_actionClass = "c7a_bravo_dovadeni1";

	};

	// --- //

};


nil = [_animPerson, 10 ,_actionClass] execVM "adminmenu\scripts\Dwarden.sqf";