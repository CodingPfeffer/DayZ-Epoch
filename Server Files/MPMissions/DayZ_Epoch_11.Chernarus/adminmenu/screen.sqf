if (isnil "take1") then { take1 = 0;
//EDITED BY EMP1985 fuer Nitrado
hacks = []; // DO NOT EDIT THIS LINE
pic = []; // DO NOT EDIT THIS LINE

pic = pic + [""]; hacks = hacks + ["======== Dayz Epoch AdminMenu BEX ScriptPack edited by Emp1985========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["AdminMap Teleport per Alt+Maus","adminmenu\scripts\adminmap.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Infos für alle (Achtung) muss unter newsbannesqf angepasst werden","adminmenu\scripts\newsbanner.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Unendlich Munition","adminmenu\scripts\Ammo.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Unsichtbar","adminmenu\scripts\invisinit.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Spieler auswählen und mit einem Fallschirm abwerfen","adminmenu\scripts\parachute_target.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Spieler beobachten","adminmenu\scripts\spectate.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["GodMode","adminmenu\scripts\gm.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Speed Mode mit shift in einem Vehicle","adminmenu\scripts\speedhack.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Bildschirm DayZ ESP","adminmenu\scripts\dayzesp.sqf","SQF"];

//pic = pic + [""]; hacks = hacks + ["Spieler markieren","adminmenu\scripts\!sp.sqf","SQF"];

//pic = pic + [""]; hacks = hacks + ["Helicrash markieren","adminmenu\scripts\!helicrash.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Fahrzeug reparieren","adminmenu\scripts\Repair.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Zombie Shield verhindert das man Zombies spawnt","adminmenu\scripts\nozombies.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Transformer A10","adminmenu\scripts\A10.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["Transformer AH6J_EP1","adminmenu\scripts\AH6J_EP1.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["Transformer AH64D_EP1","adminmenu\scripts\AH64D_EP1.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["Transformer CH_47F_EP1","adminmenu\scripts\CH_47F_EP1.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["Transformer 2S6M_Tunguska","adminmenu\scripts\2S6M_Tunguska.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["Transformer F35B","adminmenu\scripts\F35B.sqs","SQS"];

pic = pic + [""]; hacks = hacks + ["======== Kisten ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Waffen und Loot Box","adminmenu\scripts\box.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Baumaterialien","adminmenu\scripts\box3.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Skins und mehr","adminmenu\scripts\box2.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["======== Fun ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Rauch ausm Arsch","adminmenu\scripts\rainbowgas.sqf","SQF"];

//pic = pic + [""]; hacks = hacks + ["Teleport others to you","adminmenu\scripts\tpother.sqf","SQF"];

pic = pic + [""]; hacks = hacks + ["Fallschirm Kühe","adminmenu\scripts\pcows.sqf","SQS"];

pic = pic + [""]; hacks = hacks + ["Fallschirm Busse","adminmenu\scripts\pbus.sqf","SQS"];

pic = pic + [""]; hacks = hacks + ["Security (Will Shoot any Player or Zombie on sight)","adminmenu\scripts\security.sqf","SQF"];

///////////////BE CAREFULL IF YOU ARE EDITING THE NEXT PART ERRORS IN BETWEEN LOADER AND END AND IT WILL CAUSE THE GAME TO HALT/////////////////

startLoadingScreen [format ["LADE ADMINMENU",_nul],"RscDisplayLoadMission"];

#define GET_DISPLAY (findDisplay 155)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
#define KINDOF_ARRAY(a,b) [##a,##b] call {_veh = _this select 0;_types = _this select 1;_res = false; {if (_veh isKindOf _x) exitwith { _res = true };} forEach _types;_res}
#define balca_VC_vehlist_IDC = 101
		


        pic = pic + [""]; hacks = hacks + ["========  Bike Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Motorcycle listings.";
                _kindOf = ["Motorcycle"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };

        pic = pic + [""]; hacks = hacks + ["========  Boat Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Boat listings.";
                _kindOf = ["Ship"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };


pic = pic + [""]; hacks = hacks + ["========  Air Vehicle Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["air"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
					  pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					  hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];


           
				};
			};
		};
		
		
progressLoadingScreen 0.4;		
		
pic = pic + [""]; hacks = hacks + ["========  Tank Vehicle Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["Tank"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
          
					 pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					  hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];

				};
			};
		};
	
progressLoadingScreen 0.8;	
	
	pic = pic + [""]; hacks = hacks + ["========  Car Vehicle Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["Car"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
          
					pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					 hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];

				};
			};
			};



////////////////////////////////

progressLoadingScreen 1.0;

