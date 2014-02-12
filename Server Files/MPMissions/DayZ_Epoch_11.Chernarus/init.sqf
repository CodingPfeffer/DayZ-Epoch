/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayZ_serverName = "Steel";
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// Script on/off 
Churches			 = true; // All Churches open
Menu				 = false; // Aktion + Admin menu - not ready yet		
Infobox				 = false; // Infobox	- not ready yet		
Safezones			 = true; // Safezone
AutoRefuel			 = true; // Autorefuel
Marker		 		 = true; // Marker	
Crates				 = true; // Belohnungskisten im sector
NoTalk				 = true; // Kein sprechen im sidechat
//
// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxVehicleLimit = 300; // Default = 50
MaxMineVeins = 50;
MaxDynamicDebris = 50; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 
DefaultMagazines = ["ItemBandage","ItemBandage","ItemPainkiller", "ItemMorphine","15Rnd_9x19_M9","15Rnd_9x19_M9","FoodCanTylers","ItemSodaLemonade"]; 
DefaultWeapons = ["ItemFlashlight","ItemMap","M9","ItemWatch"]; 
DefaultBackpack = "CZ_VestPouch_EP1";
dayz_zedsAttackVehicles = false;
DZE_DeathMsgGlobal = true; 
DZE_DeathMsgTitleText = true; 
DZE_requireplot = 0;
DZE_BuildingLimit = 15000;
DZE_BackpackGuard = false;

dayz_paraSpawn = true;

dayz_minpos = -1; 
dayz_maxpos = 16000;

dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;


dayz_maxAnimals = 4; // Default: 8
dayz_tameDogs = false;
DynamicVehicleDamageLow = 40; // Default: 0
DynamicVehicleDamageHigh = 90; // Default: 100
DynamicVehicleFuelLow = 0;
DynamicVehicleFuelHigh = 50;
DZE_BuildOnRoads = false; // Default: False

//Steel Custom Begin
[] execVM "Scripts\mapads\mapads_init.sqf";
//Steel Custom End

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
dayz_fullMoonNights = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "fixes\system\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "fixes\system\compiles.sqf";			//Compile regular functions
call compile preprocessFileLineNumbers "custom\snap_build\compiles.sqf";  //building snapping
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	//masterkey
	_nil = [] execVM "custom\vehiclefunctions.sqf";
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	
	//anti Hack
	//[] execVM "\z\addons\dayz_code\system\antihack.sqf";

	//Lights
	//[0,0,true,true,true,58,280,600,[0.698, 0.556, 0.419],"Generator_DZ",0.1] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	//service point
	execVM "service_point\service_point.sqf";
	//helievac
	//_nil = [] execVM "helievac\functions.sqf";
	//debug monitor
	_nil = [] execVM "fixes\custom_monitor.sqf";
	
};

#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";


#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//Bexs Pack
if(Churches)then{
[] execVM "fixes\hide_churches.sqf";
[] execVM "fixes\churches.sqf";
};

if(Menu)then{
[] execVM "fixes\actions\actions.sqf";
};

if(Infobox)then{
[] execVM "fixes\infobox.sqf";
};

if(Safezones)then{
[] execVM "fixes\agn_SafeZoneCommander.sqf";
//[] execVM "fixes\safezone.sqf";
};

if(AutoRefuel)then{
[] execVM 'Scripts\kh_actions.sqf'; 
};
if(Marker)then{
[] execVM "fixes\marker.sqf";
//[] execVM "fixes\marker2.sqf";
};

if(NoTalk)then{
[] execVM "fixes\nosidechat.sqf";
};

if(Crates)then{
[] execVM "fixes\crates.sqf";
};

// Mission System Markers
//    [] execVM "debug\addmarkers.sqf";
//    [] execVM "debug\addmarkers75.sqf";

//Lift und Tow
[] execVM "R3F_ARTY_AND_LOG\init.sqf";	

//Sarge
call compile preprocessFileLineNumbers "addons\UPSMON\scripts\Init_UPSMON.sqf";
call compile preprocessFileLineNumbers "addons\SHK_pos\shk_pos_init.sqf";
[] execVM "addons\SARGE\SAR_AI_init.sqf";

if (!isNil "dayZ_serverName") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText dayZ_serverName;
	};
};