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
  ["rhsgref_ins_g_uaz_dshkm_chdkz",5,5,5],                  
  ["rhsgref_ins_g_ural",10,0,5],                   //Ural
  ["rhsgref_ins_uaz_open",5,0,5],
  ["rhsgref_ins_uaz_spg9",5,10,5],
  ["rhsgref_ins_uaz_ags",5,5,5],
  ["rhsgref_ins_gaz66",5,0,5],
  ["rhsgref_ins_gaz66o",5,0,5],
  ["rhsgref_ins_gaz66_zu23",5,20,10]

];

heavy_vehicles = [
  ["rhssaf_army_pts",20,15,10],                 //PTS-M
  ["rhsgref_BRDM2_ins_g",20,30,10],
  ["rhsgref_ins_g_btr60",20,50,15],
  ["rhsgref_ins_BM21",20,100,20],               //BM21
  ["rhssaf_army_t72s",30,150,25]
];

air_vehicles = [
  ["rhssaf_airforce_ht48",0,0,10],
  ["CUP_O_MI6T_RU",20,0,10]

];

static_vehicles = [
  ["rhssaf_army_metis_9k115",10,10,0],              //Metis-M
  ["rhssaf_army_ags30_tripod",5,5,0],                   //ABG M93
  ["rhssaf_army_nsv_tripod",5,2,0],                   //M02 Coyote
  ["rhssaf_army_m2staticmg_minitripod",5,2,0],            //M119A2
  ["rhssaf_army_d30",15,15,0],                  //D30
  ["rhssaf_army_m252",15,15,0],                 //M252
  ["rhsgref_ins_2b14",15,15,0]                  
];

buildings = [
  ["Land_Cargo_House_V1_F",0,0,0],
  ["Land_Cargo_Patrol_V1_F",0,0,0],
  ["Land_Cargo_Tower_V1_F",0,0,0],
  ["rhssaf_flag_serbia",0,0,0],
  ["rhssaf_flag_yugoslavia",0,0,0],
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
  [Arsenal_typename,10,20,0],
  [Respawn_truck_typename,20,0,10],
  [FOB_box_typename,30,50,0],
  [FOB_truck_typename,30,50,30],
  ["ACE_medicalSupplyCrate_advanced",0,0,0],
  ["ACE_Box_82mm_Mo_HE",5,4,0],
  ["ACE_Box_82mm_Mo_Smoke",5,1,0],
  ["ACE_Box_82mm_Mo_Illum",5,1,0],
  ["ACE_Wheel",2,0,0],
  ["ACE_Track",2,0,0],
  ["rhssaf_army_ural_fuel",25,0,25],              
  ["rhsgref_ins_g_ural_repair",15,0,10],
  ["rhsgref_ins_g_gaz66_ammo",15,20,5],
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

uavs = [];

elite_vehicles = [
  "rhssaf_army_t72s"                        //T72-S
];

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
opfor_mrap = "rhsusf_m1025_w_s";                      //GAZ-233011
opfor_mrap_armed = "rhsusf_m_m1025_w_s_m2";                 //GAZ-233014 (Armed)
opfor_transport_helo = "RHS_CH_47F";              //Mi-8MT (Cargo)
opfor_transport_truck = "rhsusf_M1078A1P2_WD_fmtv_usarmy";                //Ural-4320 Transport (Covered)
opfor_ammobox_transport = "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy";            //Ural-4320 Transport (Open) -> Has to be able to transport resource crates
opfor_fuel_truck = "rhsusf_M978A4_usarmy_wd";               //Ural-4320 Fuel
opfor_ammo_truck = "rhsusf_M977A4_AMMO_BKIT_usarmy-wd";               //GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";       //Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";       //Taru Ammo Pod
opfor_flag = "Flag_US_F"; 
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
  <#INDFOR_UNIT_FTL>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_HAT>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>
];


militia_squad = [
  <#INDFOR_UNIT_FTL>,
  <#INDFOR_UNIT_AUTORIFLEMAN>,
  <#INDFOR_UNIT_MEDIC>,
  <#INDFOR_UNIT_HAT>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>,
  <#INDFOR_UNIT_RIFLEMAN>
];

militia_vehicles = [
  "rhsgref_ins_g_uaz_dshkm_chdkz"
];

opfor_vehicles = [
  "rhsusf_m1025_w_s_Mk19",                          
  "rhsusf_m1025_w_s",                         
  "rhsusf_m1025_w_s_m2",                          
  "RHS_M2A3_wd"
];

opfor_vehicles_low_intensity = [
  "rhsusf_m1025_w_s_Mk19",                          
  "rhsusf_m1025_w_s_m2",
  "rhsusf_m113_usarmy"
];

opfor_battlegroup_vehicles = [
  "rhsusf_m1025_w_s_Mk19",
  "rhsusf_m1025_w_s_m2",                          
  "RHS_M2A3_wd",
  "rhsusf_M1117_W",
  "rhsusf_m113_usarmy",
  "rhsusf_m1a2sep1tuskiiwd_usarmy"
];

opfor_battlegroup_vehicles_low_intensity = [
  "rhsusf_m1025_w_s_Mk19",                          
  "rhsusf_m1025_w_s_m2",
  "rhsusf_M1117_W"                        
];

opfor_troup_transports = [
  "rhsusf_M1078A1P2_WD_fmtv_usarmy"
];

opfor_choppers = [
  "RHS_UH60M"
];

opfor_air = [
  "RHS_UH60M"
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
