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
	["B_Quadbike_01_F",5,0,5],										//Quad Bike
	["rhsusf_m1025_w",5,0,10],										//M1025A2
	["rhsusf_m1025_w_m2",5,5,10],									//M1025A2 (M2)
	["rhsusf_m1025_w_mk19",10,15,10],									//M1025A2 (Mk19)
	["rhsusf_m998_w_2dr_fulltop",10,0,10],								//M1097A2 (2D)
	["rhsusf_m998_w_2dr_halftop",10,0,10],								//M1097A2 (2D / open back)
	["rhsusf_M1230a1_usarmy_wd",20,0,20],								//M1230A1 (MEDEVAC)				
	["rhsusf_M1083A1P2_wd_fmtv_usarmy",25,0,5],						//M1083A1P2 (covered infantry truck)
	["rhsusf_M1083A1P2_wd_open_fmtv_usarmy",25,0,5],					//M1083A1P2 (open infantry truck)
	["rhsusf_M977A4_BKIT_usarmy_wd",25,0,5],							//M977A4 BKIT (cargo truck)
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",25,40,5],						//M977A4 BKIT (cargo truck with HMG)
	["B_UGV_01_F",50,0,20],											//UGV Stomper
	["B_UGV_01_rcws_F",50,20,20],										//UGV Stomper (RCWS)
	["B_Boat_Transport_01_F",10,0,5],									//Assault Boat
	["B_Boat_Armed_01_minigun_F",20,20,15],							//Speedboat Minigun
	["rhsusf_mkvsoc",25,20,10],										//Mk.V SOCOM
	["B_SDV_01_F",15,0,5]												//SDV
];

heavy_vehicles = [
	["rhsusf_m113_usarmy",20,15,10],									//M113A3 (M2)
	["rhsusf_m113_usarmy_MK19",20,20,10],								//M113A3 (Mk19)
	["rhsusf_m113_usarmy_medical",20,0,10],							//M113A3 (Medical)
	["RHS_M2A2_BUSKI_WD",30,40,15],									//M2A2ODS (Busk I)
	["RHS_M2A3_BUSKIII_wd",30,50,20],								//M2A3 (Busk III)
	["RHS_M6_wd",30,50,20],											//M6A2
	["rhsusf_m1a1aim_tuski_wd",40,70,25],							//M1A1SA (Tusk I)
	["rhsusf_m1a2sep1tuskiiwd_usarmy",50,80,25],						//M1A2SEPv1 (Tusk II)
	["rhsusf_m109_usarmy",60,125,30]									//M109A6
];

air_vehicles = [
	["B_UAV_06_F",8,0,5],												//AL-6 Pelican (Cargo)
	["RHS_MELB_MH6M",20,0,10],										//MH-6M Little Bird
	["RHS_MELB_AH6M",20,20,10],										//AH-6M Pawnee
	["RHS_UH1Y_UNARMED",25,0,15],										//UH-1Y (Unarmed)
	["RHS_UH1Y_GS",25,20,15],										//UH-1Y (Ground Suppression)
	["RHS_AH1Z",50,50,20],											//AH-1Z (Multi-Role)
	["RHS_AH64D_wd",75,75,25],										//AH-64D (Multi-Role)
	["RHS_UH60M2",25,0,15],											//UH-60M (Unarmed)
	["RHS_UH60M",25,20,15],											//UH-60M
	["RHS_UH60M_MEV2",30,0,15],										//UH-60M MEV2
	["RHS_CH_47F_10",25,20,20],										//CH-47 Chinook (Armed)
	["rhsusf_CH53E_USMC",30,0,20],									//CH-53E Super Stallion
	["B_UAV_02_dynamicLoadout_F",40,30,20],							//MQ-4A Greyhawk
	["B_T_UAV_03_dynamicLoadout_F",45,50,25],						//MQ-12 Falcon
	["B_UAV_05_F",50,50,20],											//UCAV Sentinel
	["RHS_A10",100,100,40],											//A-10A (CAS)
	["B_Plane_Fighter_01_F",150,175,45],								//F/A-181 Black Wasp II
	["B_Plane_Fighter_01_Stealth_F",150,175,45],						//F/A-181 Black Wasp II (Stealth)
	["B_T_VTOL_01_armed_F",75,150,50],								//V-44 X Blackfish (Armed)
	["B_T_VTOL_01_infantry_F",75,0,50],								//V-44 X Blackfish (Infantry)
	["B_T_VTOL_01_vehicle_F",75,0,50]									//V-44 X Blackfish (Vehicle)
];

