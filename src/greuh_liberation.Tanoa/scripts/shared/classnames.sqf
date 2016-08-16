//IF YOU WANT TO EDIT THIS FOR MODDING PURPOSES, PLEASE USE CLASSNAMES_EXTENSIONS.SQF INSTEAD!!
//This text file is to declare the default variables, such as huron_typename, BUILD menu options and enemy spawn lists.

if ( isNil "FOB_typename" ) then { FOB_typename = "Land_Cargo_HQ_V4_F"; };									// BLUFORdefault: "Land_Cargo_HQ_V4_F"					//This is the FOB once deployed.
if ( isNil "FOB_box_typename" ) then { FOB_box_typename = "B_Slingload_01_Cargo_F"; };						// BLUFORdefault: "B_Slingload_01_Cargo_F"				//A cargo container for the FOB Box option.
if ( isNil "FOB_truck_typename" ) then { FOB_truck_typename = "B_T_Truck_01_box_F"; };						// BLUFORdefault: "B_T_Truck_01_box_F"					//A box truck for the FOB Truck option.
if ( isNil "Arsenal_typename" ) then { Arsenal_typename = "B_supplyCrate_F"; };								// BLUFORdefault: "B_supplyCrate_F"						//Arsenal Supply Box.
if ( isNil "Respawn_truck_typename" ) then { Respawn_truck_typename = "B_T_Truck_01_medical_F"; };			// BLUFORdefault: "B_T_Truck_01_medical_F"				//Medical Truck & Mobile Respawn.
if ( isNil "huron_typename" ) then { huron_typename = "B_Heli_Transport_03_F"; };							// BLUFORdefault: "B_Heli_Transport_03_F"				//The Mobile Respawn (Spartan-01). Should be able to lift containers/pods.
if ( isNil "ammobox_b_typename" ) then { ammobox_b_typename = "Box_NATO_AmmoVeh_F"; };						// BLUFORdefault: "Box_NATO_AmmoVeh_F"					//Friendly ammo crate that factories and bases will spawn.
if ( isNil "ammobox_o_typename" ) then { ammobox_o_typename = "Box_East_AmmoVeh_F"; };						// BLUFORdefault: "Box_East_AmmoVeh_F"					//Enemy ammo crates you find when capturing sectors.
if ( isNil "opfor_ammobox_transport" ) then { opfor_ammobox_transport = "O_T_Truck_03_transport_ghex_F"; };	// BLUFORdefault: "O_T_Truck_03_transport_ghex_F"		//Enemy ammo box transport - Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break!
if ( isNil "commander_classname" ) then { commander_classname = "B_T_Officer_F"; };							// BLUFORdefault: "B_T_Officer_F"						//An Officer, not sure what for. xD
if ( isNil "crewman_classname" ) then { crewman_classname = "B_T_Crew_F"; };								// BLUFORdefault: "B_T_Crew_F"							//Crew for tanks with crew spawns I imagine.
if ( isNil "pilot_classname" ) then { pilot_classname = "B_T_Helipilot_F"; };								// BLUFORdefault: "B_T_Helipilot_F"						//Helipilot for helicopters with crew spawns, again, maybe.

//If you have any other units you want in the BUILD list within Vanilla Apex etc, or want to remove some maybe, then go ahead and add/remove some from here.
//Example: ["classname",manpower,ammunition,fuel], (Don't include the last , if it's the last in the list. You'll see.)
//NO MOD CONTENT, LAST WARNING !
infantry_units = [
	//NATO(Pacific)
	["B_T_Soldier_TL_F",3,0,0],							//Team_Leader
	["B_T_Soldier_F",2,0,0],							//Rifleman
	["B_T_Soldier_LAT_F",3,0,0],						//Rifleman_RPG
	["B_T_Soldier_GL_F",3,0,0],							//Grenadier
	["B_T_Soldier_AR_F",3,0,0],							//Autorifleman
	["B_T_Soldier_AA_F",4,5,0],							//Specialist_AA
	["B_T_Soldier_AT_F",4,5,0],							//Specialist_AT
	["B_T_soldier_M_F",5,0,0],							//Marksman
	["B_T_Medic_F",5,0,0],								//Medic
	["B_T_Engineer_F",5,0,0],							//Engineer
	["B_T_Crew_F",1,0,0],								//Crew
	["B_T_Pilot_F",1,0,0],								//Pilot
	["B_T_Helipilot_F",1,0,0],							//Helipilot
	["B_T_Helicrew_F",1,0,0],							//Helicrew
	["B_T_Soldier_PG_F",2,0,0],							//Paratrooper
	//NATO(Pacific)(Special Forces)
	["B_T_Recon_TL_F",5,0,0],							//Recon Team_Leader
	["B_T_Recon_F",4,0,0],								//Recon Rifleman
	["B_T_Recon_LAT_F",5,0,0],							//Recon Rifleman_RPG
	["B_T_Recon_Medic_F",7,0,0],						//Recon Medic
	["B_T_Recon_M_F",7,0,0],							//Recon Marksman
	["B_T_Sniper_F",8,0,0],								//Sniper
	["B_T_ghillie_tna_f",8,0,0],						//Sniper_Jungle
	["B_T_Spotter_F",2,0,0],							//Spotter
	//CTRG
	["B_CTRG_Soldier_TL_tna_F",3,0,0],					//Team_Leader
	["B_CTRG_Soldier_tna_F",2,0,0],						//Rifleman
	["B_CTRG_Soldier_LAT_tna_F",3,0,0],					//Rifleman_RPG
	["B_CTRG_Soldier_AR_tna_F",3,0,0],					//Autorifleman
	["B_CTRG_Soldier_M_tna_F",5,0,0],					//Marksman
	["B_CTRG_Soldier_Exp_tna_F",5,0,0],					//Demolitions_Specialist
	["B_CTRG_Soldier_Medic_tna_F",5,0,0],				//Paramedic
 	//GENDARMERIE(Local Police Forces)
	["B_GEN_Commander_F",3,0,0],						//Gendarmerie_Commander
	["B_GEN_Soldier_F",2,0,0]							//Gendarmerie_Soldier
];
if ( isNil "infantry_units_extension" ) then { infantry_units_extension = [] };
if ( isNil "infantry_units_overwrite" ) then { infantry_units_overwrite = false };
if ( infantry_units_overwrite ) then { infantry_units = infantry_units_extension; } else { infantry_units = infantry_units + infantry_units_extension; };

