player addweapon "ItemGPS";
if (isnil "fffffffffff" ) then {fffffffffff=0};

if (fffffffffff==0) then
{
hint "Adding Player Markers";
	fffffffffff=1;
	unitList = allUnits;
	j = count unitList;
	i = 0;
	markPos = true;

	while {markPos} do
	{ 
	unitList = allUnits;
	j = count unitList;
	i = 0;
		
		for "i" from 0 to j do
		{
			deleteMarkerLocal ("playerMarker"+ (str i));
			unit = unitList select i;
			
			if ( isPlayer unit ) then 
			{
				pos = position unit;
				marker = "playerMarker" + (str i);
				marker = createMarkerLocal [marker,pos];
				marker setMarkerTypeLocal "waypoint";
				marker setMarkerPosLocal (pos);
				marker setMarkerColorLocal("ColorBlue");
				marker setMarkerTextLocal format ["%1",name unit];
			};
		};
		sleep 1;
	};
}
else
{
hint "Player Marking Stopping";
fffffffffff=0;
Markpos = false;
for "i" from 0 to j do
{
deleteMarkerLocal ("playerMarker"+ (str i));
};
};