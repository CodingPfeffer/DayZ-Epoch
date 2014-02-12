if (isNil "zombieshield") then {zombieshield = true;} else {zombieshield = !zombieshield};
if(zombieshield) then {titleText ["Zombie Spawning deactivated!","PLAIN DOWN"]; titleFadeOut 4;};

while {zombieshield} do {

_pos = getPos player;
_zombies = _pos nearEntities ["zZombie_Base",16000];
_count = count _zombies;

for "_i" from 0 to (_count -1) do
{ 
_zombie = _zombies select _i; 
_zombie setDamage 1; 
};
};

titleText ["Zombie Spawning Activated!","PLAIN DOWN"]; titleFadeOut 4;