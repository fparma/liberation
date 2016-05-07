// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil; // Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil; // Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = nil; // Default "B_Truck_01_box_F";
Arsenal_typename = nil; // Default "B_supplyCrate_F";
Respawn_truck_typename = "CUP_B_HMMWV_Ambulance_USMC"; // Default "B_Truck_01_medical_F";
huron_typename = "CUP_B_CH47F_USA"; // Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil; // Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil; // Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = nil; // Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = nil; // Default "B_officer_F"
crewman_classname = nil; // Default "B_crew_F";
pilot_classname = nil; // Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [

];

light_vehicles_overwrite = true;
light_vehicles_extension = [
  ["B_Quadbike_01_F", 0, 0, 1],
  ["B_G_Offroad_01_F", 0, 0, 3],
  ["B_G_Offroad_01_armed_F", 0, 10, 3],
  ["CUP_B_LR_Transport_GB_W", 0, 0, 3],,
  ["B_Truck_01_transport_F", 0, 0, 5],
  ["B_Truck_01_covered_F", 0, 0, 5],
  ["CUP_B_HMMWV_Unarmed_USMC", 0, 0, 5],
  ["CUP_B_HMMWV_M1114_USMC", 0, 5, 5],
  ["CUP_B_HMMWV_M2_USMC", 0, 10, 5],
  ["CUP_B_HMMWV_MK19_USMC", 0, 20, 5],
  ["CUP_B_HMMWV_SOV_USA", 0, 25, 3],
  ["CUP_B_HMMWV_TOW_USMC", 0, 40, 5],
  ["CUP_B_HMMWV_Avenger_USMC", 0, 50, 5],
  ["B_MRAP_01_F", 0, 0, 20],
  ["B_MRAP_01_hmg_F", 0, 20, 20],
  ["B_MRAP_01_gmg_F", 0, 30, 20]
  ["CUP_B_RG31_M2_OD_USMC", 0, 10, 15],
  ["CUP_B_RG31_M2_GC_USMC", 0, 10, 25],
  ["CUP_B_Dingo_GER_Wdl", 0, 20, 15],
  ["CUP_B_Dingo_GL_GER_Wdl", 0, 30, 15],
  ["CUP_B_Ridgback_GMG_GB_W", 0, 20, 20],
  ["CUP_B_Ridgback_HMG_GB_W", 0, 10, 20],
  ["CUP_B_Mastiff_GMG_GB_W", 0, 20, 30]
];

heavy_vehicles_overwrite = true;
heavy_vehicles_extension = [
  ["CUP_B_FV432_Bulldog_GB_W", 0, 5, 30],
  ["CUP_B_M113_USA", 0, 10, 30],
  ["CUP_B_M1126_ICV_M2_Woodland", 0, 20, 40],
  ["CUP_B_M1126_ICV_M2_Woodland_Slat", 0, 20, 40],
  ["CUP_B_M1126_ICV_MK19_Woodland", 0, 30, 40],
  ["CUP_B_M1126_ICV_MK19_Woodland_Slat", 0, 30, 40],
  ["CUP_B_M1128_MGS_Woodland", 0, 125, 40],
  ["CUP_B_M1135_ATGMV_Woodland", 0, 80, 40],
  ["CUP_B_MCV80_GB_W", 0, 55, 40],
  ["CUP_B_MCV80_GB_W_SLAT", 0, 55, 50],
  ["CUP_B_LAV25_USMC", 0, 45, 40],
  ["CUP_B_AAV_USMC", 0, 50, 60],
  ["CUP_B_M2A3Bradley_USA_W", 0, 85, 100],
  ["CUP_B_M6LineBacker_USA_W", 0, 85, 100],
  ["CUP_B_M270_HE_USA", 0, 200, 200],
  ["CUP_B_M1A1_Woodland_USMC", 0, 165, 170],
  ["CUP_B_M1A2_TUSK_MG_USMC", 0, 170, 200]
];

air_vehicles_overwrite = true;
air_vehicles_extension = [
  ["B_Heli_Light_01_F", 0, 0, 15],
  ["B_Heli_Light_01_armed_F", 0, 70, 25],
  ["CUP_I_UH1H_TK_GUE", 0, 10, 25],
  ["CUP_B_UH1Y_GUNSHIP_USMC", 0, 70, 35],
  ["CUP_B_UH60L_Unarmed_FFV_US", 0, 0, 35],
  ["CUP_B_UH60L_FFV_US", 0, 30, 35],
  ["CUP_B_SA330_Puma_HC2_BAF", 0, 0, 70],
  ["CUP_B_AW159_Cannon_RN_Grey", 0, 60, 50],
  ["CUP_B_AW159_Hellfire_RN_Grey", 0, 160, 130],
  ["CUP_B_AW159_Unarmed_GB", 0, 0, 40],
  ["CUP_B_Merlin_HC3A_GB_Armed", 0, 5, 80],
  ["CUP_B_MV22_USMC_RAMPGUN", 0, 5, 100],
  ["CUP_B_AH64D_USA", 0, 240, 140],
  ["B_Heli_Attack_01_F", 0, 120, 170],
  ["CUP_B_AV8B_GBU12_USMC", 0, 200, 200],
  ["CUP_B_F35B_AA_USMC", 0, 130, 200],
  ["CUP_B_CH53E_USMC", 0, 0, 100],
  ["CUP_B_CH47F_GB", 0, 0, 110],
  ["CUP_B_C130J_USMC", 0, 0, 130]
];

