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
  ["B_Quadbike_01_F",0,0,1],
  ["B_T_MRAP_01_F",0,0,2],
  ["B_T_MRAP_01_hmg_F",0,15,2],
  ["B_T_MRAP_01_gmg_F",0,25,2],
  ["B_T_LSV_01_unarmed_F",0,0,2],
  ["B_T_LSV_01_armed_F",0,15,2],
  ["B_T_Truck_01_covered_F",0,0,5],
  ["B_T_Truck_01_transport_F",0,0,5],
  ["B_T_APC_Wheeled_01_cannon_F",0,60,20],
  ["B_T_APC_Tracked_01_rcws_F",0,40,25],
  ["B_T_APC_Tracked_01_CRV_F",0,40,25],
  ["CUP_B_HMMWV_Unarmed_USMC",0,0,2],
  ["CUP_B_MTVR_USMC",0,0,5],
  ["CUP_B_HMMWV_Ambulance_USMC",0,0,5],
  ["CUP_B_HMMWV_M2_USMC",0,5,5],
  ["CUP_B_HMMWV_M1114_USMC",0,5,5],
  ["CUP_B_HMMWV_MK19_USMC",0,10,5],
  ["CUP_B_HMMWV_TOW_USMC",0,15,5],
  ["CUP_B_LR_Transport_GB_W",0,0,2]
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
  ["O_Heli_Transport_04_black_F",0,0,10],
  ["CUP_B_CH47F_USA",0,0,15],
  ["CUP_B_CH47F_VIV_USA",0,0,15],
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
  <#include classnames/objects/concrete_barrier.h>
  <#include classnames/objects/hbarrier_green.h>
  <#include classnames/objects/bunkers_green.h>
  <#include classnames/objects/sandbags_green.h>
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
  <#include classnames/support/ammobox_nato_pacific.h>
  <#include classnames/support/ace_spares.h>
  [Respawn_truck_typename,20,0,5],
  [FOB_box_typename,30,50,0],
  [FOB_truck_typename,30,50,5],
  ["B_T_Truck_01_ammo_F",0,30,10],
  ["B_T_Truck_01_fuel_F",5,0,2],
  ["B_T_Truck_01_Repair_F",10,0,5],
  ["B_Slingload_01_Repair_F",5,0,0],
  ["B_Slingload_01_Fuel_F",5,0,0],
  ["B_Slingload_01_Ammo_F",5,0,0],
  [<#MAIN_AMMOBOX_BLUFOR>,0,15,0],
  [<#MAIN_AMMOBOX_OPFOR>,0,15,0]
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
  "CUP_I_Datsun_PK"
];

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
