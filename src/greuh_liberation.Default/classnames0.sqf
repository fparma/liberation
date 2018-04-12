//Change the file this references to use different preset
//Presets available:
//Main - Vanilla NATO vs CSAT
//RHSUSAF - RHS USAF vs RHS AFRF (WIP)
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
  [<#BLUFOR_UNIT_MMG>,5,0,0],
  [<#BLUFOR_UNIT_AA>,5,10,0],
  [<#BLUFOR_UNIT_HAT>,5,10,0],
  [<#BLUFOR_UNIT_SNIPER>,10,0,0],
  [<#BLUFOR_UNIT_PILOT>,1,0,0],
  [<#BLUFOR_UNIT_HELIPILOT>,1,0,0],
  [<#BLUFOR_UNIT_CREWMAN>,1,0,0]
];

light_vehicles = [
  <#BLUFOR_LIGHTVEHICLES>
];

heavy_vehicles = [
  <#BLUFOR_HEAVYVEHICLES>
];

air_vehicles = [
  <#BLUFOR_AIRVEHICLES>
];

static_vehicles = [
  <#BLUFOR_STATICS>
];

buildings = [
  ["Land_Cargo_House_V1_F",0,0,0],
  ["Land_Cargo_Patrol_V1_F",0,0,0],
  ["Land_Cargo_Tower_V1_F",0,0,0],
  ["Flag_NATO_F",0,0,0],
  ["Flag_US_F",0,0,0],
  ["Flag_UK_F",0,0,0],
  ["Flag_White_F",0,0,0],
  ["Land_Medevac_house_V1_F",0,0,0],
  ["Land_Medevac_HQ_V1_F",0,0,0],
  ["Flag_RedCrystal_F",0,0,0],  
  ["CamoNet_BLUFOR_F",0,0,0],
  ["CamoNet_BLUFOR_open_F",0,0,0],
  ["CamoNet_BLUFOR_big_F",0,0,0],
  ["Land_PortableLight_single_F",0,0,0],
  ["Land_PortableLight_double_F",0,0,0],
  ["Land_LampSolar_F",0,0,0],
  ["Land_LampHalogen_F",0,0,0],
  ["Land_LampStreet_small_F",0,0,0],
  ["Land_LampAirport_F",0,0,0],
  ["Land_HelipadCircle_F",0,0,0],                   
  ["Land_HelipadRescue_F",0,0,0],                   
  ["PortableHelipadLight_01_blue_F",0,0,0],
  ["PortableHelipadLight_01_green_F",0,0,0],
  ["PortableHelipadLight_01_red_F",0,0,0],
  ["Land_CampingChair_V1_F",0,0,0],
  ["Land_CampingChair_V2_F",0,0,0],
  ["Land_CampingTable_F",0,0,0],
  ["MapBoard_altis_F",0,0,0],
  ["MapBoard_stratis_F",0,0,0],
  ["MapBoard_seismic_F",0,0,0],
  ["Land_Pallet_MilBoxes_F",0,0,0],
  ["Land_PaperBox_open_empty_F",0,0,0],
  ["Land_PaperBox_open_full_F",0,0,0],
  ["Land_PaperBox_closed_F",0,0,0],
  ["Land_DieselGroundPowerUnit_01_F",0,0,0],
  ["Land_ToolTrolley_02_F",0,0,0],
  ["Land_WeldingTrolley_01_F",0,0,0],
  ["Land_Workbench_01_F",0,0,0],
  ["Land_GasTank_01_blue_F",0,0,0],
  ["Land_GasTank_01_khaki_F",0,0,0],
  ["Land_GasTank_01_yellow_F",0,0,0],
  ["Land_GasTank_02_F",0,0,0],
  ["Land_BarrelWater_F",0,0,0],
  ["Land_BarrelWater_grey_F",0,0,0],
  ["Land_WaterBarrel_F",0,0,0],
  ["Land_WaterTank_F",0,0,0],
  ["Land_BagFence_Round_F",0,0,0],
  ["Land_BagFence_Short_F",0,0,0],
  ["Land_BagFence_Long_F",0,0,0],
  ["Land_BagFence_Corner_F",0,0,0],
  ["Land_BagFence_End_F",0,0,0],  
  ["Land_BagBunker_Small_F",0,0,0],
  ["Land_BagBunker_Large_F",0,0,0],
  ["Land_BagBunker_Tower_F",0,0,0],
  ["Land_HBarrier_1_F",0,0,0],
  ["Land_HBarrier_3_F",0,0,0],
  ["Land_HBarrier_5_F",0,0,0],
  ["Land_HBarrier_Big_F",0,0,0],
  ["Land_HBarrierWall4_F",0,0,0],
  ["Land_HBarrierWall6_F",0,0,0],
  ["Land_HBarrierWall_corner_F",0,0,0],
  ["Land_HBarrierWall_corridor_F",0,0,0],
  ["Land_HBarrierTower_F",0,0,0],
  ["Land_CncBarrierMedium_F",0,0,0],
  ["Land_CncBarrierMedium4_F",0,0,0],
  ["Land_Concrete_SmallWall_4m_F",0,0,0], 
  ["Land_Concrete_SmallWall_8m_F",0,0,0],
  ["Land_CncShelter_F",0,0,0],
  ["Land_CncWall1_F",0,0,0],  
  ["Land_CncWall4_F",0,0,0],
  ["Land_Sign_WarningMilitaryArea_F",0,0,0],
  ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
  ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
  ["Land_Razorwire_F",0,0,0],
  ["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
  [Arsenal_typename,10,0,0],
  <#include classnames/support/ammobox_nato_pacific.h>
  <#include classnames/support/ace_spares.h>
  [Respawn_truck_typename,20,0,5],
  [FOB_box_typename,30,50,0],
  [FOB_truck_typename,30,50,5],
  ["ACE_Box_82mm_Mo_HE",5,4,0],
  ["ACE_Box_82mm_Mo_Smoke",5,1,0],
  ["ACE_Box_82mm_Mo_Illum",5,1,0],
  <#BLUFOR_LOGITRUCKS>,
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

elite_vehicles = [<#BLUFOR_ELITE_VEHICLES>];

// Not sure these are even used?

uavs = [<#BLUFOR_UAVS>]; 
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];


ai_resupply_sources = [ Respawn_truck_typename, HELO_CLASSNAME, Arsenal_typename, <#MAIN_AMMOBOX_BLUFOR> ];

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
opfor_mrap = <#OPFOR_MRAP>;
opfor_mrap_armed = <#OPFOR_MRAPARMED>;
opfor_transport_helo = <#OPFOR_TRANSHELO>;
opfor_transport_truck = <#OPFOR_TRANSTRUCK>;
opfor_fuel_truck = <#OPFOR_FUELTRUCK>;
opfor_ammo_truck = <#OPFOR_AMMOTRUCK>;
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = <#OPFOR_FLAG>;
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
  <#INDFOR_UNIT_RIFLEMAN>,
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
  <#INDFOR_UNIT_RIFLEMAN>,
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
  <#INDFOR_VEHICLES>
];

opfor_vehicles = [
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER2>,
  <#OPFOR_VEHICLES_TIER3>,
  <#OPFOR_VEHICLES_HELI>
];

opfor_vehicles_low_intensity = [
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER2>
];

opfor_battlegroup_vehicles = [
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER2>,
  <#OPFOR_VEHICLES_TIER2>,
  <#OPFOR_VEHICLES_TIER3>,
  <#OPFOR_VEHICLES_TIER3>,
  <#OPFOR_VEHICLES_HELI>,
  <#OPFOR_VEHICLES_JET>
];

opfor_battlegroup_vehicles_low_intensity = [
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER1>,
  <#OPFOR_VEHICLES_TIER2>,
  <#OPFOR_VEHICLES_TIER2>,
  <#OPFOR_VEHICLES_TIER3>,
  <#OPFOR_VEHICLES_HELI>
];

opfor_troup_transports = [
  <#OPFOR_TROOPTRANSPORT>
];

opfor_choppers = [
  <#OPFOR_VEHICLES_HELI>
];

opfor_air = [
  <#OPFOR_VEHICLES_JET>
];

civilians = [
  <#CIVILIANS>
];

civilian_vehicles = [
  <#CIVILIAN_VEHICLES>
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
  <#MAIN_FOB_TYPE>,
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