static_vehicles_overwrite = true;
static_vehicles_extension = [
  ["fp_static_m2_minitripod_b", 0, 10, 5],
  ["fp_static_m2_b", 0, 10, 5],
  ["fp_static_mk19_b", 0, 20, 5],
  ["fp_static_m252_b", 0, 50, 5],
  ["fp_static_tow_b", 0, 40, 5],
  ["B_static_AT_F", 0, 40, 5],
  ["B_static_AA_F", 0, 40, 5],
  ["CUP_B_M119_USMC", 0, 120, 15]
];

buildings_overwrite = true;
buildings_extension = [
  ["Land_BagFence_Long_F",0,0,0],
  ["Land_BagFence_Round_F",0,0,0],
  ["Land_fort_bagfence_long",0,0,0],
  ["Land_fort_bagfence_corner",0,0,0],
  ["Land_fort_bagfence_round",0,0,0],
  ["Land_Campfire_F",0,0,0],
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
  ["Land_PortableLight_double_F",0,0,0],
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
  ["Land_ClutterCutter_large_F",0,0,0],
  ["Box_IND_WpsSpecial_F", 0, 0, 0]
];

support_vehicles_overwrite = false; // If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
  ["fp_mim23_uav", 5, 0, 0]
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = [

];

// Heavy infantry squad
blufor_squad_inf = [

];

// AT specialists squad
blufor_squad_at = [

];

// AA specialists squad
blufor_squad_aa = [

];

// Force recon squad
blufor_squad_recon = [

];

// Paratroopers squad
blufor_squad_para = [

];







// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = "CUP_O_RU_Soldier_EMR";
opfor_rifleman = "CUP_O_RU_Soldier_EMR";
opfor_grenadier = "CUP_O_RU_Soldier_GL_EMR";
opfor_squad_leader = "CUP_O_RU_Soldier_SL_EMR";
opfor_team_leader = "CUP_O_RU_Soldier_TL_EMR";
opfor_marksman = "CUP_O_RU_Soldier_Marksman_EMR";
opfor_machinegunner = "CUP_O_RU_Soldier_AR_EMR";
opfor_heavygunner = "CUP_O_RU_Soldier_MG_EMR";
opfor_medic = "CUP_O_RU_Medic_EMR";
opfor_rpg = "CUP_O_RU_Soldier_LAT_EMR";
opfor_at = "CUP_O_RU_Soldier_AT_EMR";
opfor_aa = "CUP_O_RU_Soldier_AA_EMR";
opfor_officer = "CUP_O_RU_Officer_EMR";
opfor_sharpshooter = "CUP_O_RU_Sniper";
opfor_sniper = "CUP_O_RU_Sniper";
opfor_engineer = "CUP_O_RU_Engineer_EMR";
opfor_paratrooper = "CUP_O_RU_Soldier_VDV_EMR";

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = "CUP_O_UAZ_Unarmed_RU";
opfor_mrap_armed = "CUP_O_GAZ_Vodnik_PK_RU";
opfor_transport_helo = "CUP_O_Mi8_medevac_RU";
opfor_transport_truck = "CUP_O_Ural_RU";
opfor_fuel_truck = "CUP_O_Ural_Refuel_RU";
opfor_ammo_truck = "CUP_O_Ural_Reammo_RU";
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = "FlagCarrierRU";

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = true;
militia_squad_extension = [
  "CUP_O_INS_Villager3",
  "CUP_O_INS_Worker2",
  "CUP_O_INS_Woodlander1",
  "CUP_O_INS_Woodlander3",
  "CUP_O_INS_Soldier_GL",
  "CUP_O_INS_Soldier_AK74",
  "CUP_O_INS_Soldier",
  "CUP_O_INS_Soldier_AR",
  "CUP_O_INS_Medic",
  "CUP_O_INS_Story_Bardak",
  "CUP_O_INS_Soldier_AT",
  "CUP_O_RUS_SpecOps",
  "CUP_O_RUS_Soldier_TL"
];

