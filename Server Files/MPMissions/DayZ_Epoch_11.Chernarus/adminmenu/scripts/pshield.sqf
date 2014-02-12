if (isNil "playershield") then {playershield = true;} else {playershield = !playershield};
 if(playershield) then {titleText ["Player Shield activated!","PLAIN DOWN"]; titleFadeOut 4;};


 while {playershield} do {


 _pos = getPos player;
 _players = _pos nearEntities ["Man",2];
 _units = allUnits;


 _countunits = count _units;
 _countplayers = count _players;


 for "_i" from 0 to (_countplayers -1) do
 { 
 _player = _players select _i; 
 if(_player != player) then 
 { 
 for "_i2" from 0 to (_countunits -1) do
 { 
 _unit = _units select _i2;
 if(_unit == _player) then {
 _text = format["%1 has crossed the line!", name _player];
 titleText [_text,"PLAIN DOWN"]; titleFadeOut 4;
 _player setDamage 1;
 RandomHeadshots=round(random 4);
 HumanityVal=_player getVariable["humanity",0];
 If (!alive _player && HumanityVal>=0) then {
 _killsH = player getVariable["humanKills",0];
 player setvariable["humanKills", _killsH+1,true];
 };
 If (!alive _player && HumanityVal<=0) then {
 _killsB = player getVariable["banditKills",0];
 player setvariable["banditKills", _killsB+1,true];
 };
 If (RandomHeadshots==1) then {
 _headShots = player getVariable["headShots",0];
 player setVariable["headShots",_headShots+1,true]
 }; 
 };
 }; 
 };
 };
 };
 titleText ["Player Shield deactivated!","PLAIN DOWN"]; titleFadeOut 4;