// Main Objects
<#define MAIN_FOB_TYPE|"Ins_WarfareBBarracks">                    // FOB Base Object
<#define MAIN_FOB_BOX|"rhs_7ya37_1_single">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"rhsgref_ins_gaz66_repair">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"rhsgref_ins_gaz66_ap2">             // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"rhsusf_M1078A1P2_WD_fmtv_usarmy">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"rhsgref_ins_Mi8amt">           // Main Transport helicopter (Transporting FOB Capable)
<#define MAIN_AMMOBOX_BLUFOR|"Box_NATO_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units (Not necessary arma3's blufor side, but rather the player side. )
// TODO: Add Sharpshooter
<#define BLUFOR_UNIT_OFFICER|"rhssaf_army_m93_oakleaf_summer_officer">                   // Officer
<#define BLUFOR_UNIT_SQL|"rhssaf_army_m93_oakleaf_summer_sq_lead">                    // Squadleader
<#define BLUFOR_UNIT_FTL|"rhssaf_army_m93_oakleaf_summer_ft_lead">                    // Fireteam Leader
<#define BLUFOR_UNIT_RIFLEMAN|"rhssaf_army_m93_oakleaf_summer_rifleman_m70">              // Rifleman
<#define BLUFOR_UNIT_GRENADIER|"rhssaf_army_m93_oakleaf_summer_gl">     
<#define BLUFOR_UNIT_AUTORIFLEMAN|"rhssaf_army_m93_oakleaf_summer_rifleman_m21">           // Autorifleman (LMG)
<#define BLUFOR_UNIT_MEDIC|"rhssaf_army_m93_oakleaf_summer_medic">                       // Medic
<#define BLUFOR_UNIT_MARKSMAN|"rhssaf_army_m93_oakleaf_summer_sniper_m76">                // Marksman
<#define BLUFOR_UNIT_ENGINEER|"rhssaf_army_m93_oakleaf_summer_engineer">                 // Engineer
<#define BLUFOR_UNIT_LAT|"rhssaf_army_m93_oakleaf_summer_rifleman_at">                   // Light AT
<#define BLUFOR_UNIT_HAT|"rhssaf_army_m93_oakleaf_summer_spec_at">                    // Dedicated AT
<#define BLUFOR_UNIT_AA|"rhssaf_army_m93_oakleaf_summer_spec_aa">                     // Anti Air
<#define BLUFOR_UNIT_MMG|"rhssaf_army_m93_oakleaf_summer_mgun_m84">                    // Medium Machine Gunner
<#define BLUFOR_UNIT_SNIPER|"rhssaf_army_m10_para_sniper_m82a1">                     // Sniper
<#define BLUFOR_UNIT_SHARPSHOOTER|"rhssaf_army_m10_para_spotter">                           // Sharpshooter
<#define BLUFOR_UNIT_CREWMAN|"rhssaf_army_m93_oakleaf_summer_crew">                      // Crewman
<#define BLUFOR_UNIT_PILOT|"rhssaf_airforce_pilot_mig29">                       // Jet Pilot
<#define BLUFOR_UNIT_HELIPILOT|"rhssaf_airforce_pilot_transport_heli">               // Helicopter Pilot
<#define BLUFOR_UNIT_PARATROOPER|"rhssaf_army_m10_para_rifleman_g36">            // Paratrooper

// Blufor Buyable Vehicles
<#define BLUFOR_LIGHTVEHICLES|
  ["B_Quadbike_01_F",5,0,5],                    //Quad Bike
  ["rhsusf_m1025_w",5,0,10],                    //M1025A2
  ["rhsusf_m1025_w_m2",5,5,10],                 //M1025A2 (M2)
  ["rhsusf_m1025_w_mk19",10,15,10],                 //M1025A2 (Mk19)
  ["rhsusf_m998_w_2dr_fulltop",10,0,10],                //M1097A2 (2D)
  ["rhsusf_m998_w_2dr_halftop",10,0,10],                //M1097A2 (2D / open back)
  ["rhsusf_M1230a1_usarmy_wd",20,0,20],               //M1230A1 (MEDEVAC)       
  ["rhsusf_M1083A1P2_wd_fmtv_usarmy",25,0,5],           //M1083A1P2 (covered infantry truck)
  ["rhsusf_M1083A1P2_wd_open_fmtv_usarmy",25,0,5],          //M1083A1P2 (open infantry truck)
  ["rhsusf_M977A4_BKIT_usarmy_wd",25,0,5],              //M977A4 BKIT (cargo truck)
  ["rhsusf_M977A4_BKIT_M2_usarmy_wd",25,40,5],            //M977A4 BKIT (cargo truck with HMG)
  ["B_UGV_01_F",50,0,20],                     //UGV Stomper
  ["B_UGV_01_rcws_F",50,20,20],                   //UGV Stomper (RCWS)
  ["B_Boat_Transport_01_F",10,0,5],                 //Assault Boat
  ["B_Boat_Armed_01_minigun_F",20,20,15],             //Speedboat Minigun
  ["rhsusf_mkvsoc",25,20,10],                   //Mk.V SOCOM
  ["B_SDV_01_F",15,0,5]>                       //SDV
  

 // Blufor Buyable Vehicles
