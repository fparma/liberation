<#exec true <#include classnames/main.h>>

FOB_typename = "Gue_WarfareBBarracks";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F";
Arsenal_typename = "B_supplyCrate_F";
Respawn_truck_typename = "CUP_O_Ural_Open_CHDKZ";
HELO_CLASSNAME = "CUP_O_MI6T_CHDKZ";
ammobox_b_typename = "Box_East_AmmoVeh_F";
ammobox_o_typename = "Box_NATO_AmmoVeh_F";
opfor_ammobox_transport = "CUP_B_Ural_Reammo_CDF";
commander_classname = "CUP_O_INS_Officer";
crewman_classname = "CUP_O_INS_Crew";
pilot_classname = "CUP_O_INS_Pilot";

infantry_units = [
  ["CUP_O_INS_Soldier",2,0,0],
  ["CUP_O_INS_Soldier_GL",3,0,0],
  ["CUP_O_INS_Soldier_AR",3,0,0],
  ["CUP_O_INS_Medic",3,0,0],
  ["CUP_O_INS_Soldier_AK74",3,0,0],
  ["CUP_O_INS_Soldier_Engineer",3,0,0],
  ["CUP_O_INS_Soldier_AT",4,0,0],
  ["CUP_O_INS_Soldier_AA",5,10,0],
  ["CUP_O_INS_Sniper",10,0,0],
  ["CUP_O_INS_Pilot",1,0,0],
  ["CUP_O_INS_Crew",1,0,0]
];

light_vehicles = [
  ["B_Quadbike_01_F",0,0,1],
  ["CUP_O_UAZ_Unarmed_CHDKZ",0,0,2],
  ["CUP_O_UAZ_MG_CHDKZ",0,4,2],
  ["CUP_O_UAZ_AGS30_CHDKZ",0,15,2],
  ["CUP_O_UAZ_METIS_CHDKZ",0,20,2],
  ["CUP_O_Datsun_PK",0,2,2],
  ["CUP_O_Datsun_PK_Random",0,2,2],
  ["CUP_O_UAZ_SPG9_CHDKZ",0,25,5],
  ["CUP_O_BMP2_CHDKZ",0,60,20],
  ["CUP_O_BRDM2_CHDKZ",0,40,25]
];

heavy_vehicles = [
  ["CUP_O_T72_CHDKZ",0,150,50]
];

air_vehicles = [
  ["CUP_O_Mi8_medevac_CHDKZ",0,0,5],
  ["CUP_O_MI6A_CHDKZ",0,0,10],
  ["CUP_O_Mi8_CHDKZ",0,0,5]
];

