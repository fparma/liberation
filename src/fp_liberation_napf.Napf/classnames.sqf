

FOB_typename = "Land_Cargo_HQ_V1_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F";
Arsenal_typename = "B_supplyCrate_F";
Respawn_truck_typename = "B_Truck_01_medical_F";
HELO_CLASSNAME = "B_Heli_Transport_03_F";
ammobox_b_typename = "Box_NATO_AmmoVeh_F";
ammobox_o_typename = "Box_East_AmmoVeh_F";
opfor_ammobox_transport = "O_Truck_03_transport_F";
commander_classname = "B_T_Officer_F";
crewman_classname = "B_T_crew_F";
pilot_classname = "B_T_Pilot_F";

infantry_units = [
	["B_T_soldier_F",2,0,0],
	["B_T_soldier_GL_F",3,0,0],
	["B_T_soldier_AR_F",3,0,0],
	["B_T_medic_F",3,0,0],
	["B_T_soldier_M_F",3,0,0],
	["B_T_engineer_F",3,0,0],
	["B_T_soldier_LAT_F",4,0,0],
	["B_T_soldier_AA_F",5,10,0],
	["B_T_soldier_AT_F",5,10,0],
	["B_T_sniper_F",10,0,0],
	["B_T_Pilot_F",1,0,0],
	["B_T_helipilot_F",1,0,0],
	["B_T_crew_F",1,0,0]
];

light_vehicles = [
	["B_Quadbike_01_F",0,0,1],
	["B_T_MRAP_01_F",0,0,2],
	["B_T_MRAP_01_hmg_F",0,15,2],
  ["B_T_MRAP_01_gmg_F",0,25,2],
  ["B_T_LSV_01_unarmed_F",0,0,2],
  ["B_T_LSV_01_armed_F",0,15,2],
  ["B_T_Truck_01_covered_F",0,0,5],
  ["B_T_Truck_01_transport_F",0,0,5],
  ["CUP_B_HMMWV_Unarmed_USMC",0,0,2],
["CUP_B_MTVR_USMC",0,0,5],
["CUP_B_HMMWV_Ambulance_USMC",0,0,5],
["CUP_B_HMMWV_M2_USMC",0,5,5],
["CUP_B_HMMWV_M1114_USMC",0,5,5],
["CUP_B_HMMWV_MK19_USMC",0,10,5],
["CUP_B_HMMWV_TOW_USMC",0,15,5],
["CUP_B_LR_Transport_GB_W",0,0,2],
  ["B_T_APC_Wheeled_01_cannon_F",0,60,20],
  ["B_T_APC_Tracked_01_rcws_F",0,40,25],
  ["B_T_APC_Tracked_01_CRV_F",0,40,25]
];

heavy_vehicles = [
	["B_T_MBT_01_TUSK_F",0,150,50],
  ["B_T_MBT_01_cannon_F",0,150,50],
  ["B_T_MBT_01_mlrs_F",0,200,50],
  ["B_T_MBT_01_arty_F",0,200,50]
];

air_vehicles = [
	["B_Heli_Light_01_F",0,0,5],
	["B_Heli_Light_01_armed_F",0,15,5],
	["B_Heli_Transport_01_F",0,0,10],
	["B_Heli_Transport_01_camo_F",0,0,10],
  ["B_Heli_Transport_03_unarmed_F",0,0,15],
  ["B_Heli_Attack_01_F",0,80,35],
  ["B_T_VTOL_01_armed_F",0,120,40],
  ["B_T_VTOL_01_infantry_F",0,0,40],
	["B_T_VTOL_01_vehicle_F",0,0,40]
];

static_vehicles = [
	["B_HMG_01_F",0,10,0],
	["B_HMG_01_high_F",0,10,0],
	["B_GMG_01_F",0,20,0],
	["B_GMG_01_high_F",0,20,0],
	["B_static_AA_F",0,25,0],
	["B_static_AT_F",0,30,0],
	["B_Mortar_01_F",0,50,0]
];