light_vehicles = [
	["C_KART_01_Blu_F",0,0,1],							//Go-Kart
	["B_Quadbike_01_F",0,0,1],							//Quadbike
	["C_Hatchback_01_sport_F",0,0,1],					//Hatchback
	["B_GEN_Offroad_01_gen_F",0,0,1],					//Gendarmerie_Offroad
	["B_T_LSV_01_unarmed_F",0,0,2],						//Prowler
	["B_T_LSV_01_armed_F",0,10,2],						//Prowler_Armed
	["B_T_MRAP_01_F",0,0,4],							//Hunter
	["B_T_MRAP_01_hmg_F",0,10,4],						//Hunter_HMG
	["B_T_MRAP_01_gmg_F",0,20,4],						//Hunter_GMG
	["I_MRAP_03_F",0,0,4],								//Strider
	["I_MRAP_03_hmg_F",0,10,4],							//Strider_HMG
	["I_MRAP_03_gmg_F",0,20,4],							//Strider_GMG
	["B_UGV_01_F",0,0,5],								//UGV_Stomper
	["B_UGV_01_rcws_F",0,50,5],							//UGV_Stomper_RCWS
	["B_T_Truck_01_transport_F",0,0,5],					//HEMTT_Transport
	["B_T_Truck_01_covered_F",0,0,5],					//HEMTT_Transport_Covered
	["C_Scooter_Transport_01_F",0,0,2],					//Jetski
	["B_T_Boat_Transport_01_F",0,0,2],					//Assault_Transport
	["B_T_Boat_Armed_01_minigun_F",0,25,10]				//Speedboat_Minigun
];
if ( isNil "light_vehicles_extension" ) then { light_vehicles_extension = [] };
if ( isNil "light_vehicles_overwrite" ) then { light_vehicles_overwrite = false };
if ( light_vehicles_overwrite ) then { light_vehicles = light_vehicles_extension; } else { light_vehicles = light_vehicles + light_vehicles_extension; };

heavy_vehicles = [
	["B_T_APC_Wheeled_01_cannon_F",0,25,8],				//AMV-7_Marshall
	["B_T_APC_Tracked_01_rcws_F",0,30,15],				//IFV-6C_Panther
	["I_APC_Wheeled_03_cannon_F",0,35,18],				//AFV-4_Gorgon
	["I_APC_tracked_03_cannon_F",0,45,25],				//FV_720_Mora
	["B_T_APC_Tracked_01_AA_F",0,45,15],				//IFV-6A_Cheetah
	["I_MBT_03_cannon_F",0,50,20],						//MBT-52_Kuma
	["B_T_MBT_01_cannon_F",0,75,20],					//M2A1_Slammer
	["B_T_MBT_01_TUSK_F",0,100,25],						//M2A1_Slammer_UP
	["B_T_MBT_01_arty_F",0,750,30],						//M4_Scorcher
	["B_T_MBT_01_mlrs_F",0,1000,100]					//M5_Sandstorm_MLRS
];
if ( isNil "heavy_vehicles_extension" ) then { heavy_vehicles_extension = [] };
if ( isNil "heavy_vehicles_overwrite" ) then { heavy_vehicles_overwrite = false };
if ( heavy_vehicles_overwrite ) then { heavy_vehicles = heavy_vehicles_extension; } else { heavy_vehicles = heavy_vehicles + heavy_vehicles_extension; };

air_vehicles = [
	["B_UAV_01_F",0,0,5],								//AR-2_Darter
	["B_Heli_Light_01_F",0,0,10],						//MH-9_Littlebird
	["B_Heli_Light_01_armed_F",0,30,10],				//AH-9_Pawnee
	["I_Heli_light_03_unarmed_F",0,0,10],				//WY-55_Hellcat_Unarmed
	["I_Heli_light_03_F",0,30,10],						//WY-55_Hellcat_Armed
	["B_Heli_Attack_01_F",0,100,20],					//AH-99_Blackfoot
	["B_CTRG_Heli_Transport_01_tropic_F",0,20,20],		//UH-80_Ghosthawk
	["I_Heli_Transport_02_F",0,0,25],					//CH-49_Mohawk
	["B_Heli_Transport_03_F",0,20,30],					//CH-67_Huron
	["C_Plane_Civil_01_racing_F",0,0,15],				//Caeser_BTT_Racing
	["B_UAV_02_F",0,20,10],								//MQ-4A_Greyhawk
	["B_UAV_02_CAS_F",0,50,10],							//MQ-4A_Greyhawk_CAS
	["B_T_UAV_03_F",0,100,10],							//MQ-12_Falcon
	["I_Plane_Fighter_03_AA_F",0,150,40],				//A-143_Buzzard_AA
	["I_Plane_Fighter_CAS_F",0,150,40],					//A-143_Buzzard_CAS
	["B_Plane_CAS_01_F",0,250,40],						//A-164_Wipeout
	["B_T_VTOL_01_infantry_F",0,0,50],					//V-44_X_Blackfish_Infantry
	["B_T_VTOL_01_vehicle_F",0,0,50],					//V-44_X_Blackfish_Vehicle
	["B_T_VTOL_01_armed_F",0,750,50]					//V-44_X_Blackfish_Armed
];
if ( isNil "air_vehicles_extension" ) then { air_vehicles_extension = [] };
if ( isNil "air_vehicles_overwrite" ) then { air_vehicles_overwrite = false };
if ( air_vehicles_overwrite ) then { air_vehicles = air_vehicles_extension; } else { air_vehicles = air_vehicles + air_vehicles_extension; };

