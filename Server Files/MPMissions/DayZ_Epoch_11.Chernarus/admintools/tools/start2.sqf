_nul = "fuck";
startLoadingScreen [format ["LADE ADMINMENU EPOCH",_nul],"RscDisplayLoadMission"];
sleep 0.3;
createdialog "RscDisplayMultiplayerSetup";

_nil = [] execVM "adminmenu\screen.sqf";