<#define BLUFOR_HEAVYVEHICLES|
  ["rhsusf_m113_usarmy",20,15,10],                  //M113A3 (M2)
  ["rhsusf_m113_usarmy_MK19",20,20,10],               //M113A3 (Mk19)
  ["rhsusf_m113_usarmy_medical",20,0,10],             //M113A3 (Medical)
  ["RHS_M2A2_BUSKI_WD",30,40,15],                 //M2A2ODS (Busk I)
  ["RHS_M2A3_BUSKIII_wd",30,50,20],               //M2A3 (Busk III)
  ["RHS_M6_wd",30,50,20],                     //M6A2
  ["rhsusf_m1a1aim_tuski_wd",40,70,25],             //M1A1SA (Tusk I)
  ["rhsusf_m1a2sep1tuskiiwd_usarmy",50,80,25],            //M1A2SEPv1 (Tusk II)
  ["rhsusf_m109_usarmy",60,125,30]>                  //M109A6
  

  // Blufor Buyable Vehicles
<#define BLUFOR_AIRVEHICLES|
  ["B_UAV_06_F",8,0,5],                       //AL-6 Pelican (Cargo)
  ["RHS_MELB_MH6M",20,0,10],                    //MH-6M Little Bird
  ["RHS_MELB_AH6M",20,20,10],                   //AH-6M Pawnee
  ["RHS_UH1Y_UNARMED",25,0,15],                   //UH-1Y (Unarmed)
  ["RHS_UH1Y_GS",25,20,15],                   //UH-1Y (Ground Suppression)
  ["RHS_AH1Z",50,50,20],                      //AH-1Z (Multi-Role)
  ["RHS_AH64D_wd",50,75,25],                    //AH-64D (Multi-Role)
  ["RHS_UH60M2",25,0,15],                     //UH-60M (Unarmed)
  ["RHS_UH60M",25,20,15],                     //UH-60M
  ["RHS_UH60M_MEV2",30,0,15],                   //UH-60M MEV2
  ["RHS_CH_47F_10",25,20,20],                   //CH-47 Chinook (Armed)
  ["rhsusf_CH53E_USMC",30,0,20],                  //CH-53E Super Stallion
  ["B_UAV_02_dynamicLoadout_F",40,30,20],             //MQ-4A Greyhawk
  ["B_T_UAV_03_dynamicLoadout_F",45,50,25],           //MQ-12 Falcon
  ["B_UAV_05_F",50,50,20],                      //UCAV Sentinel
  ["RHS_A10",100,100,40],                     //A-10A (CAS)
  ["B_Plane_Fighter_01_F",100,175,45],                //F/A-181 Black Wasp II
  ["B_Plane_Fighter_01_Stealth_F",100,175,45],            //F/A-181 Black Wasp II (Stealth)
  ["B_T_VTOL_01_armed_F",75,150,50],                //V-44 X Blackfish (Armed)
  ["B_T_VTOL_01_infantry_F",75,0,50],               //V-44 X Blackfish (Infantry)
  ["B_T_VTOL_01_vehicle_F",75,0,50]>                 //V-44 X Blackfish (Vehicle)
  

  // Blufor Buyable Vehicles
<#define BLUFOR_STATICS|
  ["RHS_M2StaticMG_MiniTripod_WD",5,5,0],             //Mk2 HMG .50
  ["RHS_M2StaticMG_WD",5,5,0],                    //Mk2 HMG .50 (Raised)
  ["RHS_MK19_TriPod_WD",5,10,0],                    //Mk19 GMG 20mm
  ["RHS_TOW_TriPod_WD",10,15,0],                    //TOW (AT)
  ["RHS_Stinger_AA_pod_WD",10,20,0],                  //Stinger (AA)
  ["RHS_M252_WD",8,15,0],                     //Mk6 Mortar
  ["RHS_M119_WD",10,20,0]>                    //M119A2
  

