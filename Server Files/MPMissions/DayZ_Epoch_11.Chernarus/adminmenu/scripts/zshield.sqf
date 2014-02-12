if (isNil "zombieshield") then {zombieshield = true;} else {zombieshield = !zombieshield};
 if(zombieshield) then {titleText ["Zombie Shield activated!","PLAIN DOWN"]; titleFadeOut 4;};


 while {zombieshield} do {


 _pos = getPos player;
 _zombies = _pos nearEntities ["zZombie_Base",2];
 _count = count _zombies;


 for "_i" from 0 to (_count -1) do
 { 
 _zombie = _zombies select _i; 
 _zombie setDamage 1;
 RandomHeadshots=round(random 4);
 if (!alive _zombie) then {
 zombiekills = player getVariable["zombieKills",0];
 player setVariable["zombieKills",zombiekills+1,true];
 If (RandomHeadshots==1) then {
 _headShots = player getVariable["headShots",0];
 player setVariable["headShots",_headShots+1,true]
 };
 };
 };
 };
 titleText ["Zombie Shield deactivated!","PLAIN DOWN"]; titleFadeOut 4;