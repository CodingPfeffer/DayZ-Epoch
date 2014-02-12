
sleep 2; // wait 15 before the welcome message starts (in seconds)
_role1 = "Serverowner";
_role1names = ["NAME"];
_role2 = "ADMINS";
_role2names = ["ADMIN 1","ADMIN 2"];
_role3 = "Moderatoren";
_role3names = ["1 Mod","2 Mod","3 Mod"];
_role4 = "Platzhalter";
_role4names = [""];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.45' color='#00FF00' align='right'>%1<br /></t><t size='0.1'><br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.45' color='#00FF00' align='right'>";
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
[_role4, _role4names]
]; 