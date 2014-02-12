// Tikaha city
_Tikhaya  = createMarker ["_Tikhaya ", [1083.03, 2401.18]];
_Tikhaya  setMarkerText "Tikhaya City";
_Tikhaya  setMarkerType "City";
_Tikhaya  setMarkerColor "ColorRed";
_Tikhaya  = _Tikhaya ;

//schrottplatz
_wreck  = createMarker ["_wreck ", [5388.27,3888.41]];
_wreck  setMarkerText "";
_wreck  setMarkerType "Depot";
_wreck  setMarkerColor "ColorBlue";
_wreck  = _wreck ;

//zone alpha
_sectorfng = createMarker ["sectorfng", [8082.12,13635.4]];
_sectorfng setMarkerText "Sector FNG";
_sectorfng setMarkerShape "ELLIPSE";
_sectorfng setMarkerType "Flag";
_sectorfng setMarkerColor "ColorRed";
_sectorfng setMarkerBrush "Horizontal";
_sectorfng setMarkerSize [230, 280];
sectorfng = _sectorfng;

//zone 2
_sector = createMarker ["_sector ", [8082.12,13635.4]];
_sector setMarkerText "Zone mit extra Loot und Ai";
_sector  setMarkerType "Heliport";
_sector  setMarkerColor "ColorBlack";
_sector  = _sector ;

//service
_repair = createMarker ["_repair ", [8173.8223, 9076.1348]];
_repair setMarkerText "Repair and Refuel";
_repair  setMarkerType "Heliport";
_repair  setMarkerColor "ColorBlack";
_repair  = _repair ;

//holzfäller
_holz = createMarker ["_holz ", [3434.5422, 4555.3018]];
_holz setMarkerText "Wood-Trader";
_holz  setMarkerType "mil_dot";
_holz  setMarkerColor "ColorBlack";
_holz  = _holz ;

//extra Fahrzeuge
_extra = createMarker ["_extra ", [6758.9004,5586.7593]];
_extra setMarkerText "Fahrzeug-Trader";
_extra  setMarkerType "mil_dot";
_extra  setMarkerColor "ColorBlack";
_extra  = _extra ;

//Golden River Miene
_gr = createMarker ["_gr ", [2096, 12773]];
_gr setMarkerText "Eingang zur Miene";
_gr  setMarkerType "City";
_gr  setMarkerColor "ColorRed";
_gr  = _gr ;

//Golden River Eingang
_gr1 = createMarker ["_gr1 ", [2001, 12137]];
_gr1 setMarkerText "Golden River Eingang";
_gr1  setMarkerType "City";
_gr1  setMarkerColor "ColorRed";
_gr1  = _gr1 ;

//Golden River zone
_gr2 = createMarker ["_gr2 ", [1955, 12210]];
_gr2 setMarkerText "";
_gr2 setMarkerShape "ELLIPSE";
_gr2 setMarkerType "Flag";
_gr2 setMarkerColor "ColorRed";
_gr2 setMarkerBrush "Horizontal";
_gr2 setMarkerSize [200, 200];
_gr2  = _gr2 ;

//Golden River Miene zone
_gr3 = createMarker ["_gr3 ", [2099, 12852]];
_gr3 setMarkerText "";
_gr3 setMarkerShape "ELLIPSE";
_gr3 setMarkerType "Flag";
_gr3 setMarkerColor "ColorRed";
_gr3 setMarkerBrush "Horizontal";
_gr3 setMarkerSize [200, 200];
_gr3  = _gr3 ;

//Zone Alpha Eingang
_za = createMarker ["_za ", [8249, 13346]];
_za setMarkerText "Zone Alpha Eingang";
_za  setMarkerType "City";
_za  setMarkerColor "ColorRed";
_za  = _za ;

