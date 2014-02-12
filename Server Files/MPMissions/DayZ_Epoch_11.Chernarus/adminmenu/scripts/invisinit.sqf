_invis = "";

if (isNil "omgwtfbbq") then {omgwtfbbq = 0;};

if (omgwtfbbq==0) then
{
	_invis = True;
	omgwtfbbq=1;
}
	else
{
	_invis = False;
	omgwtfbbq=0;
};

nil = [_invis] execVM "adminmenu\scripts\invis.sqf";