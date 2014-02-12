switch (_this select 1) do
{
case 59:
{
execvm "\adminmenu\scripts\teleport.sqf";
};
case 60:
{
execvm "\adminmenu\scripts\Godmode.sqf";
sleep 0.2;
execvm "\adminmenu\scripts\!Dayz.sqf";
};
case 61:
{
execvm "\adminmenu\scripts\ammo.sqf";
};
case 62:
{
execvm "\adminmenu\scripts\gear.sqf";
};
case 63:
{
execvm "\adminmenu\scripts\nozombies.sqf";
};
case 64:
{
execvm "\adminmenu\scripts\zshield.sqf";
};
case 65:
{
execvm "\adminmenu\scripts\pshield.sqf";
};
case 66:
{
hint "";
TitleText [format["F1-Teleport   :   F2-Godmode   :   F3-Inf Ammo   :   F4-Gear   :                  F5-Toggle Zombie Spawn   :   F6-Zombie Shield   :   F7-Player Shield   :   F8-Help"], "PLAIN DOWN"];
sleep 10;
};
};
