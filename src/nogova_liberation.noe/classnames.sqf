<#exec true <#include classnames/main.h>>

FOB_typename = <#MAIN_FOB_TYPE>;
FOB_box_typename = <#MAIN_FOB_BOX>;
FOB_truck_typename = <#MAIN_TRUCK>;
Arsenal_typename = <#MAIN_ARSENAL_BOX>;
Respawn_truck_typename = <#MAIN_TRUCK_RESPAWN>;
huron_typename = <#MAIN_TRANSPORT_HELO>;
ammobox_b_typename = <#MAIN_AMMOBOX_BLUFOR>;
ammobox_o_typename = <#MAIN_AMMOBOX_OPFOR>;
opfor_ammobox_transport = <#MAIN_TRUCK_AMMOBOX_OPFOR>;
commander_classname = "CUP_B_USMC_Officer";
crewman_classname = "CUP_B_USMC_Crew";
pilot_classname = "CUP_B_USMC_Pilot";

infantry_units = [
	[<#BLUFOR_UNIT_RIFLEMAN>,2,0,0],
	[<#BLUFOR_UNIT_GRENADIER>,3,0,0],
	[<#BLUFOR_UNIT_AUTORIFLEMAN>,3,0,0],
	[<#BLUFOR_UNIT_MEDIC>,3,0,0],
	[<#BLUFOR_UNIT_MARKSMAN>,3,0,0],
	[<#BLUFOR_UNIT_ENGINEER>,3,0,0],
	[<#BLUFOR_UNIT_LAT>,4,0,0],
	[<#BLUFOR_UNIT_MMG>,5,0,0],
	[<#BLUFOR_UNIT_AA>,5,10,0],
	[<#BLUFOR_UNIT_HAT>,5,10,0],
	[<#BLUFOR_UNIT_SNIPER>,10,0,0],
	[<#BLUFOR_UNIT_PILOT>,1,0,0],
	[<#BLUFOR_UNIT_HELIPILOT>,1,0,0],
	[<#BLUFOR_UNIT_CREWMAN>,1,0,0]
];

light_vehicles = [
	["B_Quadbike_01_F",0,0,1],
	["CUP_B_HMMWV_Unarmed_USMC",0,0,2],
	["CUP_B_MTVR_USMC",0,0,2],
	["CUP_B_HMMWV_Ambulance_USMC",0,0,5],
	["CUP_B_HMMWV_M2_USMC",0,5,5],
	["CUP_B_HMMWV_M1114_USMC",0,5,5],
	["CUP_B_HMMWV_MK19_USMC",0,10,5],
	["CUP_B_HMMWV_TOW_USMC",0,15,5],
	["CUP_B_HMMWV_Avenger_USMC",0,0,5]
];

heavy_vehicles = [
	["CUP_B_LAV25M240_USMC",0,50,25],
	["CUP_B_AAV_USMC",0,50,30],
	["CUP_B_M1A1_Woodland_USMC",0,100,50]
];

air_vehicles = [
	["CUP_B_MH6J_USA",0,0,5],
	["CUP_B_UH60L_FFV_US",0,5,10],
	["CUP_B_AH6J_Escort_USA",0,20,5],
	["CUP_B_CH47F_VIV_USA",0,0,15],
	["CUP_B_CH47F_USA",0,0,15],
	["CUP_B_AV8B_GBU12_USMC",0,250,45]
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
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_CncWall4_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_HBarrier_5_F",0,0,0],
	["Land_HBarrierBig_F",0,0,0],
	["Land_HBarrierWall6_F",0,0,0],
	["Land_HBarrierWall_corner_F",0,0,0],
	["Land_HBarrierTower_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Land_HelipadSquare_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
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
	[Respawn_truck_typename,20,0,5],
	[FOB_box_typename,30,50,0],
	[FOB_truck_typename,30,50,5],
	["CUP_B_MTVR_Ammo_USMC",0,30,10],
	["CUP_B_MTVR_Refuel_USMC",5,0,2],
	["CUP_B_MTVR_Repair_USMC",10,0,5],
	["B_Slingload_01_Repair_F",5,0,0],
	["B_Slingload_01_Fuel_F",5,0,0],
	["B_Slingload_01_Ammo_F",5,0,0],
	["Box_NATO_AmmoVeh_F",0,154,0],
	["Box_East_AmmoVeh_F",0,115,0]
];


blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_inf = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_MMG>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER> ];
blufor_squad_at = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_aa = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_recon = [ <#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_para = [ <#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER> ];
blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>];

uavs = [ "B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","B_UGV_01_rcws_F" ];
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];
elite_vehicles = ["CUP_B_M1A1_Woodland_USMC", "CUP_B_AV8B_GBU12_USMC"];

ai_resupply_sources = [ Respawn_truck_typename, huron_typename, Arsenal_typename, "B_Slingload_01_Ammo_F", "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F" ];

squads = [
	[blufor_squad_inf_light,20,0,0],
	[blufor_squad_inf,30,0,0],
	[blufor_squad_at,20,25,0],
	[blufor_squad_aa,20,25,0],
	[blufor_squad_recon,25,0,0],
	[blufor_squad_para,20,0,0]
];

opfor_sentry = "CUP_O_RU_Soldier_EMR";
opfor_rifleman = "CUP_O_RU_Soldier_EMR";
opfor_grenadier = "CUP_O_RU_Soldier_GL_EMR";
opfor_squad_leader = "CUP_O_RU_Soldier_SL_EMR";
opfor_team_leader = "CUP_O_RU_Soldier_TL_EMR";
opfor_marksman = "CUP_O_RU_Soldier_Marksman_EMR";
opfor_machinegunner = "CUP_O_RU_Soldier_AR_EMR";
opfor_heavygunner = "CUP_O_RU_Soldier_MG_EMR";
opfor_medic = "CUP_O_RU_Medic_EMR";
opfor_rpg = "CUP_O_RU_Soldier_AT_EMR";
opfor_at = "CUP_O_RU_Soldier_HAT_EMR";
opfor_aa = "CUP_O_RU_Soldier_AA_EMR";
opfor_officer = "CUP_O_RU_Officer_EMR";
opfor_sharpshooter = "CUP_O_RU_Sniper_EMR";
opfor_sniper = "CUP_O_RU_Sniper_KSVK_EMR";
opfor_engineer = "CUP_O_RU_Engineer_EMR";
opfor_paratrooper = "CUP_O_RU_Officer_VDV_EMR";
opfor_mrap = "CUP_O_UAZ_Unarmed_RU";
opfor_mrap_armed = "CUP_O_UAZ_MG_RU";
opfor_transport_helo = "CUP_O_Mi8_RU";
opfor_transport_truck = "CUP_O_Ural_RU";
opfor_fuel_truck = "CUP_O_Ural_Refuel_RU";
opfor_ammo_truck = "CUP_O_Ural_Reammo_RU";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "FlagCarrierRU";
opfor_infantry = [
	opfor_sentry,
	opfor_rifleman,
	opfor_grenadier,
	opfor_squad_leader,
	opfor_team_leader,
	opfor_marksman,
	opfor_machinegunner,
	opfor_heavygunner,
	opfor_medic,
	opfor_rpg,
	opfor_at,
	opfor_aa,
	opfor_officer,
	opfor_sharpshooter,
	opfor_sniper,
	opfor_engineer
];

//========================================
// BEGIN OF OPFOR SQUAD LAYOUTS
//========================================

opfor_squad_low_intensity = [
	opfor_team_leader,
	opfor_machinegunner,
	opfor_medic,
	opfor_rpg,
	opfor_sentry,
	opfor_sentry,
	opfor_sentry,
	opfor_sentry
];

opfor_squad_8_standard = [
	opfor_squad_leader,
	opfor_team_leader,
	opfor_machinegunner,
	opfor_heavygunner,
	opfor_medic,
	opfor_marksman,
	opfor_grenadier,
	opfor_rpg
];

opfor_squad_8_infkillers = [
	opfor_squad_leader,
	opfor_machinegunner,
	opfor_machinegunner,
	opfor_heavygunner,
	opfor_medic,
	opfor_marksman,
	opfor_sharpshooter,
	opfor_sniper
];

opfor_squad_8_tankkillers = [
	opfor_squad_leader,
	opfor_medic,
	opfor_machinegunner,
	opfor_rpg,
	opfor_rpg,
	opfor_at,
	opfor_at,
	opfor_at
];
opfor_squad_8_airkillers = [
	opfor_squad_leader,
	opfor_medic,
	opfor_machinegunner,
	opfor_rpg,
	opfor_rpg,
	opfor_aa,
	opfor_aa,
	opfor_aa
];

original_resistance = [
"CUP_O_INS_Soldier_AA",
"CUP_O_INS_Soldier_Ammo",
"CUP_O_INS_Soldier_AT",
"CUP_O_INS_Soldier_AR",
"CUP_O_INS_Story_Lopotev",
"CUP_O_INS_Soldier_Engineer",
"CUP_O_INS_Soldier_GL",
"CUP_O_INS_Story_Bardak",
"CUP_O_INS_Soldier_MG",
"CUP_O_INS_Medic",
"CUP_O_INS_Soldier",
"CUP_O_INS_Soldier_AK74",
"CUP_O_INS_Soldier_Exp",
"CUP_O_INS_Sniper"
];

militia_squad = [
"CUP_O_INS_Soldier_AA",
"CUP_O_INS_Soldier_Ammo",
"CUP_O_INS_Soldier_AT",
"CUP_O_INS_Soldier_AR",
"CUP_O_INS_Story_Lopotev",
"CUP_O_INS_Soldier_Engineer",
"CUP_O_INS_Soldier_GL",
"CUP_O_INS_Story_Bardak",
"CUP_O_INS_Soldier_MG",
"CUP_O_INS_Medic",
"CUP_O_INS_Soldier",
"CUP_O_INS_Soldier_AK74",
"CUP_O_INS_Soldier_Exp",
"CUP_O_INS_Sniper"
];

militia_vehicles = [
	"CUP_O_Datsun_PK"
];

opfor_vehicles = [
	"CUP_O_BMP2_RU",
	"CUP_O_BMP3_RU",
	"CUP_O_BRDM2_RUS",
	"CUP_O_BRDM2_ATGM_RUS",
	"CUP_O_BTR90_RU",
	"CUP_O_GAZ_Vodnik_PK_RU",
	"CUP_O_GAZ_Vodnik_AGS_RU",
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CUP_O_2S6M_RU",
	"CUP_O_Ural_ZU23_RU",
	"CUP_O_UAZ_AGS30_RU",
	"CUP_O_UAZ_MG_RU",
	"CUP_O_UAZ_METIS_RU",
	"CUP_O_UAZ_SPG9_RU",
	"CUP_O_T72_RU",
	"CUP_O_T72_RU"
];

opfor_vehicles_low_intensity = [
	"CUP_O_BMP2_RU",
	"CUP_O_BRDM2_RUS",
	"CUP_O_UAZ_MG_RU",
	"CUP_O_UAZ_MG_RU",
	"CUP_O_UAZ_AGS30_RU",
	"CUP_O_T72_RU"
];

opfor_battlegroup_vehicles = [
	"CUP_O_BMP2_RU",
	"CUP_O_BMP3_RU",
	"CUP_O_BRDM2_RUS",
	"CUP_O_BRDM2_ATGM_RUS",
	"CUP_O_BTR90_RU",
	"CUP_O_GAZ_Vodnik_PK_RU",
	"CUP_O_GAZ_Vodnik_AGS_RU",
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CUP_O_2S6M_RU",
	"CUP_O_UAZ_METIS_RU",
	"CUP_O_UAZ_SPG9_RU",
	"CUP_O_T72_RU",
	"CUP_O_T72_RU",
	"CUP_O_T72_RU",
	"CUP_O_Mi24_V_RU",
	"CUP_O_Mi24_V_RU",
	"CUP_O_Mi8_RU"
];

opfor_battlegroup_vehicles_low_intensity = [
	"CUP_O_BMP2_RU",
	"CUP_O_BRDM2_RUS",
	"CUP_O_BTR90_RU",
	"CUP_O_GAZ_Vodnik_PK_RU",
	"CUP_O_GAZ_Vodnik_AGS_RU",
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CUP_O_2S6M_RU",
	"CUP_O_UAZ_METIS_RU",
	"CUP_O_UAZ_SPG9_RU",
	"CUP_O_T72_RU",
	"CUP_O_Mi8_RU"
];

opfor_troup_transports = [
	"CUP_O_BMP2_RU",
	"CUP_O_Ural_RU",
	"CUP_O_Mi8_RU"
];

opfor_choppers = [
	"CUP_O_Mi24_V_RU",
	"CUP_O_Mi8_RU"
];

opfor_air = [
	"CUP_O_SU34_AGM_RU",
	"CUP_O_Su25_RU_2"
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
