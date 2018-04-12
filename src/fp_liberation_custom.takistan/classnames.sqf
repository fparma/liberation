<#exec true <#include classnames/main.h>>

FOB_typename = <#MAIN_FOB_TYPE>;
FOB_box_typename = <#MAIN_FOB_BOX>;
FOB_truck_typename = <#MAIN_TRUCK>;
Arsenal_typename = <#MAIN_ARSENAL_BOX>;
Respawn_truck_typename = <#MAIN_TRUCK_RESPAWN>;
HELO_CLASSNAME = <#MAIN_TRANSPORT_HELO>;
ammobox_b_typename = <#MAIN_AMMOBOX_BLUFOR>;
ammobox_o_typename = <#MAIN_AMMOBOX_OPFOR>;
opfor_ammobox_transport = <#MAIN_TRUCK_AMMOBOX_OPFOR>;
commander_classname = <#BLUFOR_UNIT_OFFICER>;
crewman_classname = <#BLUFOR_UNIT_CREWMAN>;
pilot_classname = <#BLUFOR_UNIT_PILOT>;

infantry_units = [
	[<#BLUFOR_UNIT_RIFLEMAN>,2,0,0],
	[<#BLUFOR_UNIT_GRENADIER>,3,0,0],
	[<#BLUFOR_UNIT_AUTORIFLEMAN>,3,0,0],
	[<#BLUFOR_UNIT_MEDIC>,3,0,0],
	[<#BLUFOR_UNIT_MARKSMAN>,3,0,0],
	[<#BLUFOR_UNIT_ENGINEER>,3,0,0],
	[<#BLUFOR_UNIT_LAT>,4,0,0],
	[<#BLUFOR_UNIT_AA>,5,10,0],
	[<#BLUFOR_UNIT_HAT>,5,10,0],
	[<#BLUFOR_UNIT_SNIPER>,10,0,0],
	[<#BLUFOR_UNIT_PILOT>,1,0,0],
	[<#BLUFOR_UNIT_HELIPILOT>,1,0,0],
	[<#BLUFOR_UNIT_CREWMAN>,1,0,0]
];

light_vehicles = [
	["CUP_O_UAZ_Open_RU",0,0,2],
	["CUP_O_UAZ_MG_RU",0,2,2],
	["CUP_O_UAZ_AGS30_RU",0,3,2],
  ["CUP_O_GAZ_Vodnik_PK_RU",0,5,5],
  ["CUP_O_GAZ_Vodnik_AGS_RU",0,7,5],
  ["CUP_O_GAZ_Vodnik_BPPU_RU",0,15,8],
  ["CUP_O_Ural_RU",0,0,5],
  ["FP_Faction_GSFG85_Vehicle_BTR60",0,10,10],
  ["CUP_O_BRDM2_HQ_RUS",0,5,15],
  ["CUP_O_BRDM2_RUS",0,15,20],
  ["CUP_O_BRDM2_ATGM_RUS",0,40,35]
];

heavy_vehicles = [
	["CUP_O_BM21_RU",0,30,20],
	["FP_Faction_GSFG70_Vehicle_BMP1",0,70,50],
  ["CUP_O_BMP2_RU",0,100,50],
  ["FP_Faction_GSFG70_Vehicle_T55",0,120,65],
  ["FP_Faction_GSFG85_Vehicle_T72",0,180,80],
  ["CUP_O_2S6_RU",0,200,70]
];

air_vehicles = [
	["CUP_O_Mi8_VIV_RU",0,0,15],
	["CUP_O_Mi8_CHDKZ",0,0,15],
	["CUP_O_Mi8_RU",0,10,25],
	["CUP_O_Mi24_P_RU",0,20,35],
	["CUP_O_Mi24_V_RU",0,30,45],
  ["CUP_O_Su25_RU_1",0,30,40],
  ["CUP_O_SU34_AGM_RU",0,40,50]
];

static_vehicles = [
	["CUP_O_ZU23_RU",0,15,0],
	["CUP_O_KORD_high_RU",0,5,0],
	["CUP_O_KORD_RU",0,5,0],
	["CUP_O_AGS_RU",0,7,0],
	["CUP_O_Metis_RU",0,20,0],
	["CUP_O_2b14_82mm_RU",0,30,0],
	["CUP_O_D30_RU",0,50,0]
];

buildings = [
	<#include classnames/objects/concrete_barrier.h>
	<#include classnames/objects/hbarrier_green.h>
	<#include classnames/objects/bunkers_green.h>
  <#include classnames/objects/sandbags_green.h>
	["Land_PortableLight_single_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
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
	["Land_Metal_rack_Tall_F",0,0,0],
	["PortableHelipadLight_01_blue_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,10,0,0],
  <#include classnames/support/ammobox_nato_pacific.h>
  <#include classnames/support/ace_spares.h>
	[Respawn_truck_typename,20,0,5],
	[FOB_box_typename,30,50,0],
	[FOB_truck_typename,30,50,5],
	["CUP_O_Ural_Reammo_RU",0,30,10],
	["CUP_O_Ural_Refuel_RU",5,0,2],
	["B_T_Truck_01_Repair_F",10,0,5],
	["CUP_O_URAL_Repair_RU",5,0,0],
	["B_Slingload_01_Fuel_F",5,0,0],
	["B_Slingload_01_Ammo_F",5,0,0],
	[<#MAIN_AMMOBOX_BLUFOR>,0,10,0],
	[<#MAIN_AMMOBOX_OPFOR>,0,10,0]
];


blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_inf = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_MMG>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER> ];
blufor_squad_at = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_aa = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_recon = [ <#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_para = [ <#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER> ];
blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>];

uavs = [ "CUP_O_Pchela1T_RU" ];
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];
elite_vehicles = ["CUP_O_BM21_RU", "CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_BRDM2_ATGM_RUS", "CUP_O_Su25_RU_1","CUP_O_SU34_AGM_RU","CUP_O_Mi24_V_RU","CUP_O_2S6_RU","FP_Faction_GSFG85_Vehicle_T72","CUP_O_BMP2_RU"];

ai_resupply_sources = [ Respawn_truck_typename, HELO_CLASSNAME, Arsenal_typename, "B_Slingload_01_Ammo_F", "FP_Faction_USAEUR90_Vehicle_Gavin", "CUP_B_MTVR_Ammo_USMC" ];

squads = [
	[blufor_squad_inf_light,20,0,0],
	[blufor_squad_inf,30,0,0],
	[blufor_squad_at,20,25,0],
	[blufor_squad_aa,20,25,0],
	[blufor_squad_recon,25,0,0],
	[blufor_squad_para,20,0,0]
];

opfor_sentry = <#OPFOR_UNIT_RIFLEMAN>;
opfor_rifleman = <#OPFOR_UNIT_RIFLEMAN>;
opfor_grenadier = <#OPFOR_UNIT_GRENADIER>;
opfor_squad_leader = <#OPFOR_UNIT_SQL>;
opfor_team_leader = <#OPFOR_UNIT_FTL>;
opfor_marksman = <#OPFOR_UNIT_MARKSMAN>;
opfor_machinegunner = <#OPFOR_UNIT_AUTORIFLEMAN>;
opfor_heavygunner = <#OPFOR_UNIT_MMG>;
opfor_medic = <#OPFOR_UNIT_MEDIC>;
opfor_rpg = <#OPFOR_UNIT_LAT>;
opfor_at = <#OPFOR_UNIT_HAT>;
opfor_aa = <#OPFOR_UNIT_AA>;
opfor_officer = <#OPFOR_UNIT_OFFICER>;
opfor_sharpshooter = <#OPFOR_UNIT_SHARPSHOOTER>;
opfor_sniper = <#OPFOR_UNIT_SNIPER>;
opfor_engineer = <#OPFOR_UNIT_ENGINEER>;
opfor_paratrooper = <#OPFOR_UNIT_PARATROOPER>;
opfor_mrap = "CUP_I_Datsun_PK_TK_Random";
opfor_mrap_armed = "FP_Faction_FEC_Vehicle_DshkmUAZ";
opfor_transport_helo = "CUP_I_UH1H_slick_TK_GUE";
opfor_transport_truck = "CUP_I_V3S_Covered_TKG";
opfor_fuel_truck = "CUP_I_V3S_Refuel_TKG";
opfor_ammo_truck = "CUP_I_V3S_Open_TKG";
opfor_fuel_container = "I_G_Van_01_fuel_F";
opfor_ammo_container = "CUP_B_Ural_Reammo_CDF";
opfor_flag = "Flag_CSAT_F";
opfor_infantry = [
	<#OPFOR_UNIT_RIFLEMAN>,
	<#OPFOR_UNIT_RIFLEMAN>,
	<#OPFOR_UNIT_GRENADIER>,
	<#OPFOR_UNIT_SQL>,
	<#OPFOR_UNIT_FTL>,
	<#OPFOR_UNIT_MARKSMAN>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_MMG>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_LAT>,
	<#OPFOR_UNIT_HAT>,
	<#OPFOR_UNIT_AA>,
	<#OPFOR_UNIT_OFFICER>,
	<#OPFOR_UNIT_SHARPSHOOTER>,
	<#OPFOR_UNIT_SNIPER>,
	<#OPFOR_UNIT_ENGINEER>
];

//========================================
// BEGIN OF OPFOR SQUAD LAYOUTS
//========================================

opfor_squad_low_intensity = [
	<#OPFOR_UNIT_FTL>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_HAT>,
	<#OPFOR_UNIT_RIFLEMAN>,
	<#OPFOR_UNIT_RIFLEMAN>,
	<#OPFOR_UNIT_RIFLEMAN>,
	<#OPFOR_UNIT_RIFLEMAN>
];

opfor_squad_8_standard = [
	<#OPFOR_UNIT_SQL>,
	<#OPFOR_UNIT_FTL>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_MMG>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_MARKSMAN>,
	<#OPFOR_UNIT_GRENADIER>,
	<#OPFOR_UNIT_LAT>
];

opfor_squad_8_infkillers = [
	<#OPFOR_UNIT_SQL>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_MMG>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_MARKSMAN>,
	<#OPFOR_UNIT_SHARPSHOOTER>,
	<#OPFOR_UNIT_SNIPER>
];

opfor_squad_8_tankkillers = [
	<#OPFOR_UNIT_SQL>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_AUTORIFLEMAN>,
	<#OPFOR_UNIT_LAT>,
	<#OPFOR_UNIT_LAT>,
	<#OPFOR_UNIT_HAT>,
	<#OPFOR_UNIT_HAT>,
	<#OPFOR_UNIT_HAT>
];
opfor_squad_8_airkillers = [
	<#OPFOR_UNIT_SQL>,
	<#OPFOR_UNIT_MEDIC>,
	<#OPFOR_UNIT_MMG>,
	<#OPFOR_UNIT_LAT>,
	<#OPFOR_UNIT_LAT>,
	<#OPFOR_UNIT_AA>,
	<#OPFOR_UNIT_AA>,
	<#OPFOR_UNIT_AA>
];

original_resistance = [
  <#INDFOR_UNIT_OFFICER>,
  <#INDFOR_UNIT_AA>,
  "CUP_I_TK_GUE_Guerilla_Enfield",
  <#INDFOR_UNIT_LAT>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_ENGINEER>,
  <#INDFOR_UNIT_GRENADIER>,
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_MMG>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_RIFLEMAN>,
  "CUP_I_TK_GUE_Guerilla_Enfield",
  "CUP_I_TK_GUE_Guerilla_Enfield",
  <#INDFOR_UNIT_SNIPER>
];

militia_squad = [
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_AA>,
  "CUP_I_TK_GUE_Guerilla_Enfield",
  <#INDFOR_UNIT_LAT>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_ENGINEER>,
  <#INDFOR_UNIT_GRENADIER>,
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_MMG>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_RIFLEMAN>,
  "CUP_I_TK_GUE_Guerilla_Enfield",
  "CUP_I_TK_GUE_Guerilla_Enfield",
  <#INDFOR_UNIT_SNIPER>
];

militia_vehicles = [
	"CUP_I_BTR40_TKG",
	"CUP_I_V3S_Open_TKG",
	"CUP_I_V3S_Covered_TKG",
  "CUP_I_Datsun_PK_TK",
  "CUP_I_Datsun_PK_TK_Random"
];

opfor_vehicles = [
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BRDM2_HQ_TK_Gue",
  "CUP_I_BRDM2_HQ_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_ATGM_TK_Gue",
  "CUP_I_T34_TK_GUE",
  "CUP_I_T34_TK_GUE",
  "CUP_I_Ural_ZU23_TK_Gue",
  "CUP_I_Ural_ZU23_TK_Gue"
];

opfor_vehicles_low_intensity = [
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_Datsun_PK_TK_Random",
  "CUP_I_BRDM2_HQ_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_V3S_Open_TKG",
  "CUP_I_Ural_ZU23_TK_Gue"
];

opfor_battlegroup_vehicles = [
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_ATGM_TK_Gue",
  "CUP_I_BRDM2_ATGM_TK_Gue",
  "CUP_I_T34_TK_GUE",
  "CUP_I_T34_TK_GUE",
  "CUP_I_T34_TK_GUE",
  "CUP_I_T55_TK_GUE",
  "CUP_I_Ural_ZU23_TK_Gue",
  "CUP_I_Ural_ZU23_TK_Gue",
  "CUP_I_Ural_ZU23_TK_Gue",
	"B_Heli_Light_01_F",
	"B_Heli_Light_01_Armed_F"
];

opfor_battlegroup_vehicles_low_intensity = [
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_TK_Gue",
  "CUP_I_BRDM2_ATGM_TK_Gue",
  "CUP_I_BRDM2_HQ_TK_Gue",
  "CUP_I_BRDM2_HQ_TK_Gue",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_BTR40_MG_TKG",
  "CUP_I_T34_TK_GUE",
  "CUP_I_T34_TK_GUE",
  "CUP_I_Ural_ZU23_TK_Gue",
  "CUP_I_UH1H_slick_TK_GUE"
];

opfor_troup_transports = [
	"CUP_I_V3S_Covered_TKG",
	"CUP_I_V3S_Open_TKG",
	"CUP_I_BTR40_TKG",
	"CUP_I_UH1H_slick_TK_GUE",
	"B_Heli_Light_01_F"
];

opfor_choppers = [
  "CUP_I_UH1H_slick_TK_GUE",
	"B_Heli_Light_01_F"
];

opfor_air = [
	"CUP_B_AV8B_MK82_USMC"
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
	"CUP_C_Skoda_Blue_CIV",
	"CUP_C_Skoda_Red_CIV",
	"CUP_C_Datsun_4seat",
	"CUP_C_V3S_Open_TKC",
	"CUP_C_V3S_Covered_TKC",
	"CUP_C_LR_Transport_CTK",
	"CUP_C_UAZ_Unarmed_TK_CIV",
	"CUP_C_Ural_Civ_03"
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
GRLIB_sar_wreck = "BlackhawkWreck";
GRLIB_sar_fire = "test_EmptyObjectForFireBig";