static_vehicles = [
  ["CUP_O_DSHKM_ChDKZ",0,10,0],
  ["CUP_O_DSHkM_MiniTriPod_ChDKZ",0,10,0],
  ["CUP_O_AGS_ChDKZ",0,20,0],
  ["CUP_O_ZU23_ChDKZ",0,25,0],
  ["CUP_O_D30_ChDKZ",0,30,0],
  ["CUP_O_2b14_82mm_ChDKZ",0,50,0]
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
  <#include classnames/support/ammobox_nato_pacific.h>
  <#include classnames/support/ace_spares.h>
  [Respawn_truck_typename,20,0,5],
  [FOB_box_typename,30,50,0],
  ["CUP_O_Ural_CHDKZ",30,50,5],
  ["CUP_O_Ural_Reammo_CHDKZ",0,30,10],
  ["CUP_O_Ural_Refuel_CHDKZ",5,0,2],
  ["CUP_O_Ural_Repair_CHDKZ",10,0,5],
  ["B_Slingload_01_Repair_F",5,0,0],
  ["B_Slingload_01_Fuel_F",5,0,0],
  ["B_Slingload_01_Ammo_F",5,0,0],
  [<#MAIN_AMMOBOX_BLUFOR>,0,150,0],
  [<#MAIN_AMMOBOX_OPFOR>,0,150,0]
];

blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_inf = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_MMG>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER> ];
blufor_squad_at = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_HAT>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_aa = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_AA>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_recon = [ <#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_MARKSMAN>,<#BLUFOR_UNIT_SNIPER>,<#BLUFOR_UNIT_RIFLEMAN> ];
blufor_squad_para = [ <#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER>,<#BLUFOR_UNIT_PARATROOPER> ];
blufor_squad_inf_light = [ <#BLUFOR_UNIT_SQL>,<#BLUFOR_UNIT_FTL>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_AUTORIFLEMAN>,<#BLUFOR_UNIT_GRENADIER>,<#BLUFOR_UNIT_MEDIC>,<#BLUFOR_UNIT_LAT>,<#BLUFOR_UNIT_RIFLEMAN>,<#BLUFOR_UNIT_RIFLEMAN>];

uavs = [];
boats_names = [];
elite_vehicles = [];

ai_resupply_sources = [ Respawn_truck_typename, HELO_CLASSNAME, Arsenal_typename, "B_Slingload_01_Ammo_F", "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F" ];

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
opfor_mrap = "CUP_B_UAZ_Unarmed_CDF";
opfor_mrap_armed = "CUP_B_UAZ_MG_CDF";
opfor_transport_helo = "CUP_B_MI6T_CDF";
opfor_transport_truck = "CUP_B_Ural_CDF";
opfor_fuel_truck = "CUP_B_Ural_Refuel_CDF";
opfor_ammo_truck = "CUP_B_Ural_Reammo_CDF";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "FlagCarrierCDFEnsign_EP1";
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
  "CUP_I_GUE_Ammobearer",
  <#INDFOR_UNIT_LAT>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_ENGINEER>,
  <#INDFOR_UNIT_GRENADIER>,
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_MMG>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_SNIPER>
];

militia_squad = [
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_AA>,
  "CUP_I_GUE_Ammobearer",
  <#INDFOR_UNIT_LAT>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_ENGINEER>,
  <#INDFOR_UNIT_GRENADIER>,
  <#INDFOR_UNIT_SQL>,
  <#INDFOR_UNIT_MMG>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_SNIPER>
];

militia_vehicles = [
  "CUP_I_Datsun_PK"];

opfor_vehicles = [
  "CUP_B_UAZ_AGS30_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_UAZ_MG_CDF"
];

opfor_vehicles_low_intensity = [
  "CUP_B_UAZ_AGS30_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_UAZ_MG_CDF"
];

opfor_battlegroup_vehicles = [
  "CUP_B_UAZ_AGS30_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_Mi17_CDF",
  "CUP_B_Mi24_D_CDF"
];

opfor_battlegroup_vehicles_low_intensity = [
  "CUP_B_UAZ_AGS30_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_T72_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BTR60_CDF",
  "CUP_B_BRDM_ATGM_CDF",
  "CUP_B_UAZ_MG_CDF",
  "CUP_B_Mi17_CDF"
];

opfor_troup_transports = [
  "CUP_B_BTR60_CDF",
  "CUP_B_Ural_CDF",
  "CUP_B_Mi17_CDF"
];

opfor_choppers = [
  "CUP_B_Mi17_CDF",
  "CUP_B_Mi24_D_CDF"
];

opfor_air = [
  "CUP_B_Mi24_D_CDF",
  "CUP_B_Mi24_D_CDF"
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
  "ACE_MedicalLitterBase",
  "ACE_MedicalLitter_clean",
  "ACE_MedicalLitter_bandage1",
  "ACE_MedicalLitter_bandage2",
  "ACE_MedicalLitter_bandage3",
  "ACE_MedicalLitter_packingBandage",
  "ACE_MedicalLitter_gloves",
  "ACE_MedicalLitter_adenosine",
  "ACE_MedicalLitter_atropine",
  "ACE_MedicalLitter_epinephrine",
  "ACE_MedicalLitter_morphine",
  "ACE_MedicalLitter_QuickClot",
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
