if (isNil "custom_monitor") then {custom_monitor = true;} else {custom_monitor = !custom_monitor;};

while {custom_monitor} do 
	{
		_nearestCity = nearestLocations [getPos player, ["NameCityCapital","NameCity","NameVillage","NameLocal"],750];
		_textCity = "Wilderness";
		if (count _nearestCity > 0) then {_textCity = text (_nearestCity select 0)};
		
		_timeleft = _combattimeout-time;
		_kills = 		player getVariable["zombieKills",0];
		_killsH = 		player getVariable["humanKills",0];
		_killsB = 		player getVariable["banditKills",0];
		_humanity =		player getVariable["humanity",0];
		_headShots = 	player getVariable["headShots",0];
		_zombies =              count entities "zZombie_Base";
		_zombiesA =     		{alive _x} count entities "zZombie_Base";
    
	hintSilent parseText format ["
	<t size='1.15' font='Bitstream' align='center' color='#DDDDDD'>%17 Spieler online</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Standort:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%11</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Blut:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%1</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Humanity:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%2</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Getoetete Helden:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%3</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Getoetete Banditen:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%4</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Getoetete Zombies:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%5</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Headshots:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%6</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>Zombies (alive/total):</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%13/%12</t><br/>
	<t size='1' font='Bitstream' align='left' color='#EEC900'>FPS:</t><t size='1' font='Bitstream' align='right' color='#FFFAF0'>%14</t><br/>
    <t size='1' font='Bitstream' align='left' color='#EEC900'>Restart in minutes</t><t size='1' font='Bitstream' align='right' color='#F2493D'>%8</t><br/>
	<t size='1' font='Bitstream' align='center' color='#DDDDDD'>Bexs Epoch Pack</t><br/>
	<t size='1' font='Bitstream' align='center' color='#DDDDDD'>Bexs-Epoch.de</t><br/>",

      	r_player_blood,												//1
				round _humanity,											//2
				_killsH,													//3
				_killsB,													//4
				_kills,														//5
				_headShots,													//6
				(dayz_Survived),											//7
				(360-(round(serverTime/60))),								//8 change the 180 to suit your server mins for restarts
				_pic,														//9
				_logo,														//10
				_textCity,													//11
				count entities "zZombie_Base",								//12
				{alive _x} count entities "zZombie_Base",					//13
				(round diag_FPS),													//14
        dayz_playerName, //15
        round(dayz_temperatur), //16
        (count playableUnits)  //17
			]; 
sleep 2;
};

