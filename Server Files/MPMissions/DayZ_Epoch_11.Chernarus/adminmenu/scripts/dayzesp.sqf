if (isnil "ESP" ) then {ESP=0;};

ESP=ESP+1;
if (ESP > 1 ) Then {ESP = 0; };

hint format ["ESP %1",ESP];
_a = [];

while {ESP == 1} do
{
if (visibleMap) then {_a = []; waituntil {!visibleMap};};
{
if ((_x in _a) && !(alive _x)) then {_a = _a - [_x];};

if ( _x != player && getPlayerUID _x != "" && name _x !="" && !(_x in _a) && _x iskindof "Survivor2_dz"  ||  _x iskindof "SurvivorW2_dz" ||  _x iskindof "BAF_Soldier_SniperH_W" ||  _x iskindof "BAF_Soldier_L_W" ) then {

//if (  !(_x in _a) ) then {
    _a set [count _a, _x];
_nil= [_x] execvm "adminmenu\scripts\!Nametags.sqf";
sleep 0.001;
  };
} foreach allunits;
};
hint format ["ESP OFF %1",ESP];

//Credits to Tirade at TGS for posting this