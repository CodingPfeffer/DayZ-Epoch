nukeDONEstar_cherno = false;

_exec = 'if (isServer) then
{
	[] spawn
	{
        call compile (''[nil, nil, rSP''+''AWN, [], {
nukepos = "old_bike_tk_civ_ep1" cre''+''ate''+''Vehi''+''cle [6437,2714,0];
nukev=false;
nukeDONEstar_cherno = false;


quake = {

		for "_i" from 0 to 140 do {
			_vx = vectorup _this select 0;
			_vy = vectorup _this select 1;
			_vz = vectorup _this select 2;
			_coef = 0.03 - (0.0001 * _i);
			_this setve''+''ctorup [
				_vx+(-_coef+random (2*_coef)),
				_vy+(-_coef+random (2*_coef)),
				_vz+(-_coef+random (2*_coef))
			];
			sleep (0.01 + random 0.01);
		};

};

playSound "nuke";

wind = {
	while {windv} do {
		_ran = ceil random 2;
		_pos = position player;

		_velocity = [random 10,random 10,-1];
		_color = [1.0, 0.9, 0.8];
		_alpha = 0.02 + random 0.02;
		_ps = "#particlesource" createVe''+''hicleLocal _pos;  
		_ps setParticleP''+''arams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _pos];
		_ps setParticle''+''Random [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_ps setPartic''+''leCircle [0.1, [0, 0, 0]];
		_ps setDropI''+''nterval 0.01;

		sleep (random 1);
		_delay = 1 + random 5;
		sleep _delay;
		deleteve''+''hicle _ps;
	};
};


envi = {

"colorCorrections" ppEffectA''+''djust [2, 30, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectC''+''ommit 0;
"colorCorrections" ppEffe''+''ctAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];  
"colorCorrections" ppEffe''+''ctCommit 3;
"colorCorrections" ppEffe''+''ctEnable true;
"filmGrain" ppEffectEna''+''ble true; 
"filmGrain" ppEffect''+''Adjust [0.02, 1, 1, 0.1, 1, false];
"filmGrain" ppEffect''+''Commit 5;
};

ash = {
	_pos = position player;
	_parray = [
			["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 1],
			"",
			"Billboard",
			1,
			4,
			[0,0,0],
			[0,0,0],
			1,
			0.000001,
            0,
            1.4,
            [0.05,0.05],
			[[0.1,0.1,0.1,1]],
			[0,1],
			0.2,
			1.2,
			"",
			"",
			vehicle player
	];
	snow = "#particlesource" createV''+''ehicleLocal _pos;  
	snow setParticleP''+''arams _parray;
	snow setPartic''+''leRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
	snow setPartic''+''leCircle [0.0, [0, 0, 0]];
	snow setDropIn''+''terval 0.003;

};




if (player distance nukepos < 2000) then {


	"dynamicBlur" ppEffe''+''ctEnable true;
	"dynamicBlur" ppEffe''+''ctAdjust [0.5];
	"dynamicBlur" ppEffe''+''ctCommit 3;

	sleep 0.1;

	"dynamicBlur" ppEffec''+''tAdjust [2];
	"dynamicBlur" ppEffect''+''Commit 1;

	"dynamicBlur" ppEffe''+''ctAdjust [1];
	"dynamicBlur" ppEffec''+''tCommit 4;
};


player sp''+''awn envi;


player spa''+''wn quake;
sleep 3;

_Cone = "#particlesource" createVehi''+''cleLocal getpos nukepos;
_Cone setParti''+''cleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 10, [0, 0, 0],
				[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5], 
				[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, "", "", nukepos];
_Cone setPartic''+''leRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Cone setPartic''+''leCircle [10, [-10, -10, 20]];
_Cone setDrop''+''Interval 0.005;

_top = "#particlesource" creat''+''eVehicleLocal getpos nukepos;
_top setPartic''+''leParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 21, [0, 0, 0],
				[0, 0, 65], 0, 1.7, 1, 0, [100,80,110], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top setPartic''+''leRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top setDropInt''+''erval 0.002;

_top2 = "#particlesource" createVe''+''hicleLocal getpos nukepos;
_top2 setParticle''+''Params [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 112, 0], "", "Billboard", 1, 22, [0, 0, 0],
				[0, 0, 60], 0, 1.7, 1, 0, [100,80,100], [[1, 1, 1, 0.5],[1, 1, 1, 0]], [0.07], 1, 1, "", "", nukepos];
_top2 setPartic''+''leRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top2 setDropIn''+''terval 0.002;

_smoke = "#particlesource" createVehic''+''leLocal getpos nukepos;
_smoke setParticlePa''+''rams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 70], 0, 1.7, 1, 0, [50,20,120], 
				[[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", nukepos];
_smoke setParticleR''+''andom [0, [10, 10, 15], [15, 15, 7], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_smoke setDropI''+''nterval 0.002;

_Wave = "#particlesource" createVeh''+''icleLocal getpos nukepos;
_Wave setParti''+''cleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20/2, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", nukepos];
_Wave setPart''+''icleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Wave setParti''+''cleCircle [50, [-80, -80, 2.5]];
_Wave setDropI''+''nterval 0.0002;


_light = "#lightpoint" createVe''+''hicleLocal [((getpos nukepos select 0)),(getpos nukepos select 1),((getpos nukepos select 2)+800)];
_light setLightAm''+''bient[1500, 1200, 1000];
_light setLightC''+''olor[1500, 1200, 1000];
_light setLightBrig''+''htness 1000000.0;


sleep 3;

_Wave setDrop''+''Interval 0.001;
deletevehicle _top;
deletevehicle _top2;


sleep 1.5;

nukeDONEstar_cherno = true;


sleep 2.5;
setaperture -1;

_top3 = "#particlesource" createVehi''+''cleLocal getpos nukepos;
_top3 setPartic''+''leParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 24, [0, 0, 450],
				[0, 0, 49], 0, 1.7, 1, 0, [120,130,150], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top3 setParticl''+''eRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top3 setDropI''+''nterval 0.002;
sleep 4;
deleteve''+''hicle _top3;

sleep 4;

if (player distance nukepos < 4000) then {
	"dynamicBlur" ppEff''+''ectAdjust [0];
	"dynamicBlur" ppEffe''+''ctCommit 1;
};

_top4 = "#particlesource" create''+''VehicleLocal getpos nukepos;
_top4 setParti''+''cleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 22, [0, 0, 770],
				[0, 0, 30], 0, 1.7, 1, 0, [100,120,140], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top4 setParti''+''cleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top4 setDropIn''+''terval 0.002;
sleep 3;

_top4 setParticle''+''Params [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 25, [0, 0, 830],
				[0, 0, 30], 0, 1.7, 1, 0, [100,120,140], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];



_Wave setDrop''+''Interval 0.001*10;
_Wave setParti''+''cleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20/2, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", nukepos];
_Wave setPartic''+''leCircle [50, [-40, -40, 2.5]];

player spa''+''wn ash;
windv=true;
player sp''+''awn wind;





deleteVe''+''hicle _light;



sleep 4;
deleteveh''+''icle _top4;

_i = 0;
while {_i < 100} do
	{
	_light setLightBri''+''ghtness (100.0 - _i)/100;
	_i = _i + 1;
	sleep 0.1;
	};


for "_i" from 0 to 15 do {
	_smoke setParti''+''cleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
					[0, 0, 60+_i], 0, 1.7, 1, 0, [40,15,120], 
					[[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]]
					, [0.5, 0.1], 1, 1, "", "", nukepos];
};


_timeNow = ti''+''me;
waituntil {(time - _timeNow) > 180};

_smoke setPar''+''ticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 30], 0, 1.7, 1, 0, [40,25+10,80], 
				[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", nukepos];

_smoke setDr''+''opInterval 0.012;
_Cone setDropI''+''nterval 0.02;
_Wave setDropI''+''nterval 0.01;

sleep 10;
deleteVehicle _Wave;
deleteVehicle _cone;
deleteVehicle _smoke;
deletevehicle snow;

sleep 300;


"filmGrain" ppEffect''+''Enable false;
sleep 10;
"colorCorrections" ppEffect''+''Enable false;
sleep 10;
windv=false;
}] call RE;'');

	};
};';
[_exec] execVM "infiSTAR_BLACK\exec.sqf";

waitUntil {nukeDONEstar_cherno};
sleep 2;

{
_aim = _x;
	if (_aim != player) then
	{
		_aim setDamage 1.1;
	};
} forEach ([6437,2714,0] nearEntities [["All"],550]);

{
_aim = _x;
	if (_aim != player) then
	{
		_aim setDamage 1.1;
	};
} forEach (nearestObjects [[6437,2714,0], ["house"], 250]);