static_vehicles = [
	["B_T_HMG_01_F",0,10,0],							//Mk.30_HMG
	["B_HMG_01_high_F",0,10,0],							//Mk.30_HMG_High
	["B_T_GMG_01_F",0,20,0],							//Mk.32_GMG
	["B_GMG_01_high_F",0,20,0],							//Mk.32_GMG_High
	["B_T_Static_AA_F",0,30,0],							//Static_Titan_AA
	["B_T_Static_AT_F",0,30,0],							//Static_Titan_AT
	["B_T_Mortar_01_F",0,50,0]							//Mk6_Mortar
];
if ( isNil "static_vehicles_extension" ) then { static_vehicles_extension = [] };
if ( isNil "static_vehicles_overwrite" ) then { static_vehicles_overwrite = false };
if ( static_vehicles_overwrite ) then { static_vehicles = static_vehicles_extension; } else { static_vehicles = static_vehicles + static_vehicles_extension; };

buildings = [
	["Land_Medevac_HQ_V1_F",0,0,0],
	["Land_Cargo_House_V4_F",0,0,0],
	["Land_Cargo_Patrol_V4_F",0,0,0],
	["Land_Cargo_Tower_V4_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_HelipadCircle_F",0,0,0],
	["Land_HelipadCivil_F",0,0,0],
	["Land_HelipadRescue_F",0,0,0],
	["Land_HelipadSquare_F",0,0,0],
	["PortableHelipadLight_01_blue_F",0,0,0],
	["PortableHelipadLight_01_green_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["PortableHelipadLight_01_white_F",0,0,0],
	["PortableHelipadLight_01_yellow_F",0,0,0],
	["Land_TentHangar_V1_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Flag_CTRG_F",0,0,0],
	["Flag_Gendarmerie_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_spp_Transformer_F",0,0,0],
	["Land_SolarPanel_3_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_MetalCase_01_large_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["CargoNet_01_box_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_PortableLight_double_F",0,0,0],
	["Land_BarGate_F",0,0,0],
	["Land_HBarrier_01_line_1_green_F",0,0,0],
	["Land_HBarrier_01_line_3_green_F",0,0,0],
	["Land_HBarrier_01_line_5_green_F",0,0,0],
	["Land_HBarrier_01_big_4_green_F",0,0,0],
	["Land_HBarrier_01_wall_4_green_F",0,0,0],
	["Land_HBarrier_01_wall_6_green_F",0,0,0],
	["Land_HBarrier_01_wall_corner_green_F",0,0,0],
	["Land_HBarrier_01_wall_corridor_green_F",0,0,0],
	["Land_HBarrier_01_big_tower_green_F",0,0,0],
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_CncBarrier_F",0,0,0],
	["Land_CncWall4_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_BagFence_Short_F",0,0,0],
	["Land_BagFence_Long_F",0,0,0],
	["Land_BagFence_Corner_F",0,0,0],
	["Land_BagFence_End_F",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["RoadBarrier_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["ShootingPos_F",0,0,0],
	["Land_Obstacle_Bridge_F",0,0,0],
	["Land_JumpTarget_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];
if ( isNil "buildings_extension" ) then { buildings_extension = [] };
if ( isNil "buildings_overwrite" ) then { buildings_overwrite = false };
if ( buildings_overwrite ) then { buildings = buildings_extension; } else { buildings = buildings + buildings_extension; };

support_vehicles = [
	[Arsenal_typename,10,0,0],							//Arsenal_Supply_Box
	[FOB_box_typename,30,100,0],						//FOB_Box
	[FOB_truck_typename,30,50,5],						//FOB_Truck
	["B_T_APC_Tracked_01_CRV_F",0,30,10],				//CRV-6e_Bobcat
	["B_T_Truck_01_Repair_F",10,0,5],					//HEMTT_Repair
	["B_T_Truck_01_fuel_F",10,0,5],						//HEMTT_Fuel
	[Respawn_truck_typename,20,0,5],					//Medical Truck & Mobile Respawn
	["B_T_Truck_01_ammo_F",10,0,5],						//HEMTT_Ammo
	["B_Slingload_01_Repair_F",5,0,0],					//Huron_Repair
	["B_Slingload_01_Fuel_F",5,0,0],					//Huron_Fuel
	["B_Slingload_01_Medevac_F",5,0,0],					//Huron_Medevac
	["B_Slingload_01_Ammo_F",5,0,0],					//Huron_Ammo
	["Box_NATO_AmmoVeh_F",0,154,0],						//These are just to make friendly the ammo crates recycleable.
	["Box_East_AmmoVeh_F",0,115,0]						//These are just to make friendly the ammo crates recycleable.
];
if ( isNil "support_vehicles_extension" ) then { support_vehicles_extension = [] };
if ( isNil "support_vehicles_overwrite" ) then { support_vehicles_overwrite = false };
if ( support_vehicles_overwrite ) then { support_vehicles = support_vehicles_extension; } else { support_vehicles = support_vehicles + support_vehicles_extension; };

//This bit below is the premade squads, for the Commander role. They're all updated so I wouldn't worry about any of this unless you wanted to add some more variants? There's more work to be done though.
if ( isNil "blufor_squad_inf_light" ) then { blufor_squad_inf_light = [] };
if ( count blufor_squad_inf_light == 0 ) then { blufor_squad_inf_light = [ "B_T_Soldier_TL_F","B_T_Soldier_AR_F","B_T_Soldier_GL_F","B_T_Soldier_AR_F","B_T_Soldier_GL_F","B_T_Medic_F","B_T_Soldier_LAT_F","B_T_Soldier_F","B_T_Soldier_F" ]; };
if ( isNil "blufor_squad_inf" ) then { blufor_squad_inf = [] };
if ( count blufor_squad_inf == 0 ) then { blufor_squad_inf = [ "B_T_Soldier_TL_F","B_T_Soldier_AR_F","B_T_Soldier_AR_F","B_T_Soldier_AR_F","B_T_Medic_F","B_T_Soldier_GL_F","B_T_Soldier_LAT_F","B_T_Soldier_LAT_F","B_T_soldier_M_F","B_T_Recon_M_F" ]; };
if ( isNil "blufor_squad_at" ) then { blufor_squad_at = [] };
if ( count blufor_squad_at == 0 ) then { blufor_squad_at = [ "B_T_Soldier_TL_F","B_T_Soldier_AT_F","B_T_Soldier_AT_F","B_T_Soldier_AT_F","B_T_Medic_F","B_T_Soldier_F" ]; };
if ( isNil "blufor_squad_aa" ) then { blufor_squad_aa = [] };
if ( count blufor_squad_aa == 0 ) then { blufor_squad_aa = [ "B_T_Soldier_TL_F","B_T_Soldier_AA_F","B_T_Soldier_AA_F","B_T_Soldier_AA_F","B_T_Medic_F","B_T_Soldier_F" ]; };
if ( isNil "blufor_squad_recon" ) then { blufor_squad_recon = [] };
if ( count blufor_squad_recon == 0 ) then { blufor_squad_recon = [ "B_T_Recon_TL_F","B_T_Recon_F","B_T_Recon_F","B_T_Recon_Medic_F","B_T_Recon_LAT_F","B_T_Recon_LAT_F","B_T_Recon_M_F","B_T_Sniper_F","B_T_Recon_F" ]; };
if ( isNil "blufor_squad_para" ) then { blufor_squad_para = [] };
if ( count blufor_squad_para == 0 ) then { blufor_squad_para = [ "B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F" ]; };
if ( isNil "uavs" ) then { uavs = [] }; uavs = [] + uavs + [ "B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","B_UGV_01_rcws_F" ];
if ( isNil "elite_vehicles_extension" ) then { elite_vehicles_extension = [] }; elite_vehicles = [] + elite_vehicles_extension + [];
//What can ressuply what comes below.
if ( isNil "ai_resupply_sources_extension" ) then { ai_resupply_sources_extension = [] };
ai_resupply_sources = [] + ai_resupply_sources_extension + [ Respawn_truck_typename,huron_typename,Arsenal_typename,"B_T_APC_Tracked_01_CRV_F","B_T_Truck_01_ammo_F","B_Slingload_01_Ammo_F","JNS_Skycrane_Pod_Ammo_BLU_Black" ];
if ( isNil "vehicle_repair_sources_extension" ) then { vehicle_repair_sources_extension = [] };
vehicle_repair_sources = [] + vehicle_repair_sources_extension + [ "B_T_APC_Tracked_01_CRV_F","C_Offroad_01_repair_F","B_T_Truck_01_Repair_F","B_Slingload_01_Repair_F","JNS_Skycrane_Pod_Repair_BLU_Black" ];
if ( isNil "vehicle_rearm_sources_extension" ) then { vehicle_rearm_sources_extension = [] };
vehicle_rearm_sources = [] + vehicle_rearm_sources_extension + [ "B_T_APC_Tracked_01_CRV_F","B_T_Truck_01_ammo_F","B_Slingload_01_Ammo_F","JNS_Skycrane_Pod_Ammo_BLU_Black" ];
if ( isNil "vehicle_refuel_sources_extension" ) then { vehicle_refuel_sources_extension = [] };
vehicle_refuel_sources = [] + vehicle_refuel_sources_extension +  [ "B_T_APC_Tracked_01_CRV_F","B_T_Truck_01_fuel_F","B_Slingload_01_Fuel_F" ];
//Cost of those Commander role premade squads.
squads = [
	[blufor_squad_inf_light,20,0,0],
	[blufor_squad_inf,25,0,0],
	[blufor_squad_at,30,10,0],
	[blufor_squad_aa,30,10,0],
	[blufor_squad_recon,35,0,0],
	[blufor_squad_para,15,0,0]
];

//This part tells the server which unit plays the follow roles. Enemy squads are created from these values also. I don't see why you'd want to change this without it being modded content.
if ( isNil "opfor_officer") then { opfor_officer = "O_T_Officer_F"; };										//Officer
if ( isNil "opfor_team_leader") then { opfor_team_leader = "O_T_Soldier_TL_F"; };							//Team_Leader
if ( isNil "opfor_squad_leader") then { opfor_squad_leader = "O_T_Soldier_SL_F"; };							//Squad_Leader
if ( isNil "opfor_rifleman") then { opfor_rifleman = "O_T_Soldier_F"; };									//Rifleman
if ( isNil "opfor_rpg") then { opfor_rpg = "O_T_Soldier_LAT_F"; };											//Rifleman_RPG
if ( isNil "opfor_grenadier") then { opfor_grenadier = "O_T_Soldier_GL_F"; };								//Grenadier
if ( isNil "opfor_marksman") then { opfor_marksman = "O_T_Soldier_M_F"; };									//Marksman
if ( isNil "opfor_machinegunner") then { opfor_machinegunner = "O_T_Soldier_AR_F"; };						//Autorifleman
if ( isNil "opfor_heavygunner") then { opfor_heavygunner = "O_T_Soldier_AR_F"; };							//No "Heavy" Gunner in apex, used ^Autorifleman twice instead.
if ( isNil "opfor_aa") then { opfor_aa = "O_T_Soldier_AA_F"; };												//Specialist_AA
if ( isNil "opfor_at") then { opfor_at = "O_T_Soldier_AT_F"; };												//Specialist_AT
if ( isNil "opfor_medic") then { opfor_medic = "O_T_Medic_F"; };											//Medic
if ( isNil "opfor_engineer") then { opfor_engineer = "O_T_Engineer_F"; };									//Engineer
if ( isNil "opfor_sentry") then { opfor_sentry = "O_T_Recon_F"; };											//Special Forces Scout
if ( isNil "opfor_sharpshooter") then { opfor_sharpshooter = "O_T_Recon_M_F"; };							//Special Forces Marksman
if ( isNil "opfor_sniper") then { opfor_sniper = "O_T_ghillie_tna_F"; };									//Special Forces Sniper
if ( isNil "opfor_paratrooper") then { opfor_paratrooper = "O_T_Soldier_PG_F"; };							//Paratrooper
//These next few are for Secondary Objectives.
if ( isNil "opfor_mrap") then { opfor_mrap = "O_T_MRAP_02_ghex_F"; };										//Ifrit
if ( isNil "opfor_mrap_armed") then { opfor_mrap_armed = "O_T_MRAP_02_gmg_ghex_F"; };						//Ifrit_GMG
if ( isNil "opfor_transport_helo") then { opfor_transport_helo = "O_Heli_Light_02_unarmed_F"; };			//Orca_Unarmed
if ( isNil "opfor_transport_truck") then { opfor_transport_truck = "O_T_Truck_03_covered_ghex_F"; };		//Tempest_Transport_Covered
if ( isNil "opfor_fuel_truck") then { opfor_fuel_truck = "O_T_Truck_03_fuel_ghex_F"; };						//Tempest_Fuel
if ( isNil "opfor_ammo_truck") then { opfor_ammo_truck = "O_T_Truck_03_ammo_ghex_F"; };						//Tempest_Ammo
if ( isNil "opfor_fuel_container") then { opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F"; };	//Taru_Fuel_Pod
if ( isNil "opfor_ammo_container") then { opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F"; };	//Taru_Ammo_Pod
if ( isNil "opfor_flag") then { opfor_flag = "Flag_CSAT_F"; };												//CSAT_Flag
//I've added Viper squads. These appear after 75% and this is where they're declared.
if ( isNil "opfor_vipertl") then { opfor_vipertl = "O_V_Soldier_TL_ghex_F"; };								//Viper_Team_Leader
if ( isNil "opfor_viperop") then { opfor_viperop = "O_V_Soldier_ghex_F"; };									//Viper_Operative
if ( isNil "opfor_viperri") then { opfor_viperri = "O_V_Soldier_LAT_ghex_F"; };								//Viper_Rifleman_RPG
if ( isNil "opfor_viperma") then { opfor_viperma = "O_V_Soldier_M_ghex_F"; };								//Viper_Marksman
if ( isNil "opfor_viperde") then { opfor_viperde = "O_V_Soldier_Exp_ghex_F"; };								//Viper_Demolition_Specialist
if ( isNil "opfor_viperpa") then { opfor_viperpa = "O_V_Soldier_Medic_ghex_F"; };							//Viper_Paramedic

//These guys are you basic defenders, they're chosen at random and spawn in sectors at the beginning of conflict. If you're finding it too tough, comment out the CSAT infanty.
militia_squad = [
	//SYNDIKAT
	"I_C_Soldier_Para_7_F",								//Deserter(Rifle)
	"I_C_Soldier_Para_2_F",								//Enforcer(Rifle)
	"I_C_Soldier_Para_1_F",								//Soldier(Rifle)
	"I_C_Soldier_Para_6_F",								//Raider(UGL)
	"I_C_Soldier_Para_5_F",								//Specialist(Launcher)
	"I_C_Soldier_Para_8_F",								//Saboteur(Explosives)
	"I_C_Soldier_Para_4_F",								//Oppressor(Machine Gun)
	"I_C_Soldier_Para_3_F",								//Militiaman(Medikit)
	"I_C_Helipilot_F",									//Helicopter_Pilot
	//CSAT(Pacific)
	"O_T_Soldier_F",									//Rifleman
	"O_T_Soldier_LAT_F",								//Rifleman_RPG
	"O_T_Soldier_GL_F",									//Grenadier
	"O_T_Soldier_AA_F",									//Specialist_AA
	"O_T_Soldier_AT_F",									//Specialist_AT
	"O_T_Medic_F",										//Medic
	"O_T_Engineer_F"									//Engineer
];
if ( isNil "militia_squad_extension" ) then { militia_squad_extension = [] };
if ( isNil "militia_squad_overwrite" ) then { militia_squad_overwrite = false };
if ( militia_squad_overwrite ) then { militia_squad = militia_squad_extension; } else { militia_squad = militia_squad + militia_squad_extension; };

//Same as above but for vehicles. These heli's spawn on the ground, makes sense as they're local forces.
militia_vehicles = [
	//SYNDIKAT
	"I_C_Offroad_02_unarmed_F",							//MB-4WD(Car)
	"I_C_Van_01_transport_F",							//Truck_Transport
	"I_C_Heli_Light_01_civil_F",						//M900(Heli)
	//CSAT(Pacific)
	"O_G_Offroad_01_armed_F",							//Offroad_Armed
	"O_T_LSV_02_armed_F"								//Qilin_Armed
];
if ( isNil "militia_vehicles_extension" ) then { militia_vehicles_extension = [] };
if ( isNil "militia_vehicles_overwrite" ) then { militia_vehicles_overwrite = false };
if ( militia_vehicles_overwrite ) then { militia_vehicles = militia_vehicles_extension; } else { militia_vehicles = militia_vehicles + militia_vehicles_extension; };

//All OPFOR vehicles that can spawn to defend a sector. The more entries, the more chance that particular vehicle is chosen. This is for high enemy intensity.
opfor_vehicles = [
	//CSAT(Pacific)
	"O_T_LSV_02_armed_F",								//Qilin_Armed
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_gmg_ghex_F",							//Ifrit_GMG
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Tracked_02_cannon_ghex_F",					//BTR-K_Kamysh
	"O_T_APC_Tracked_02_AA_ghex_F",						//ZSU-39_Tigris
	"O_T_MBT_02_cannon_ghex_F",							//T-100_Varsuk
	"O_T_MBT_02_cannon_ghex_F"							//T-100_Varsuk
];
if ( isNil "opfor_vehicles_extension" ) then { opfor_vehicles_extension = [] };
if ( isNil "opfor_vehicles_overwrite" ) then { opfor_vehicles_overwrite = false };
if ( opfor_vehicles_overwrite ) then { opfor_vehicles = opfor_vehicles_extension; } else { opfor_vehicles = opfor_vehicles + opfor_vehicles_extension; };

//This is the same as above but for lower enemy intensity.
opfor_vehicles_low_intensity = [
	//CSAT(Pacific)
	"O_T_LSV_02_armed_F",								//Qilin_Armed
	"O_T_LSV_02_armed_F",								//Qilin_Armed
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Tracked_02_cannon_ghex_F"					//BTR-K_Kamysh
];
if ( isNil "opfor_vehicles_low_intensity_extension" ) then { opfor_vehicles_low_intensity_extension = [] };
if ( isNil "opfor_vehicles_low_intensity_overwrite" ) then { opfor_vehicles_low_intensity_overwrite = false };
if ( opfor_vehicles_low_intensity_overwrite ) then { opfor_vehicles_low_intensity = opfor_vehicles_low_intensity_extension; } else { opfor_vehicles_low_intensity = opfor_vehicles_low_intensity + opfor_vehicles_low_intensity_extension; };

//All OPFOR vehicles that will spawn as battlegroups, these can be the groups coming for your FOB's as well as heavy reinforcements I believe. For high enemy intensity.
opfor_battlegroup_vehicles = [
	//CSAT(Pacific)
	"O_T_LSV_02_armed_F",								//Qilin_Armed
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_gmg_ghex_F",							//Ifrit_GMG
	"O_T_Truck_03_transport_ghex_F",					//Tempest_Transport
	"O_T_Truck_03_covered_ghex_F",						//Tempest_Transport_Covered
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Tracked_02_cannon_ghex_F",					//BTR-K_Kamysh
	"O_T_APC_Tracked_02_cannon_ghex_F",					//BTR-K_Kamysh
	"O_T_APC_Tracked_02_AA_ghex_F",						//ZSU-39_Tigris
	"O_T_APC_Tracked_02_AA_ghex_F",						//ZSU-39_Tigris
	"O_T_MBT_02_cannon_ghex_F",							//T-100_Varsuk
	"O_T_MBT_02_cannon_ghex_F",							//T-100_Varsuk
	"O_Heli_Light_02_unarmed_F",						//Orca_Unarmed(Black)
	"O_Heli_Light_02_v2_F",								//PO-30_Orca_Armed(Black)
	"O_Heli_Light_02_v2_F",								//PO-30_Orca_Armed(Black)
	"O_Heli_Attack_02_black_F",							//Mi-48_Kajman(Black)
	"O_T_VTOL_02_infantry_F",							//Y-32_Xi'an_Infantry. These guys are OP as hell sometimes!:D
	"O_Plane_CAS_02_F"									//To-199_Neophron_CAS. These guys not so much..
];
if ( isNil "opfor_battlegroup_vehicles_extension" ) then { opfor_battlegroup_vehicles_extension = [] };
if ( isNil "opfor_battlegroup_vehicles_overwrite" ) then { opfor_battlegroup_vehicles_overwrite = false };
if ( opfor_battlegroup_vehicles_overwrite ) then { opfor_battlegroup_vehicles = opfor_battlegroup_vehicles_extension; } else { opfor_battlegroup_vehicles = opfor_battlegroup_vehicles + opfor_battlegroup_vehicles_extension; };

//This is the same as above but for lower enemy intensity.
opfor_battlegroup_vehicles_low_intensity = [
	//CSAT(Pacific)
	"O_T_LSV_02_armed_F",								//Qilin_Armed
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_hmg_ghex_F",							//Ifrit_HMG
	"O_T_MRAP_02_gmg_ghex_F",							//Ifrit_GMG
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Tracked_02_cannon_ghex_F",					//BTR-K_Kamysh
	"O_T_Truck_03_transport_ghex_F",					//Tempest_Transport
	"O_T_Truck_03_covered_ghex_F",						//Tempest_Transport_Covered
	"O_Heli_Light_02_unarmed_F",						//PO-30_Orca_Unarmed(Black)
	"O_Heli_Light_02_v2_F"								//PO-30_Orca_Armed(Black)
];
if ( isNil "opfor_battlegroup_vehicles_low_intensity_extension" ) then { opfor_battlegroup_vehicles_low_intensity_extension = [] };
if ( isNil "opfor_battlegroup_vehicles_low_intensity_overwrite" ) then { opfor_battlegroup_vehicles_low_intensity_overwrite = false };
if ( opfor_battlegroup_vehicles_low_intensity_overwrite ) then { opfor_battlegroup_vehicles_low_intensity = opfor_battlegroup_vehicles_low_intensity_extension; } else { opfor_battlegroup_vehicles_low_intensity = opfor_battlegroup_vehicles_low_intensity + opfor_battlegroup_vehicles_low_intensity_extension; };

//These are all (or just the ones you want to anyway) vehicles above that can also transport 8 infantry. Make sure they can fit 8 or you'll see some weird bugs.
opfor_troup_transports = [
	//CSAT(Pacific)
	"I_C_Van_01_transport_F",							//Truck_Transport
	"O_T_Truck_03_transport_ghex_F",					//Tempest_Transport
	"O_T_Truck_03_covered_ghex_F",						//Tempest_Transport_Covered
	"O_T_APC_Wheeled_02_rcws_ghex_F",					//MSE-3_Marid
	"O_T_APC_Tracked_02_cannon_ghex_F",					//BTR-K_Kamysh
	"O_Heli_Light_02_unarmed_F"							//PO-30_Orca_Unarmed(Black)
];
if ( isNil "opfor_troup_transports_extension" ) then { opfor_troup_transports_extension = [] };
if ( isNil "opfor_troup_transports_overwrite" ) then { opfor_troup_transports_overwrite = false };
if ( opfor_troup_transports_overwrite ) then { opfor_troup_transports = opfor_troup_transports_extension; } else { opfor_troup_transports = opfor_troup_transports + opfor_troup_transports_extension; };

//All OPFOR choppers used above, so that they spawn in the air as well as for enemy air spawns.
opfor_choppers = [
	//CSAT(Pacific)
	"O_Heli_Light_02_unarmed_F",						//Orca_Unarmed(Black)
	"O_Heli_Light_02_v2_F",								//PO-30_Orca_Armed(Black)
	"O_Heli_Light_02_v2_F",								//PO-30_Orca_Armed(Black)
	"O_Heli_Attack_02_black_F"							//Mi-48_Kajman(Black)
];
if ( isNil "opfor_choppers_extension" ) then { opfor_choppers_extension = [] };
if ( isNil "opfor_choppers_overwrite" ) then { opfor_choppers_overwrite = false };
if ( opfor_choppers_overwrite ) then { opfor_choppers = opfor_choppers_extension; } else { opfor_choppers = opfor_choppers + opfor_choppers_extension; };

//All OPFOR planes or VTOL used above, so that they spawn in the air as well as for enemy air spawns.
opfor_air = [
	//CSAT(Pacific)
	"O_T_VTOL_02_infantry_F",							//Y-32_Xi'an_Infantry
	"O_Plane_CAS_02_F"									//To-199_Neophron_CAS
];
if ( isNil "opfor_air_extension" ) then { opfor_air_extension = [] };
if ( isNil "opfor_air_overwrite" ) then { opfor_air_overwrite = false };
if ( opfor_air_overwrite ) then { opfor_air = opfor_air_extension; } else { opfor_air = opfor_air + opfor_air_extension; };

civilians = [
	//ORIGINAL
	"C_man_1",
	"C_man_polo_1_F",
	"C_man_polo_2_F",
	"C_man_polo_3_F",
	"C_man_polo_4_F",
	"C_man_polo_5_F",
	"C_man_polo_6_F",
	"C_man_hunter_1_F",
	"C_journalist_F",
	"C_man_w_worker_F",
	"C_man_p_beggar_F",
	//TANOAN
	"C_Man_casual_1_F_tanoan",
	"C_Man_casual_2_F_tanoan",
	"C_Man_casual_3_F_tanoan",
	"C_Man_casual_4_F_tanoan",
	"C_Man_casual_5_F_tanoan",
	"C_Man_casual_6_F_tanoan",
	"C_Man_sport_1_F_tanoan",
	"C_Man_sport_2_F_tanoan",
	"C_Man_sport_3_F_tanoan"
];
if ( isNil "civilians_extension" ) then { civilians_extension = [] };
if ( isNil "civilians_overwrite" ) then { civilians_overwrite = false };
if ( civilians_overwrite ) then { civilians = civilians_extension; } else { civilians = civilians + civilians_extension; };

civilian_vehicles = [
	//ORIGINAL
	"C_Quadbike_01_F",
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_SUV_01_F",
	"C_Offroad_01_F",
	"C_Offroad_01_repair_F",
	"C_Van_01_fuel_F",
	"C_Van_01_transport_F",
	"C_Van_01_box_F",
	//TANOAN
	"C_Offroad_02_unarmed_F"
];
if ( isNil "civilian_vehicles_extension" ) then { civilian_vehicles_extension = [] };
if ( isNil "civilian_vehicles_overwrite" ) then { civilian_vehicles_overwrite = false };
if ( civilian_vehicles_overwrite ) then { civilian_vehicles = civilian_vehicles_extension; } else { civilian_vehicles = civilian_vehicles + civilian_vehicles_extension; };

//This still needs some work realistically. Check for OP Apex stuff as well as some others. Working on themed optional gear whitelists, for those who want more immersion, anyways.
GRLIB_blacklisted_from_arsenal = [
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"I_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"O_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"I_HMG_01_weapon_F",
	"I_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"I_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_Mortar_01_weapon_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_HMG_01_support_high_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F"
];
if ( isNil "blacklisted_from_arsenal_extension" ) then { blacklisted_from_arsenal_extension = [] };
GRLIB_blacklisted_from_arsenal = [] + blacklisted_from_arsenal_extension + GRLIB_blacklisted_from_arsenal;

infantry_units = [ infantry_units ] call F_filterMods;
light_vehicles = [ light_vehicles ] call F_filterMods;
heavy_vehicles = [ heavy_vehicles ] call F_filterMods;
air_vehicles = [ air_vehicles ] call F_filterMods;
support_vehicles = [ support_vehicles ] call F_filterMods;
static_vehicles = [ static_vehicles ] call F_filterMods;
buildings = [ buildings ] call F_filterMods;
build_lists = [[],infantry_units,light_vehicles,heavy_vehicles,air_vehicles,static_vehicles,buildings,support_vehicles,squads];
militia_squad = [ militia_squad , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
militia_vehicles = [ militia_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles = [ opfor_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles_low_intensity = [ opfor_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles = [ opfor_battlegroup_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles_low_intensity = [ opfor_battlegroup_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_troup_transports = [ opfor_troup_transports , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_choppers = [ opfor_choppers , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_air = [ opfor_air , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilians = [ civilians , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilian_vehicles = [ civilian_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
military_alphabet = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-Ray","Yankee","Zulu"];
land_vehicles_classnames = (opfor_vehicles + militia_vehicles);
opfor_squad_low_intensity = [opfor_team_leader,opfor_machinegunner,opfor_medic,opfor_rpg,opfor_sentry,opfor_sentry,opfor_sentry,opfor_sentry];
opfor_squad_8_standard = [opfor_squad_leader,opfor_team_leader,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_grenadier,opfor_rpg];
opfor_squad_8_infkillers = [opfor_squad_leader,opfor_machinegunner,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_sharpshooter,opfor_sniper];
opfor_squad_8_tankkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_at,opfor_at,opfor_at];
opfor_squad_8_airkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_aa,opfor_aa,opfor_aa];
opfor_squad_high_intensity = [opfor_vipertl,opfor_viperop,opfor_viperop,opfor_viperri,opfor_viperri,opfor_viperma,opfor_viperde,opfor_viperpa];
all_resistance_troops = [] + militia_squad;
all_hostile_classnames = (land_vehicles_classnames + opfor_air + opfor_choppers + opfor_troup_transports + opfor_vehicles_low_intensity);
{ land_vehicles_classnames pushback (_x select 0); } foreach (heavy_vehicles + light_vehicles);
air_vehicles_classnames = [] + opfor_choppers;
{ air_vehicles_classnames pushback (_x select 0); } foreach air_vehicles;
markers_reset = [99999,99999,0];
zeropos = [0,0,0];
squads_names = [ localize "STR_LIGHT_RIFLE_SQUAD", localize "STR_RIFLE_SQUAD", localize "STR_AT_SQUAD", localize "STR_AA_SQUAD",  localize "STR_RECON_SQUAD", localize "STR_PARA_SQUAD" ];
boats_names = [ "B_T_Boat_Transport_01_F", "B_T_Boat_Armed_01_minigun_F" ];
elite_vehicles = [ elite_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
original_resistance = [ "I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_1_F","I_C_Pilot_F"];
opfor_infantry = [opfor_sentry,opfor_rifleman,opfor_grenadier,opfor_squad_leader,opfor_team_leader,opfor_marksman,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_rpg,opfor_at,opfor_aa,opfor_officer,opfor_sharpshooter,opfor_sniper,opfor_engineer];
GRLIB_intel_table = "Land_CampingTable_small_F";
GRLIB_intel_chair = "Land_CampingChair_V2_F";
GRLIB_intel_file = "Land_File1_F";
GRLIB_intel_laptop = "Land_Laptop_device_F";
GRLIB_ignore_colisions_when_building = [
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_yellow_F",
	"Land_runway_edgelight",
	"Land_runway_edgelight_blue_F",
	"Land_HelipadSquare_F",
	"Sign_Sphere100cm_F",
	"TMR_Autorest_Georef",
	"Land_ClutterCutter_large_F"
];
GRLIB_sar_wreck = "Land_Wreck_Heli_Attack_01_F";
GRLIB_sar_fire = "test_EmptyObjectForFireBig";