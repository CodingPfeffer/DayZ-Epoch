if (isnil "fsdandposanpsdaon" ) then {fsdandposanpsdaon=0};

if (fsdandposanpsdaon==0) then
{
	player addweapon "ItemGPS";
	fsdandposanpsdaon=1;
};

closedialog 0;
sleep 0.5;
TitleText [format["Click on the map where you want parabus"], "PLAIN DOWN"];

openMap [true, false];


sCode = 'hint "busses incoming";';
sCode = sCode + ' _pos = [(cTargetPos select 0), (cTargetPos select 1), 100];';
sCode = sCode + ' PLANE1 = createVehicle ["C130J", [(_pos) select 0,(_pos) select 1,500], [], 0, "FLY"];';
sCode = sCode + 'cpbLoops = random 50;';
sCode = sCode + 'cpLoopsDelay = 0.13;';
sCode = sCode + 'for "_i" from 0 to cpbLoops do {';
sCode = sCode + ' _pos1 = [(cTargetPos select 0)+random 100, (cTargetPos select 1)+random 100];';
sCode = sCode + ' _chute= createvehicle ["ParachuteC", [(_pos1) select 0,(_pos1) select 1], [], 0, "FLY"];';
sCode = sCode + ' _bus = createVehicle ["Ikarus", [(_pos1) select 0,(_pos1) select 1,152], [], 0, "FORM"];';
sCode = sCode + ' _bus attachTo [ _chute, [0,0,0]];' ;
sCode = sCode + 'sleep cpLoopsDelay;};';
sCode = sCode + 'cTargetPos = nil;cpbLoops = nil;cpLoopsDelay = nil;';

onMapSingleClick "cTargetPos = _pos;[] spawn compile sCode; onMapSingleClick '';true;";