//Specify logistics trucks ammo, repair, fuel and optionally any addition support vehicles you want to be available.

<#define BLUFOR_LOGITRUCKS|
  ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",25,0,15],          //M977A4 Repair
  ["rhsusf_M978A4_BKIT_usarmy_wd",25,0,25],             //M978A4 Fuel
  ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",15,20,15]>
  
// Elite vehicles are locked behind a random military base, these should be vehicles present in the above list

<#define BLUFOR_ELITE_VEHICLES|
  "rhsusf_mkvsoc",                          //Mk.V SOCOM
  "rhsusf_m1a1aim_tuski_wd",                      //M1A1SA (Tusk I)
  "rhsusf_m1a2sep1tuskiiwd_usarmy",                 //M1A2SEPv1 (Tusk II)
  "rhsusf_m109_usarmy",                       //M109A6
  "RHS_AH64D_wd",                           //AH-64D (Multi-Role)
  "B_UAV_02_dynamicLoadout_F",                    //MQ-4A Greyhawk
  "B_T_UAV_03_dynamicLoadout_F",                    //MQ-12 Falcon
  "B_UAV_05_F",                           //UCAV Sentinel
  "RHS_A10",                              //A-10A (CAS)
  "B_Plane_Fighter_01_F",                       //F/A-181 Black Wasp II
  "B_Plane_Fighter_01_Stealth_F",                   //F/A-181 Black Wasp II (Stealth)
  "B_T_VTOL_01_armed_F">                       //V-44 X Blackfish (Armed)
  

<#define BLUFOR_UAVS|
  "B_UAV_01_F",                           //AR-2 Darter
  "B_UGV_01_F",                           //UGV Stomper
  "B_UGV_01_rcws_F",                          //UGV Stomper (RCWS)
  "B_UAV_02_dynamicLoadout_F",                    //MQ-4A Greyhawk
  "B_T_UAV_03_dynamicLoadout_F",                    //MQ-12 Falcon
  "B_UAV_05_F",                           //UCAV Sentinel
  "B_UAV_06_F">                          //AL-6 Pelican
  

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"rhs_msv_emr_sergeant">                     // Squadleader
<#define OPFOR_UNIT_FTL|"rhs_msv_emr_efreitor">                     // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"rhs_msv_emr_officer">                    // Officer
<#define OPFOR_UNIT_RIFLEMAN|"rhs_msv_emr_rifleman">                   // Rifleman
<#define OPFOR_UNIT_GRENADIER|"rhs_msv_emr_grenadier">               // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"rhs_msv_emr_arifleman">            // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"rhs_msv_emr_medic">                        // Medic
<#define OPFOR_UNIT_MARKSMAN|"rhs_msv_emr_marksman">                 // Marksman
<#define OPFOR_UNIT_ENGINEER|"rhs_msv_emr_engineer">                  // Engineer
<#define OPFOR_UNIT_LAT|"rhs_msv_emr_LAT">                    // Light AT
<#define OPFOR_UNIT_HAT|"rhs_msv_emr_at">                     // Dedicated AT
<#define OPFOR_UNIT_AA|"rhs_msv_emr_aa">                      // Anti Air
<#define OPFOR_UNIT_MMG|"rhs_msv_emr_machinegunner">                     // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"rhs_msv_emr_marksmanF">                      // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"rhs_msv_emr_marksman">               // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"rhs_msv_emr_rifleman">                       // Crewman
<#define OPFOR_UNIT_PILOT|"rhs_msv_emr_rifleman">                        // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"rhs_msv_emr_rifleman">                // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"rhs_msv_emr_RShG2"> // Paratrooper

<#define OPFOR_MRAP|"rhs_tigr_msv">
<#define OPFOR_MRAPARMED|"rhs_tigr_sts_msv">
<#define OPFOR_TRANSHELO|"RHS_Mi8mt_Cargo_vvsc">
<#define OPFOR_TRANSTRUCK|"RHS_Ural_MSV_01">
<#define OPFOR_FUELTRUCK|"RHS_Ural_Fuel_MSV_01">
<#define OPFOR_AMMOTRUCK|"rhs_gaz66_ammo_msv">
<#define OPFOR_FLAG|"rhs_Flag_Russia_F">

//These fields are used in varying combination to make up standard vehicle spawns and battlegroups at different intensities
//You can use the same classname multiple times to increase the chance of it being selected

