/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour gérer de nouveaux objets avec le système logistique. Le premier consiste à ajouter
 * ces objets dans les listes appropriées ci-dessous. Le deuxième est de créer un fichier externe dans le répertoire
 * /addons_config/ selon le même schéma que ceux qui existent déjà, et d'ajouter un #include à la fin de ce présent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs =
[
    "V3S_Civ",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"UralCivil",
	"UralCivil2",
	"Ural_UN_EP1",
	"Ural_TK_CIV_EP1",
	"Ural_CDF",
	"Kamaz",
	"MTVR_DES_EP1",
	"MTVR",
	"HMMWV_Armored",
	"KamazRefuel_DZ",
	"MtvrRefuel_DES_EP1_DZ",
	"UralRefuel_TK_EP1_DZ",
	"V3S_Refuel_TK_GUE_EP1_DZ",
	"LAV25_HQ",
	"BRDM2_HQ_Gue",
	"M113Ambul_TK_EP1",
	"M113Ambul_UN_EP1",
	"M1126_ICV_M2_EP1",
	"V3S_Reammo_TK_GUE_EP1",
	"V3S_Repair_TK_GUE_EP1",
	"V3S_Salvage_TK_GUE_EP1",
	"Ural_ZU23_CDF"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables =
[
	"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1",
	"Pickup_PK_GUE_DZE",
	"Pickup_PK_INS_DZE",
	"Offroad_DSHKM_Gue_DZE",
	"TowingTractor"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */
R3F_LOG_CFG_heliporteurs =
[
	"Mi17_Civilian_DZ",
	"CH_47F_EP1_DZE",
	"BAF_Merlin_HC3_D"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_objets_heliportables =
[
	"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"tractor",
	"M1030_US_DES_EP1",
	"UAZ_Unarmed_TK_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1",
	"UAZ_MG_TK_EP1_DZE",
	"UAZ_INS",
	"UAZ_RU",
	"UAZ_CDF",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1_DZE",
	"Pickup_PK_GUE",
	"Pickup_PK_INS",
	"LAV25_HQ",
	"TowingTractor",
	"M1126_ICV_M2_EP1",
	"SeaFox",
	"Fishing_Boat",
	"PBX",
	"RHIB",
	"RHIB2Turret",
	"Volha_2_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
    "Volha_1_TK_CIV_EP12",
	"Zodiac"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USVehicleBox "pèse" 12 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des véhicules (terrestres ou aériens) pouvant transporter des objets transportables.
 * Le deuxième élément des tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_transporteurs =
[
	["CH_47F_EP1_DZE", 150],
	["Mi17_DZE", 50],
	["Mi24_D_TK_EP1_DZ", 50],
	["Mi17_Civilian_DZ", 50],
	["MTVR_DES_EP1", 50],
	["MTVR", 50],
	["V3S_Open_TK_CIV_EP1", 50],
	["V3S_Open_TK_EP1", 50],
	["Ural_UN_EP1", 50],
	["Ural_TK_CIV_EP1", 50],
	["Ural_CDF", 50],
	["hilux1_civil_1_open", 25],
	["hilux1_civil_2_covered", 25],
	["hilux1_civil_3_open_EP1", 25],
	["datsun1_civil_1_open", 25],
	["datsun1_civil_2_covered", 25],
	["datsun1_civil_3_open", 25],
	["Pickup_PK_TK_GUE_EP1", 25],
	["Pickup_PK_GUE", 25],
	["Pickup_PK_INS", 25],
	["Offroad_DSHKM_Gue", 25],
	["Pickup_PK_GUE", 25],
	["HMMWV_M1151_M2_CZ_DES_EP1_DZE", 25],
	["LandRover_CZ_EP1", 10],
	["LandRover_MG_TK_EP1_DZE", 10],
	["LandRover_Special_CZ_EP1_DZE", 10],
	["LandRover_TK_CIV_EP1", 10],
	["SUV_Green", 40],
	["SUV_Yellow", 40],
	["SUV_White", 40],
	["SUV_Silver", 40],
	["SUV_Red", 40],
	["SUV_Pink", 40],
	["SUV_Orange", 40],
	["SUV_Charcoal", 40],
	["SUV_Blue", 40],
	["ArmoredSUV_PMC_DZE", 40],
	["SUV_Camo", 40],
	["Zodiac", 10],
	["RHIB", 25],
	["Fishing_Boat", 10],
	["HMMWV_Armored", 100],
	["KamazRefuel_DZ", 50],
	["MtvrRefuel_DES_EP1_DZ", 50],
	["UralRefuel_TK_EP1_DZ", 50],
	["V3S_Refuel_TK_GUE_EP1_DZ", 50],
	["M113Ambul_UN_EP1", 75],
	["M113Ambul_TK_EP1", 75],
	["BRDM2_HQ_Gue", 50],
	["LAV25_HQ", 100],
	["TowingTractor", 25],
	["UH1H_DZE", 75],
	["M1126_ICV_M2_EP1", 100],
	["SeaFox", 200],
	["BAF_Merlin_HC3_D", 100],
	["UH60M_EP1_DZE", 125],
	["BTR40_TK_GUE_EP1", 50],
	["BTR40_TK_INS_EP1", 50],
	["V3S_Reammo_TK_GUE_EP1", 75],
	["V3S_Repair_TK_GUE_EP1", 75],
	["V3S_Salvage_TK_GUE_EP1", 75],
	["MH60S", 75],
	["Ural_ZU23_CDF", 100]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
R3F_LOG_CFG_objets_transportables =
[
	["VWGolf", 100],
	["Lada1", 100],
	["Lada2", 100],
	["LadaLM", 100],
	["Lada2_TK_CIV_EP1", 100],
	["Skoda", 100],
	["SkodaGreen", 100],
	["SkodaRed", 100],
	["SkodaBlue", 100],
	["car_sedan", 100],
	["car_hatchback", 100],
	["policecar", 100],
	["ATV_CZ_EP1", 50],
	["ATV_US_EP1", 50],
	["Old_moto_TK_Civ_EP1", 25],
	["M1030_US_DES_EP1", 25],
	["TT650_Civ", 25],
	["TT650_Ins", 25],
	["TT650_TK_CIV_EP1", 25],
	["MMT_Civ", 25],
	["Old_bike_TK_INS_EP1", 25],
	["Barrels", 15],
	["USVehicleBox_EP1", 10],
	["USSpecialWeaponsBox", 5],
	["TKSpecialWeapons_EP1", 5],
	["BAF_BasicAmmunitionBox", 5],
	["M2StaticMG", 25],
	["SearchLight", 25],
	["SearchLight_CDF", 25],
	["SearchLight_Gue", 25],
	["KORD_high_UN_EP1", 25],
	["DSHKM_TK_GUE_EP1", 25],
	["KORD_UN_EP1", 25],
	["M2HD_mini_TriPod_US_EP1", 25]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables =
[
	"MMT_Civ",
	"Old_bike_TK_INS_EP1",
	"Barrels",
	"USSpecialWeaponsBox",
	"USVehicleBox_EP1",
	"TKSpecialWeapons_EP1",
	"BAF_BasicAmmunitionBox",
	"M2StaticMG",
	"SearchLight",
	"SearchLight_CDF",
	"SearchLight_Gue",
	"KORD_high_UN_EP1",
	"DSHKM_TK_GUE_EP1",
	"KORD_UN_EP1",
	"M2HD_mini_TriPod_US_EP1"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalités logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\ACE_OA_objects.sqf"
//#include "addons_config\BAF_objects.sqf"
//#include "addons_config\arma2_CO_objects.sqf"