buildings = [
	["Land_CncBarrier_F",0,0,0],
["Land_CncBarrierMedium_F",0,0,0],
["Land_CncBarrierMedium4_F",0,0,0],
["Land_CncBarrier_stripes_F",0,0,0],
["Land_CncWall4_F",0,0,0],
["Land_CncShelter_F",0,0,0],
	["Land_HBarrier_01_line_3_green_F",0,0,0],
["Land_HBarrier_01_line_5_green_F",0,0,0],
["Land_HBarrier_01_big_4_green_F",0,0,0],
["Land_HBarrier_01_line_1_green_F",0,0,0],
["Land_HBarrier_01_wall_corridor_green_F",0,0,0],
["Land_HBarrier_01_wall_corner_green_F",0,0,0],
["Land_HBarrier_01_wall_6_green_F",0,0,0],
["Land_HBarrier_01_wall_4_green_F",0,0,0],
["Land_HBarrier_01_big_tower_green_F",0,0,0],
	["Land_BagBunker_01_large_green_F",0,0,0],
["Land_BagBunker_01_small_green_F",0,0,0],
["Land_HBarrier_01_tower_green_F",0,0,0],
  ["Land_BagFence_01_corner_green_F",0,0,0],
["Land_BagFence_01_end_green_F",0,0,0],
["Land_BagFence_01_long_green_F",0,0,0],
["Land_BagFence_01_round_green_F",0,0,0],
["Land_BagFence_01_short_green_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Land_HelipadSquare_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_MetalCase_01_large_F",0,0,0],
	["CargoNet_01_box_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["Land_Metal_rack_Tall_F",0,0,0],
	["PortableHelipadLight_01_blue_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,10,0,0],
  ["Box_T_NATO_Wps_F",0,0,0],
["Box_T_NATO_WpsSpecial_F",0,0,0],
  ["ACE_Track",0,0,0],
["ACE_Wheel",0,0,0],
	[Respawn_truck_typename,20,0,5],
	[FOB_box_typename,30,50,0],
	[FOB_truck_typename,30,50,5],
	["B_T_Truck_01_ammo_F",0,30,10],
	["B_T_Truck_01_fuel_F",5,0,2],
	["B_T_Truck_01_Repair_F",10,0,5],
	["B_Slingload_01_Repair_F",5,0,0],
	["B_Slingload_01_Fuel_F",5,0,0],
	["B_Slingload_01_Ammo_F",5,0,0],
	["Box_NATO_AmmoVeh_F",0,15,0],
	["Box_East_AmmoVeh_F",0,15,0]
];


blufor_squad_inf_light = [ "B_T_Soldier_SL_F","B_T_Soldier_TL_F","B_T_soldier_GL_F","B_T_soldier_AR_F","B_T_soldier_GL_F","B_T_medic_F","B_T_soldier_LAT_F","B_T_soldier_F","B_T_soldier_F" ];
blufor_squad_inf = [ "B_T_Soldier_SL_F","B_T_Soldier_TL_F","B_T_soldier_AR_F","B_T_soldier_AR_F","B_T_medic_F","B_T_soldier_GL_F","B_T_soldier_LAT_F","B_T_soldier_LAT_F","B_T_soldier_M_F","B_T_sniper_F" ];
blufor_squad_at = [ "B_T_Soldier_SL_F","B_T_soldier_AT_F","B_T_soldier_AT_F","B_T_soldier_AT_F","B_T_medic_F","B_T_soldier_F" ];
blufor_squad_aa = [ "B_T_Soldier_SL_F","B_T_soldier_AA_F","B_T_soldier_AA_F","B_T_soldier_AA_F","B_T_medic_F","B_T_soldier_F" ];
blufor_squad_recon = [ "B_T_Soldier_TL_F","B_T_soldier_F","B_T_soldier_F","B_T_medic_F","B_T_soldier_LAT_F","B_T_soldier_LAT_F","B_T_soldier_M_F","B_T_sniper_F","B_T_soldier_F" ];
blufor_squad_para = [ "B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F","B_T_soldier_PG_F" ];
blufor_squad_inf_light = [ "B_T_Soldier_SL_F","B_T_Soldier_TL_F","B_T_soldier_GL_F","B_T_soldier_AR_F","B_T_soldier_GL_F","B_T_medic_F","B_T_soldier_LAT_F","B_T_soldier_F","B_T_soldier_F"];

uavs = [ "B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","B_UGV_01_rcws_F" ];
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];
elite_vehicles = ["B_T_MBT_01_TUSK_F", "B_T_MBT_01_cannon_F", "B_Heli_Attack_01_F", "B_T_VTOL_01_armed_F"];

ai_resupply_sources = [ Respawn_truck_typename, HELO_CLASSNAME, Arsenal_typename, "B_Slingload_01_Ammo_F", "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F" ];

squads = [
	[blufor_squad_inf_light,20,0,0],
	[blufor_squad_inf,30,0,0],
	[blufor_squad_at,20,25,0],
	[blufor_squad_aa,20,25,0],
	[blufor_squad_recon,25,0,0],
	[blufor_squad_para,20,0,0]
];

opfor_sentry = "O_T_Soldier_F";
opfor_rifleman = "O_T_Soldier_F";
opfor_grenadier = "O_T_Soldier_GL_F";
opfor_squad_leader = "O_T_Soldier_SL_F";
opfor_team_leader = "O_T_Soldier_TL_F";
opfor_marksman = "O_T_Soldier_M_F";
opfor_machinegunner = "O_T_Soldier_AR_F";
opfor_heavygunner = "O_T_Soldier_AR_F";
opfor_medic = "O_T_Medic_F";
opfor_rpg = "O_T_Soldier_LAT_F";
opfor_at = "O_T_Soldier_AT_F";
opfor_aa = "O_T_Soldier_AA_F";
opfor_officer = "O_T_Officer_F";
opfor_sharpshooter = "O_T_Recon_M_F";
opfor_sniper = "O_T_Sniper_F";
opfor_engineer = "O_T_Engineer_F";
opfor_paratrooper = "O_T_Soldier_PG_F";
opfor_mrap = "O_T_LSV_02_unarmed_F";
opfor_mrap_armed = "O_T_LSV_02_armed_F";
opfor_transport_helo = "O_Heli_Transport_04_covered_F";
opfor_transport_truck = "O_T_Truck_03_covered_ghex_F";
opfor_fuel_truck = "O_T_Truck_03_fuel_ghex_F";
opfor_ammo_truck = "O_T_Truck_03_ammo_ghex_F";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "Flag_CSAT_F";
opfor_infantry = [
	"O_T_Soldier_F",
	"O_T_Soldier_F",
	"O_T_Soldier_GL_F",
	"O_T_Soldier_SL_F",
	"O_T_Soldier_TL_F",
	"O_T_Soldier_M_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_AR_F",
	"O_T_Medic_F",
	"O_T_Soldier_LAT_F",
	"O_T_Soldier_AT_F",
	"O_T_Soldier_AA_F",
	"O_T_Officer_F",
	"O_T_Recon_M_F",
	"O_T_Sniper_F",
	"O_T_Engineer_F"
];

//========================================
// BEGIN OF OPFOR SQUAD LAYOUTS
//========================================

opfor_squad_low_intensity = [
	"O_T_Soldier_TL_F",
	"O_T_Soldier_AR_F",
	"O_T_Medic_F",
	"O_T_Soldier_AT_F",
	"O_T_Soldier_F",
	"O_T_Soldier_F",
	"O_T_Soldier_F",
	"O_T_Soldier_F"
];

opfor_squad_8_standard = [
	"O_T_Soldier_SL_F",
	"O_T_Soldier_TL_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_AR_F",
	"O_T_Medic_F",
	"O_T_Soldier_M_F",
	"O_T_Soldier_GL_F",
	"O_T_Soldier_LAT_F"
];

opfor_squad_8_infkillers = [
	"O_T_Soldier_SL_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_AR_F",
	"O_T_Medic_F",
	"O_T_Soldier_M_F",
	"O_T_Recon_M_F",
	"O_T_Sniper_F"
];

opfor_squad_8_tankkillers = [
	"O_T_Soldier_SL_F",
	"O_T_Medic_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_LAT_F",
	"O_T_Soldier_LAT_F",
	"O_T_Soldier_AT_F",
	"O_T_Soldier_AT_F",
	"O_T_Soldier_AT_F"
];
opfor_squad_8_airkillers = [
	"O_T_Soldier_SL_F",
	"O_T_Medic_F",
	"O_T_Soldier_AR_F",
	"O_T_Soldier_LAT_F",
	"O_T_Soldier_LAT_F",
	"O_T_Soldier_AA_F",
	"O_T_Soldier_AA_F",
	"O_T_Soldier_AA_F"
];

original_resistance = [
  "CUP_I_GUE_Ammobearer",
  "CUP_I_GUE_Soldier_AR",
  "CUP_I_GUE_Officer",
  "CUP_I_GUE_Crew",
  "CUP_I_GUE_Soldier_GL",
  "CUP_I_GUE_Sniper",
  "CUP_I_GUE_Soldier_MG",
  "CUP_I_GUE_Engineer",
  "CUP_I_GUE_Medic",
  "CUP_I_GUE_Soldier_AKS74",
  "CUP_I_GUE_Soldier_AKM",
  "CUP_I_GUE_Soldier_AKSU",
  "CUP_I_GUE_Soldier_AT",
  "CUP_I_GUE_Soldier_AA"
];

militia_squad = [

  "CUP_I_GUE_Ammobearer",
  "CUP_I_GUE_Soldier_AR",
  "CUP_I_GUE_Officer",
  "CUP_I_GUE_Crew",
  "CUP_I_GUE_Soldier_GL",
  "CUP_I_GUE_Sniper",
  "CUP_I_GUE_Soldier_MG",
  "CUP_I_GUE_Engineer",
  "CUP_I_GUE_Medic",
  "CUP_I_GUE_Soldier_AKS74",
  "CUP_I_GUE_Soldier_AKM",
  "CUP_I_GUE_Soldier_AKSU",
  "CUP_I_GUE_Soldier_AT",
  "CUP_I_GUE_Soldier_AA"
];

militia_vehicles = [
	"CUP_I_Datsun_PK"];

opfor_vehicles = [
  "O_T_MRAP_02_gmg_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F"
];

opfor_vehicles_low_intensity = [
  "O_T_MRAP_02_gmg_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F"
];

opfor_battlegroup_vehicles = [
  "O_T_MRAP_02_gmg_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_Heli_Light_02_F",
  "O_Heli_Attack_02_black_F"
];

opfor_battlegroup_vehicles_low_intensity = [
  "O_T_MRAP_02_gmg_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_T_MBT_02_cannon_ghex_F",
  "O_T_LSV_02_armed_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Wheeled_02_rcws_ghex_F",
  "O_T_APC_Tracked_02_AA_ghex_F",
  "O_T_MRAP_02_hmg_ghex_F",
  "O_Heli_Light_02_F"
];

opfor_troup_transports = [
	"O_T_APC_Wheeled_02_rcws_ghex_F",
	"O_T_Truck_03_covered_ghex_F",
	"O_Heli_Light_02_F"
];

opfor_choppers = [
  "O_Heli_Light_02_F",
  "O_Heli_Attack_02_black_F"
];

opfor_air = [
	"O_Plane_CAS_02_F",
	"O_T_VTOL_02_infantry_F"
];

civilians = [
	"C_man_1",
	"C_man_polo_6_F",
	"C_man_polo_3_F",
	"C_man_polo_2_F",
	"C_man_polo_4_F",
	"C_man_polo_5_F",
	"C_man_polo_1_F",
	"C_man_p_beggar_F",
	"C_man_1_2_F",
	"C_man_p_fugitive_F",
	"C_man_hunter_1_F",
	"C_journalist_F",
	"C_man_shorts_2_F",
	"C_man_w_worker_F"
];

civilian_vehicles = [
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_Offroad_01_F",
	"C_SUV_01_F",
	"C_Van_01_transport_F",
	"C_Van_01_box_F",
	"C_Van_01_fuel_F",
	"C_Quadbike_01_F"
];

build_lists = [[],infantry_units,light_vehicles,heavy_vehicles,air_vehicles,static_vehicles,buildings,support_vehicles,squads];
military_alphabet = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-Ray","Yankee","Zulu"];
land_vehicles_classnames = (opfor_vehicles + militia_vehicles);
all_resistance_troops = [] + militia_squad;
all_hostile_classnames = (land_vehicles_classnames + opfor_air + opfor_choppers + opfor_troup_transports + opfor_vehicles_low_intensity);
{ land_vehicles_classnames pushback (_x select 0); } foreach (heavy_vehicles + light_vehicles);
air_vehicles_classnames = [] + opfor_choppers;
{ air_vehicles_classnames pushback (_x select 0); } foreach air_vehicles;
markers_reset = [99999,99999,0];
zeropos = [0,0,0];
squads_names = [ localize "STR_LIGHT_RIFLE_SQUAD", localize "STR_RIFLE_SQUAD", localize "STR_AT_SQUAD", localize "STR_AA_SQUAD",  localize "STR_RECON_SQUAD", localize "STR_PARA_SQUAD" ];

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