// Militia vehicles to choose from
militia_vehicles_overwrite = true;
militia_vehicles_extension = [
  "CUP_O_Datsun_PK",
  "CUP_O_UAZ_MG_CHDKZ",
  "CUP_O_UAZ_SPG9_CHDKZ",
  "CUP_O_BRDM2_CHDKZ",
  "CUP_O_Ural_ZU23_CHDKZ",
  "CUP_O_T72_CHDKZ"
];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = true;
opfor_vehicles_extension = [
  "CUP_O_UAZ_MG_RU",
  "CUP_O_UAZ_AGS30_RU",
  "CUP_O_GAZ_Vodnik_PK_RU",
  "CUP_O_GAZ_Vodnik_BPPU_RU",
  "CUP_O_BMP2_RU",
  "CUP_O_BMP3_RU"
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
  "CUP_O_UAZ_Open_RU",
  "CUP_O_UAZ_Unarmed_RU",
  "CUP_O_UAZ_MG_RU",
  "CUP_O_UAZ_AGS30_RU",
  "CUP_O_GAZ_Vodnik_PK_RU"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
  "CUP_O_UAZ_MG_RU",
  "CUP_O_UAZ_AGS30_RU",
  "CUP_O_GAZ_Vodnik_PK_RU",
  "CUP_O_GAZ_Vodnik_BPPU_RU",
  "CUP_O_BMP2_RU",
  "CUP_O_BMP3_RU",
  "CUP_O_BTR90_RU",
  "CUP_O_ZSU23_ChDKZ",
  "CUP_O_T72_RU"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
  "CUP_O_UAZ_MG_RU",
  "CUP_O_UAZ_AGS30_RU",
  "CUP_O_GAZ_Vodnik_PK_RU",
  "CUP_O_GAZ_Vodnik_BPPU_RU"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
  "CUP_O_BMP2_RU",
  "CUP_O_BMP3_RU",
  "CUP_O_BTR90_RU"
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
  "CUP_O_Mi8_medevac_RU",
  "CUP_O_Mi8_RU",
  "CUP_O_Ka50_RU",
  "CUP_O_Mi24_P_RU",
  "CUP_O_Mi24_V_RU",
  "CUP_O_Ka52_RU"
];

// Opfor military aircrafts
opfor_air_overwrite = true;
opfor_air_extension = [
  "CUP_O_Su25_RU_3",
  "CUP_O_Su25_RU_1",
  "CUP_O_SU34_LGB_RU"
];







// Other stuff

// Civilians
civilians_overwrite = false;
civilians_extension = [

];

// Civilian vehicles
civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [

];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [

];
vehicle_rearm_sources_extension = [

];
vehicle_refuel_sources_extension = [

];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles_extension = [
  "CUP_B_M2A3Bradley_USA_W",
  "CUP_B_M6LineBacker_USA_W",
  "CUP_B_AH64D_USA",
  "B_Heli_Attack_01_F",
  "CUP_B_M270_HE_USA",
  "CUP_B_F35B_AA_USMC",
  "CUP_B_AV8B_GBU12_USMC",
  "CUP_B_M1A1_Woodland_USMC",
  "CUP_B_M1A2_TUSK_MG_USMC",
  "CUP_B_CH53E_USMC",
  "CUP_B_C130J_USMC"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
  "fp_static_bag_weapon_tow",
  "fp_static_bag_weapon_m252",
  "fp_static_bag_weapon_podnos",
  "fp_static_bag_weapon_ags30",
  "fp_static_bag_weapon_mk19",
  "fp_static_bag_weapon_searchlight",
  "fp_static_bag_weapon_metis",
  "fp_static_bag_weapon_spg",
  "fp_static_bag_weapon_kord",
  "fp_static_bag_weapon_kord_high",
  "fp_static_bag_weapon_dshkm",
  "fp_static_bag_weapon_dshkm_high",
  "fp_static_bag_weapon_m2",
  "fp_static_bag_weapon_m2_high",
  "CUP_B_AGS30_Gun_Bag",
  "CUP_B_AGS30_Tripod_Bag",
  "CUP_B_DShkM_Gun_Bag",
  "CUP_B_DShkM_TripodHigh_Bag",
  "CUP_B_DShkM_TripodLow_Bag",
  "CUP_B_Kord_Gun_Bag",
  "CUP_B_Kord_Tripod_Bag",
  "CUP_B_M2_Gun_Bag",
  "CUP_B_M2_Tripod_Bag",
  "CUP_B_M252_Gun_Bag",
  "CUP_B_M252_Bipod_Bag",
  "CUP_B_M2_MiniTripod_Bag",
  "CUP_B_Metis_Gun_Bag",
  "CUP_B_Metis_Tripod_Bag",
  "CUP_B_Podnos_Bipod_Bag",
  "CUP_B_Podnos_Gun_Bag",
  "CUP_B_SPG9_Gun_Bag",
  "CUP_B_SPG9_Tripod_Bag",
  "CUP_B_Tow_Gun_Bag",
  "CUP_B_TOW_Tripod_Bag",
  "HLC_wp_M134Painless"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
  ["greuh_eh101_gr", -6.5, [0, 4.2, -1.45],
    [0, 2.5, -1.45],
    [0, 0.8, -1.45],
    [0, -0.9, -1.45]
  ]
];
