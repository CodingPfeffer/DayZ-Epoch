if (isNil "nb") then		//CP01_intro
{
	nb = 0;
};

if (nb == 0) then
{
	nb = 1;
	hint "Starting News Banner";
	_text = "[""Es"", ""folgt"", ""eine Info""] spawn BIS_fnc_infoText;";
	[_text] execVM "adminmenu\scripts\runMagicaly.sqf";
	sleep 3;
	_news = "[parseText ""<t size='2.3'>BEARBEITE MICH IM ORDNER SCRIPTE</t><br />-by Emp1985"",parseText ""<t size='1.5'>BE Always friendly, TraderUpdate, Events, AI, SectorFNG, HeliPatrols, Much More,</t>""] spawn BIS_fnc_AAN;";
	[_news] execVM "adminmenu\scripts\runMagicaly.sqf";
	sleep 3;
	_vid = "[""\ca\video_pmc\CP10b_reynolds.ogv"", 1.04] spawn BIS_fnc_customGPSvideo;"; 
	[_vid] execvm "adminmenu\scripts\runMagicaly.sqf";
}

else
{
	nb = 0;
	hint "Removing News Banner";
	_news = "3000 cutRsc [""Default"", ""PLAIN"", 2];";
	[_news] execVM "adminmenu\scripts\runMagicaly.sqf";
};