/*
//parken verboten holz
_park1 = createMarker ["_park1", [3434.5422, 4555.3018]];
_park1 setMarkerText "Parken verboten";
_park1 setMarkerShape "ELLIPSE";
_park1 setMarkerType "Flag";
_park1 setMarkerColor "ColorYellow";
_park1 setMarkerBrush "Horizontal";
_park1 setMarkerSize [230, 230];
_park1 = _park1;

//parken verboten starry
_park2 = createMarker ["_park2", [6345.6113,7808.5073]];
_park2 setMarkerText "Parken verboten";
_park2 setMarkerShape "ELLIPSE";
_park2 setMarkerType "Flag";
_park2 setMarkerColor "ColorYellow";
_park2 setMarkerBrush "Horizontal";
_park2 setMarkerSize [230, 230];
_park2 = _park2;

//parken verboten bash
_park3 = createMarker ["_park3", [4069.8455,11661.84]];
_park3 setMarkerText "Parken verboten";
_park3 setMarkerShape "ELLIPSE";
_park3 setMarkerType "Flag";
_park3 setMarkerColor "ColorYellow";
_park3 setMarkerBrush "Horizontal";
_park3 setMarkerSize [230, 230];
_park3 = _park3;

//parken verboten klen
_park4 = createMarker ["_park4", [11469.787,11356.751]];
_park4 setMarkerText "Parken verboten";
_park4 setMarkerShape "ELLIPSE";
_park4 setMarkerType "Flag";
_park4 setMarkerColor "ColorYellow";
_park4 setMarkerBrush "Horizontal";
_park4 setMarkerSize [230, 230];
_park4 = _park4;

//parken verboten air
_park5 = createMarker ["_park5", [5068.6636,9723.4248]];
_park5 setMarkerText "Parken verboten";
_park5 setMarkerShape "ELLIPSE";
_park5 setMarkerType "Flag";
_park5 setMarkerColor "ColorYellow";
_park5 setMarkerBrush "Horizontal";
_park5 setMarkerSize [230, 230];
_park5 = _park5;

//parken verboten hero
_park6 = createMarker ["_park6", [12945.273,12751.496]];
_park6 setMarkerText "Parken verboten";
_park6 setMarkerShape "ELLIPSE";
_park6 setMarkerType "Flag";
_park6 setMarkerColor "ColorYellow";
_park6 setMarkerBrush "Horizontal";
_park6 setMarkerSize [230, 230];
_park6 = _park6;

//parken verboten bandit
_park7 = createMarker ["_park7", [1610.4834,7781.9917]];
_park7 setMarkerText "Parken verboten";
_park7 setMarkerShape "ELLIPSE";
_park7 setMarkerType "Flag";
_park7 setMarkerColor "ColorYellow";
_park7 setMarkerBrush "Horizontal";
_park7 setMarkerSize [230, 230];
_park7 = _park7;

//parken verboten wholesaler west
_park8 = createMarker ["_park8", [1136.2819,2706.2173]];
_park8 setMarkerText "Parken verboten";
_park8 setMarkerShape "ELLIPSE";
_park8 setMarkerType "Flag";
_park8 setMarkerColor "ColorYellow";
_park8 setMarkerBrush "Horizontal";
_park8 setMarkerSize [230, 230];
_park8 = _park8;

//parken verboten wholesaler ost
_park9 = createMarker ["_park9", [13253.62,6090.1885]];
_park9 setMarkerText "Parken verboten";
_park9 setMarkerShape "ELLIPSE";
_park9 setMarkerType "Flag";
_park9 setMarkerColor "ColorYellow";
_park9 setMarkerBrush "Horizontal";
_park9 setMarkerSize [230, 230];
_park9 = _park9;

//parken verboten boat 1
_park10 = createMarker ["_park10", [8385.834,2368.8264]];
_park10 setMarkerText "Parken verboten";
_park10 setMarkerShape "ELLIPSE";
_park10 setMarkerType "Flag";
_park10 setMarkerColor "ColorYellow";
_park10 setMarkerBrush "Horizontal";
_park10 setMarkerSize [230, 230];
_park10 = _park10;

//parken verboten boat 2
_park11 = createMarker ["_park11", [13093.446,8241.5625]];
_park11 setMarkerText "Parken verboten";
_park11 setMarkerShape "ELLIPSE";
_park11 setMarkerType "Flag";
_park11 setMarkerColor "ColorYellow";
_park11 setMarkerBrush "Horizontal";
_park11 setMarkerSize [230, 230];
_park11 = _park11;

//parken verboten service
_park12 = createMarker ["_park12", [8173.8223, 9076.1348]];
_park12 setMarkerText "Parken verboten";
_park12 setMarkerShape "ELLIPSE";
_park12 setMarkerType "Flag";
_park12 setMarkerColor "ColorYellow";
_park12 setMarkerBrush "Horizontal";
_park12 setMarkerSize [230, 230];
_park12 = _park12;

//parken verboten holz
_park13 = createMarker ["_park13", [6758.9004,5586.7593]];
_park13 setMarkerText "Parken verboten";
_park13 setMarkerShape "ELLIPSE";
_park13 setMarkerType "Flag";
_park13 setMarkerColor "ColorYellow";
_park13 setMarkerBrush "Horizontal";
_park13 setMarkerSize [230, 230];
_park13 = _park1;

//Beschreibung
_bs1 = createMarker ["_bs1", [12681.877,2248.5032]];
_bs1 setMarkerText "Parken verboten";
_bs1 setMarkerShape "ELLIPSE";
_bs1 setMarkerType "Flag";
_bs1 setMarkerColor "ColorYellow";
_bs1 setMarkerBrush "Horizontal";
_bs1 setMarkerSize [30, 30];
_bs1 = _bs1;

//Beschreibung 2
_bs2 = createMarker ["_bs2 ", [12681.877,2248.5032]];
_bs2 setMarkerText "Fahrzeuge in gelben Bereich werden gelöscht!";
_bs2  setMarkerType "mil_dot";
_bs2  setMarkerColor "ColorRed";
_bs2  = _bs2 ;

//Beschreibung3
_bs3 = createMarker ["_bs3 ", [12680.88,2157.1116]];
_bs3 setMarkerText "Die Anmeldung im Forum ist Pflicht!";
_bs3  setMarkerType "mil_dot";
_bs3  setMarkerColor "ColorRed";
_bs3  = _bs3 ;

//Beschreibung4
_bs4 = createMarker ["_bs4 ", [12682.89,2067.8447]];
_bs4 setMarkerText "Das lesen der Regeln ist Pflicht!";
_bs4  setMarkerType "mil_dot";
_bs4  setMarkerColor "ColorRed";
_bs4  = _bs4 ;

//Beschreibung4
_bs5 = createMarker ["_bs5 ", [12682.021,1994.8149]];
_bs5 setMarkerText "Fahrzeuge mit Klopapier sind tabu!";
_bs5  setMarkerType "mil_dot";
_bs5  setMarkerColor "ColorRed";
_bs5  = _bs5 ;

*/
