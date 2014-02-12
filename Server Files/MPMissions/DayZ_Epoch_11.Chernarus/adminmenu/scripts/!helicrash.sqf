player addweapon "ItemGPS";
list_wrecked = allMissionObjects "UH1Wreck_DZ";
if (isnil "f6546544sssh" ) then {f6546544sssh=0};

if (f6546544sssh==0) then
{
hint "Adding Helicrash Markers";
	f6546544sssh=1;
	unitList_wrecked = list_wrecked;
	totalunits_wrecked = count unitList_wrecked;
	CM = true;
	
	while {CM} do
	{
	p = 0;
	yo3 = 0;

		for "p" from 0 to totalunits_wrecked do
		{
		actualunit_wrecked = unitList_wrecked select p; //Car, Helicopter, Boat
			
		deleteMarkerLocal ("Wrecked"+ (str p));
		yo3 = p + 1;
		deleteMarkerLocal ("Wrecked"+ (str yo3));
			
		mark_wrecked = "Wrecked" + (str p); //Car, Boat, Helicopter
		mark_wrecked = createMarkerLocal [mark_wrecked,getPos actualunit_wrecked];
		mark_wrecked setMarkerTypeLocal "waypoint";
		mark_wrecked setMarkerPosLocal (getPos actualunit_wrecked);
		mark_wrecked setMarkerColorLocal "ColorOrange";
		mark_wrecked setMarkerTextLocal "Crashed-Heli";
		};
		sleep 30;
	};
}
else
{
hint "CM Stopping";
	p = 0;
	CM = false;
	f6546544sssh=0;

		for "p" from 0 to totalunits_wrecked do
		{
			deleteMarkerLocal ("Wrecked"+ (str p));
			yo3 = p + 1;
			deleteMarkerLocal ("Wrecked"+ (str yo3));
		};
};