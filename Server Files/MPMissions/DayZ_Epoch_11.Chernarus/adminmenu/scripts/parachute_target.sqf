/*
created by infiSTAR aka iniinfi

explanation:
Select a player in Wuats, execute this script on 
him and you can choose a position on the map where he will 
get teleported in 100m up from the ground and hanging at on a parachute.

working at 19:29 08/10/12 UTC+1, Germany
*/

_plr = _this select 0;

_case = _this select 1;

_class = "";

private["_pList", "j", "i", "_pArray", "v"];

_pList = playableUnits;
j = count _pList;
i = 0;
_pArray = [];

for "i" from 0 to j do
{
v= _pList select i;
if(format[name v] == _plr) then {

vehv = (vehicle v);

}
};

abcd={

_pos = [_pos select 0, _pos select 1, 100];

_chute= createvehicle ["ParachuteC", [(_pos) select 0,(_pos) select 1], [], 0, "FLY"];


vehv attachTo [_chute, [0,0,0]];

	onMapSingleClick "";
	openMap [false, false];
};

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call abcd";

hint "Omg er fliegt ausgefuehrt";

_plr = "";