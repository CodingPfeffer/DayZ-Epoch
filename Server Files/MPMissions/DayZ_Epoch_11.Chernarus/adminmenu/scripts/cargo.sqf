_veh = _this select 0;
_dayz_wep =["AKS_74_GOSHAWK","G36_C_SD_camo","SCAR_H_CQC_CCO_SD","SCAR_L_STD_EGLM_TWS","SCAR_L_STD_Mk4CQT","SCAR_H_STD_EGLM_Spect","M4A3_RCO_GL_EP1","M110_TWS_EP1","AKS_GOLD","M4A1_HWS_GL","M32_EP1","M249_TWS_EP1","AA12,"M14_EP1","Remington870_lamp","M4A3_CCO_EP1","M4A1_AIM_SD_camo","BAF_L85A2_RIS_CWS","BAF_AS50_scoped","Winchester1866","LeeEnfield","revolver_EP1","FN_FAL","FN_FAL_ANPVS4","m107_DZ",
		   "Mk_48_DZ","DMR","M16A2","M16A2GL","bizon_silenced","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","M4A1","MP5SD","MP5A5","huntingrifle","Crossbow","glock17_EP1","M9",
		   "M9SD","Colt1911","UZI_EP1","Binocular","Binocular_Vector","NVGoggles","ItemGPS","ItemMap","ItemCompass","ItemWatch","ItemFlashlight","ItemFlashlightRed","ItemKnife","ItemHatchet","ItemMatchbox",
		   "ItemEtool","ItemToolbox"];
			
_dayz_mag =["20Rnd_762x51_SB_SCAR","20Rnd_762x51_B_SCAR","6Rnd_HE_M203","10Rnd_127x99_m107","200Rnd_556x45_M249","30Rnd_545x39_AK","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","20Rnd_762x51_DMR","30Rnd_762x39_AK47","5Rnd_762x51_M24","10Rnd_127x99_m107","8Rnd_B_Beneli_74Slug","1Rnd_HE_M203","FlareWhite_M203",
		   "FlareGreen_M203","1Rnd_Smoke_M203","200Rnd_556x45_M249","8Rnd_B_Beneli_Pellets","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","100Rnd_762x51_M240","15Rnd_W1866_Slug","5x_22_LR_17_HMR",
		   "10x_303","15Rnd_9x19_M9","15Rnd_9x19_M9SD","7Rnd_45ACP_1911","17Rnd_9x19_glock17","8Rnd_9x18_Makarov","6Rnd_45ACP","8Rnd_9x18_Makarov","BoltSteel","PipeBomb","HandGrenade_west",
		   "FoodSteakRaw","FoodSteakCooked","FoodCanBakedBeans","FoodCanSardines","FoodCanPasta","ItemSodaCoke","ItemSodaPepsi","ItemWaterbottle","HandRoadFlare","HandChemGreen","HandChemBlue",
		   "HandChemRed","ItemSandbag","ItemTankTrap","ItemWire","ItemBandage","ItemPainkiller","ItemMorphine","ItemEpinephrine","ItemAntibiotic","ItemBloodbag","ItemHeatPack","PartWoodPile","PartWheel",
		   "PartFueltank","PartGlass","PartEngine","PartGeneric","PartVRotor","ItemJerrycan","ItemGenerator","ItemTent","Skin_Soldier1_DZ","Skin_Survivor2_DZ","Skin_Camo1_DZ","Skin_Sniper1_DZ"];
			
_dayz_bpk =["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1","DZ_Backpack_EP1"];
			
{_veh addWeaponCargo [_x,5];} forEach _dayz_wep;
{_veh addMagazineCargo [_x,5];} forEach _dayz_mag;
{_veh addBackpackCargo [_x,2];} forEach _dayz_bpk;