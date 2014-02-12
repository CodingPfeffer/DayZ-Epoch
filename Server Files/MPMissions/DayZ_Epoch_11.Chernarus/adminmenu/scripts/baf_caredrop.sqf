/*
Made by:
BobSaget
*/

closeDialog 0;
titleText ["Click On The Map", "PLAIN DOWN"]; titleFadeOut 4;
carebear=
 
    {
        onMapSingleClick hint format ["CarePackage Called In @\n%1" ,_pos];
        for "_i" from 0 to 0 do
        {
            _pos1 =  [(_pos select 0), (_pos select 1), 100];
            
			sleep 1;
			_box = "BAF_BasicWeapons" createVehicle _pos1;
			
			sleep 1;
			_chute = createVehicle ["ParachuteC", [(_pos1) select 0,(_pos1) select 1], [], 0, "FLY"];
        
			[]spawn
			sleep 1;
			vehC = nearestObjects [vehicle player, ["BAF_BasicWeapons"], 150];
			vehD = nearestObjects [vehicle player, ["ParachuteC"], 500];
			veh = vehC select 0;
			chute = vehD select 0;
			veh attachTo [chute, [0,0,1.5]];
			
		};
 
        onMapSingleClick "";
            openMap [false, false];
    };
 
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call carebear";