pic = pic + [""]; hacks = hacks + ["======== VEHICLE WEAPONS ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Gun listings.";
		_cfgvehicles = ["GAU8","FlareLauncher","GAU12","GRAD","M119","M120","M134","M134_2","M168","M197","M2","M230","M240_veh","M240_veh_2","MiniCarHorn","YakB"];

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
                                _veh_type = text(_vehicle); 
                			
					 pic = pic + [format["",Text(_vehicle)]];
					 hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\AddWepon.sqf","SQF"];
			};


        pic = pic + [""]; hacks = hacks + ["========  Static Weapon Spawner   ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Weapon listings.";
                _kindOf = ["StaticWeapon"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };
			

progressLoadingScreen 0.2;

pic = pic + [""]; hacks = hacks + ["======== WEAPONS ========","adminmenu\scripts\VehicleOwn.sqf","SQF"];


hint "Generating Gun listings.";
		_kindOf = ["Car"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgWeapons";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")) then {
          
					pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					 hacks = hacks + [format["%1",_veh_type],"adminmenu\scripts\AddWepon.sqf","SQF"];

				};
			};
			};

	







///////////////ADD HACK END//////////////////////


progressLoadingScreen 1.5;

};

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
//                   DO NOT EDIT BELOW THIS LINE
//            UNLESS YOU KNOW WHAT YOU ARE DOING
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

disableSerialization;
//ctrlshow [1004,false];
//ctrlshow [1003,false];
ctrlshow [1005,false];
ctrlshow [1012,false];
//ctrlshow [102,false];
//ctrlshow [103,false];
ctrlshow [116,false];
ctrlshow [121,false];
ctrlshow [125,false];
ctrlshow [126,false];
ctrlshow [127,false];
ctrlshow [117,false];
ctrlshow [118,false];
ctrlshow [128,false];
ctrlshow [106,false];
ctrlshow [107,false];
ctrlshow [1,false];
ctrlshow [2,false];
//ctrlshow [1002,false];

ctrlSetText [1001," ADMINMENU  "];
ctrlSetText [1002,"Status:"];

ctrlSetText [101,format["%1 - Team : %2",lifeState player , side player]]; 
ctrlSetText [103,format ["Emp Admin Menu: Task : %1",currentTask player ]];
ctrlSetText [102,format ["%1",worldName]];
ctrlSetText [102,format ["DayZ Epoch",worldName]];

ctrlSetText [104,"Execute"];
ctrlSetText [105,"EXIT"];
ctrlSetText [106,"NEXTMENU"];
ctrlSetText [107,"EXIT"];
ctrlSetText [108,"Menu"];
ctrlSetText [1006,"Player List:"];

//sleep 0.5;

_T=0;
_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,name player];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];

if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,"ALL PLAYERS"];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];


if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,"EVERYONE BUT ME"];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];


if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109
{

_side = format["%1",side _x];
if (name _x != name player) then
{ 
lbAdd [_Dev,name _x];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];

if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
};
hintsilent "";
} foreach playableunits;

lbSetCurSel [_Dev,0];

/////////////////////////

progressLoadingScreen 1.0;

/////////////////////////



_T = 0;
_P = 0;
	for [{_fx=0},{_fx<=count(hacks)-1},{_fx=_fx+3}] do
	{

	lbadd [109,format["%1",hacks select _fx]];
		lbsetcolor[109,(lbsize 109)-1,[1,1,.766,0.8]];
		//if (_T == 2) then {lbsetcolor[109,(lbsize 109)-1,[1,1,1,0.4]];};



lbsetpicture [109,(lbsize 109)-1,format["%1",pic select _P] ];

 
  //if (_T > 2 )  then { lbsetcolor[109,(lbsize 109)-1,[1,1,1,0.9]];  _T = 0; };
  		//_T = _T + 1;
_P = _P + 1;
	};


/////////////////////////

/////////////////////////


index = lbCurSel 109;
//hint format["%1",_hacks select index];

buttonSetAction [125,"hint '125';"];
buttonSetAction [126,"hint '126';"];
buttonSetAction [127,"hint '127';"];
buttonSetAction [104,"[lbtext[109,(lbCurSel 109)],lbtext[114,(lbCurSel 114)],format['%1',hacks select ((lbCurSel 109))*3+1],format['%1',hacks select ((lbCurSel 109))*3+2]] execVM 'adminmenu\RUN.sqf';"];
buttonSetAction [105,"closedialog 0;"];
buttonSetAction [106,"hint '106';"];
buttonSetAction [107,"closedialog 0;"];
endLoadingScreen;		
if (isnil "firstrun") then {firstrun = 1;hint "Instructions:\nClick a name then click on the action you want to perform on them. \nThen click execute \n( to do the action on all players click the name) \nALL PLAYERS. \nnote : \nThis message will not be displayed again until you reconnect.";};