static_vehicles = [
	["RHS_M2StaticMG_MiniTripod_WD",5,5,0],							//Mk2 HMG .50
	["RHS_M2StaticMG_WD",5,5,0],										//Mk2 HMG .50 (Raised)
	["RHS_MK19_TriPod_WD",5,10,0],										//Mk19 GMG 20mm
	["RHS_TOW_TriPod_WD",10,15,0],										//TOW (AT)
	["RHS_Stinger_AA_pod_WD",10,20,0],									//Stinger (AA)
	["RHS_M252_WD",8,15,0],											//Mk6 Mortar
	["RHS_M119_WD",10,20,0]											//M119A2
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
	["B_APC_Tracked_01_CRV_F",50,25,35],								//CRV-6e Bobcat
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",25,0,15],					//M977A4 Repair
	["rhsusf_M978A4_BKIT_usarmy_wd",25,0,25],							//M978A4 Fuel
	["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",15,20,15],					//M977A4 Ammo
	["B_Slingload_01_Repair_F",25,0,0],								//Huron Repair
	["B_Slingload_01_Fuel_F",15,0,20],									//Huron Fuel
	["B_Slingload_01_Ammo_F",15,20,0],									//Huron Ammo
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

uavs = [
	"B_UAV_01_F",														//AR-2 Darter
	"B_UGV_01_F",														//UGV Stomper
	"B_UGV_01_rcws_F",													//UGV Stomper (RCWS)
	"B_UAV_02_dynamicLoadout_F",										//MQ-4A Greyhawk
	"B_T_UAV_03_dynamicLoadout_F",										//MQ-12 Falcon
	"B_UAV_05_F",														//UCAV Sentinel
	"B_UAV_06_F"														//AL-6 Pelican
];

elite_vehicles = [
	"rhsusf_mkvsoc",													//Mk.V SOCOM
	"rhsusf_m1a1aim_tuski_wd",											//M1A1SA (Tusk I)
	"rhsusf_m1a2sep1tuskiiwd_usarmy",									//M1A2SEPv1 (Tusk II)
	"rhsusf_m109_usarmy",												//M109A6
	"RHS_AH64D_wd",														//AH-64D (Multi-Role)
	"B_UAV_02_dynamicLoadout_F",										//MQ-4A Greyhawk
	"B_T_UAV_03_dynamicLoadout_F",										//MQ-12 Falcon
	"B_UAV_05_F",														//UCAV Sentinel
	"RHS_A10",															//A-10A (CAS)
	"B_Plane_Fighter_01_F",												//F/A-181 Black Wasp II
	"B_Plane_Fighter_01_Stealth_F",										//F/A-181 Black Wasp II (Stealth)
	"B_T_VTOL_01_armed_F"												//V-44 X Blackfish (Armed)
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
opfor_mrap = "rhs_tigr_msv";											//GAZ-233011
opfor_mrap_armed = "rhs_tigr_sts_msv";									//GAZ-233014 (Armed)
opfor_transport_helo = "RHS_Mi8mt_Cargo_vvsc";							//Mi-8MT (Cargo)
opfor_transport_truck = "RHS_Ural_MSV_01";								//Ural-4320 Transport (Covered)
opfor_ammobox_transport = "RHS_Ural_Open_MSV_01";						//Ural-4320 Transport (Open) -> Has to be able to transport resource crates
opfor_fuel_truck = "RHS_Ural_Fuel_MSV_01";								//Ural-4320 Fuel
opfor_ammo_truck = "rhs_gaz66_ammo_msv";								//GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";				//Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";				//Taru Ammo Pod
opfor_flag = "rhs_Flag_Russia_F"; 
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
  <#OPFOR_UNIT_FTL>,
  <#OPFOR_UNIT_AUTORIFLEMAN>,
  <#OPFOR_UNIT_MEDIC>,
  <#OPFOR_UNIT_HAT>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>
];


militia_squad = [
  <#OPFOR_UNIT_FTL>,
  <#OPFOR_UNIT_AUTORIFLEMAN>,
  <#OPFOR_UNIT_MEDIC>,
  <#OPFOR_UNIT_HAT>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>,
  <#OPFOR_UNIT_RIFLEMAN>
];

militia_vehicles = [
	"rhsgref_ins_g_uaz_dshkm_chdkz"
];

opfor_vehicles = [
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_bmp2d_msv",													//BMP-2D
	"rhs_bmp2k_msv",													//BMP-2K
	"rhs_brm1k_msv",													//BRM-1K
	"rhs_zsu234_aa",													//ZSU-23-4V
	"rhs_zsu234_aa",													//ZSU-23-4V
	"rhs_t80",															//T80
	"rhs_t80",															//T80
	"rhs_t90a_tv"														//T90A
];

opfor_vehicles_low_intensity = [
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_btr80_msv",													//BTR-80
	"rhs_btr80a_msv"													//BTR-80A
];

opfor_battlegroup_vehicles = [
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"RHS_Ural_Open_MSV_01",												//Ural-4320 Transport
	"RHS_Ural_MSV_01",													//Ural-4320 Transport (Covered)
	"rhs_bmp2d_msv",													//BMP-2D
	"rhs_bmp2k_msv",													//BMP-2K
	"rhs_brm1k_msv",													//BRM-1K
	"rhs_zsu234_aa",													//ZSU-23-4V
	"rhs_zsu234_aa",													//ZSU-23-4V
	"rhs_t80",															//T80
	"rhs_t80",															//T80
	"rhs_t90a_tv",														//T90A
	"RHS_Mi24P_AT_vvsc",												//Mi-24P (AT)
	"RHS_Mi24V_AT_vvsc",												//Mi-24V (AT)
	"RHS_Mi8mt_Cargo_vvsc",												//Mi-8MT (Cargo)
	"RHS_Ka52_vvsc"														//Ka-52
];

opfor_battlegroup_vehicles_low_intensity = [
	"rhs_tigr_msv",														//GAZ-233011
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"rhs_tigr_sts_msv",													//GAZ-233014 (Armed)
	"RHS_Ural_Open_MSV_01",												//Ural-4320 Transport
	"rhs_btr80_msv",													//BTR-80
	"rhs_btr80a_msv",													//BTR-80A
	"rhs_zsu234_aa",													//ZSU-23-4V
	"RHS_Mi24P_AT_vvsc",												//Mi-24P (AT)
	"RHS_Mi24V_AT_vvsc",												//Mi-24V (AT)
	"RHS_Mi8mt_Cargo_vvsc"												//Mi-8MT (Cargo)
];

opfor_troup_transports = [
	"RHS_Ural_Open_MSV_01",												//Ural-4320 Transport
	"RHS_Ural_MSV_01",													//Ural-4320 Transport (Covered)
	"rhs_btr80_msv",													//BTR-80
	"rhs_btr80a_msv",													//BTR-80A
	"rhs_bmp2d_msv",													//BMP-2D
	"RHS_Mi8mt_Cargo_vvsc",												//Mi-8MT (Cargo)
	"RHS_Mi24P_AT_vvsc",												//Mi-24P (AT)
	"RHS_Mi24V_AT_vvsc"													//Mi-24V (AT)
];

opfor_choppers = [
	"RHS_Mi8mt_Cargo_vvsc",												//Mi-8MT (Cargo)
	"RHS_Mi24P_AT_vvsc",												//Mi-24P (AT)
	"RHS_Mi24V_AT_vvsc",												//Mi-24V (AT)
	"RHS_Ka52_vvsc"														//Ka-52
];

opfor_air = [
	"RHS_Su25SM_vvsc",													//Su-25
	"RHS_Su25SM_KH29_vvsc"												//Su-25 (KH29)
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