//Light vehicles 
<#define OPFOR_VEHICLES_TIER1|
  "rhs_tigr_sts_msv",                         //GAZ-233014 (Armed)
  "rhs_tigr_sts_msv",                         //GAZ-233014 (Armed)
  "rhs_tigr_sts_msv",                         //GAZ-233014 (Armed)
  "RHS_Ural_Open_MSV_01",                       //Ural-4320 Transport
  "RHS_Ural_MSV_01",                          //Ural-4320 Transport (Covered)
  "rhs_bmp2d_msv">
  

//Medium Vehicles (APCs etc)
<#define OPFOR_VEHICLES_TIER2|
  "rhs_bmp2k_msv",                          //BMP-2K
  "rhs_brm1k_msv",                          //BRM-1K
  "rhs_zsu234_aa",                          //ZSU-23-4V
  "rhs_zsu234_aa">
  
//Heavy Vehicles (Armor, Tanks etc)
<#define OPFOR_VEHICLES_TIER3|
  "rhs_t80",                              //T80
  "rhs_t80",                              //T80
  "rhs_t90a_tv",                            //T90A
  "RHS_Mi24P_AT_vvsc",                        //Mi-24P (AT)
  "RHS_Mi24V_AT_vvsc",                        //Mi-24V (AT)
  "RHS_Mi8mt_Cargo_vvsc",                       //Mi-8MT (Cargo)
  "RHS_Ka52_vvsc">
  

//Helicopters

<#define OPFOR_VEHICLES_HELI|
  "RHS_Mi8mt_Cargo_vvsc",                       //Mi-8MT (Cargo)
  "RHS_Mi24P_AT_vvsc",                        //Mi-24P (AT)
  "RHS_Mi24V_AT_vvsc",                        //Mi-24V (AT)
  "RHS_Ka52_vvsc">
  

//Heavy air vehicles (jets etc)

<#define OPFOR_VEHICLES_JET|
  "RHS_Su25SM_vvsc",                          //Su-25
  "RHS_Su25SM_KH29_vvsc">
  

<#define OPFOR_TROOPTRANSPORT|
  "RHS_Ural_Open_MSV_01",                       //Ural-4320 Transport
  "RHS_Ural_MSV_01",                          //Ural-4320 Transport (Covered)
  "rhs_btr80_msv",                          //BTR-80
  "rhs_btr80a_msv",                         //BTR-80A
  "rhs_bmp2d_msv",                          //BMP-2D
  "RHS_Mi8mt_Cargo_vvsc",                       //Mi-8MT (Cargo)
  "RHS_Mi24P_AT_vvsc",                        //Mi-24P (AT)
  "RHS_Mi24V_AT_vvsc">
  


<#define INDFOR_UNIT_SQL|"rhsgref_ins_squadleader">                  // Squadleader
<#define INDFOR_UNIT_FTL|"rhsgref_ins_squadleader">              // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"rhsgref_ins_squadleader">              // Officer
<#define INDFOR_UNIT_RIFLEMAN|"rhsgref_ins_rifleman">           // Rifleman
<#define INDFOR_UNIT_GRENADIER|"rhsgref_ins_grenadier">          // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"rhsgref_ins_rifleman_akm">       // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"rhsgref_ins_medic">            // Medic
<#define INDFOR_UNIT_MARKSMAN|"rhsgref_ins_sniper">                               // Marksman
<#define INDFOR_UNIT_ENGINEER|"rhsgref_ins_saboteur">           // Engineer
<#define INDFOR_UNIT_LAT|"rhsgref_ins_rifleman_RPG26">                // Light AT
<#define INDFOR_UNIT_HAT|"rhsgref_ins_rifleman_RPG26">                                    // Dedicated AT
<#define INDFOR_UNIT_AA|"rhsgref_ins_specialist_aa">               // Anti Air
<#define INDFOR_UNIT_MMG|"rhsgref_ins_machinegunner">              // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"rhsgref_ins_sniper">             // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"rhsgref_ins_crew">                                // Crewman
<#define INDFOR_UNIT_PILOT|"">                                  // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"">                              // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|"">                            // Paratrooper

<#define INDFOR_VEHICLES|
  "rhsgref_ins_g_uaz_dshkm_chdkz">
  

<#define CIVILIANS|
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
  "C_man_w_worker_F">
  

 <#define CIVILIAN_VEHICLES|
  "C_Hatchback_01_F",
  "C_Hatchback_01_sport_F",
  "C_Offroad_01_F",
  "C_SUV_01_F",
  "C_Van_01_transport_F",
  "C_Van_01_box_F",
  "C_Van_01_fuel_F",
  "C_Quadbike_01_F">
  


// Buildable Object Defines & Function
<#define B|[#1,0,0,0]>