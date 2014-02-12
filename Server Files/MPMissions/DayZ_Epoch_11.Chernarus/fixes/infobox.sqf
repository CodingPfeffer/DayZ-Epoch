// ======= SCRIPT VERSION: v1.1 =======
// SERVER WELCOME MESSAGE IN CREDITS STYLE edited for DayZ by IT07
// ORIGINAL SCRIPT BY: Bohemia Interactive, British Armed Forces Campaign Mission 1
// IT07 does NOT take credit for original script, he only modified it so it works for DayZ
// ==================

// ======= Customization =======
// ADDING MORE MESSAGES:
// if you add more messages than already here, add a _role that is named +1 more than the last one.
// Be careful, if you add a role here below, also add it to the } forEach [ list that's on the bottom.
// CHANGING TRANSITION TIMES:
// where it says: _onScreenTime = 1 + (((count _memberNames) - 1) * 0.5); change the 0.5 to whatever value you want.
// 1.0 for example is already a lot slower, so be careful changing this.
// when you have changed this value, enter the same value where it says:
// _onScreenTime, 0.5
// =============================

// SCRIPT START
waituntil {!isnull (finddisplay 46)}; // Makes the script start when player is ingame

sleep 35; // wait 15 before the welcome message starts (in seconds)

_role1 = "Willkommen";		 //you can change all in ""
_role1names = ["YOUR-MESSAGE"];  
_role2 = "Serverinhaber";
_role2names = ["SERVEROWNER"];
_role3 = "ADMINS";
_role3names = ["1 Admin","2 Admin","3 Admin"];
_role4 = "Spender";
_role4names = ["1. Spender","2 Spender"];
_role5 = "TS 3 und Homepage";
_role5names = ["www.SEITE.de"];
_role6 = "Einstellung";
_role6names = ["Day and Night","Veteran","Waypoints on","Halo spwan","Trader Safezone"];
_role7 = "Scripts ";
_role7names = ["AI","Missions","Lift- und Towing","Debug Monitor","Selfblood","Suicide","Burry NPCs","Grave Cross","Salvage vehicles","and more"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.45' color='#FF0000' align='left'>%1<br /></t><t size='0.1'><br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.45' color='#FF0000' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime = 1 + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.5,0.35],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.9
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names], 
[_role6, _role6names],
[_role7, _role7names]// Keep this one in mind, NO COMMA on the last role
]; 