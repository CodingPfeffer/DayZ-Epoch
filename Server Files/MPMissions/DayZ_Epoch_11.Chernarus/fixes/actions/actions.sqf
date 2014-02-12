waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["UID"]) then {
	sleep 15;
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
	player addaction [("<t color=""#FE9A2E"">" + ("Tools Menu") +"</t>"),"fixes\actions\excute.sqf","",5,false,true,"",""];
} else {
	sleep 15;
	player addaction [("<t color=""#FE9A2E"">" + ("Tools Menu") +"</t>"),"fixes\actions\excute.sqf","",5,false,true,"",""];
};

