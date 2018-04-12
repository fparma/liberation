// Main Objects
<#define MAIN_FOB_TYPE|"Land_Cargo_HQ_V1_F">                    // FOB Base Object
<#define MAIN_FOB_BOX|"B_Slingload_01_Cargo_F">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"B_Truck_01_box_F">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"B_Truck_01_medical_F">             // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"O_Truck_03_transport_F">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"CUP_B_CH47F_USA">                 // Main Transport helicopter (Transporting FOB Capable)
<#define MAIN_AMMOBOX_BLUFOR|"Box_NATO_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units (Not necessary arma3's blufor side, but rather the player side. )
// TODO: Add Sharpshooter
<#define BLUFOR_UNIT_OFFICER|"B_officer_F">                     // Officer
<#define BLUFOR_UNIT_SQL|"B_Soldier_SL_F">                      // Squadleader
<#define BLUFOR_UNIT_FTL|"B_Soldier_TL_F">                      // Fireteam Leader
<#define BLUFOR_UNIT_RIFLEMAN|"B_soldier_F">                    // Rifleman
<#define BLUFOR_UNIT_GRENADIER|"B_soldier_GL_F">                // Grenadier
<#define BLUFOR_UNIT_AUTORIFLEMAN|"B_soldier_AR_F">             // Autorifleman (LMG)
<#define BLUFOR_UNIT_MEDIC|"B_medic_F">                         // Medic
<#define BLUFOR_UNIT_MARKSMAN|"B_soldier_M_F">                  // Marksman
<#define BLUFOR_UNIT_ENGINEER|"B_engineer_F">                   // Engineer
<#define BLUFOR_UNIT_LAT|"B_soldier_LAT_F">                     // Light AT
<#define BLUFOR_UNIT_HAT|"B_soldier_AT_F">                      // Dedicated AT
<#define BLUFOR_UNIT_AA|"B_soldier_AA_F">                       // Anti Air
<#define BLUFOR_UNIT_MMG|"B_HeavyGunner_F">                     // Medium Machine Gunner
<#define BLUFOR_UNIT_SNIPER|"B_sniper_F">                       // Sniper
<#define BLUFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define BLUFOR_UNIT_CREWMAN|"B_crew_F">                        // Crewman
<#define BLUFOR_UNIT_PILOT|"B_Pilot_F">                         // Jet Pilot
<#define BLUFOR_UNIT_HELIPILOT|"B_helipilot_F">                 // Helicopter Pilot
<#define BLUFOR_UNIT_PARATROOPER|"B_soldier_PG_F">              // Paratrooper

// Blufor Buyable Vehicles
<#define BLUFOR_LIGHTVEHICLES|
  ["",0,0,25],
  ["",0,50,30],
  ["",0,100,50],
  ["",0,15,10],
  ["",0,15,10],
  ["",0,35,10]
  >

 // Blufor Buyable Vehicles
<#define BLUFOR_HEAVYVEHICLES|
  ["",0,0,25],
  ["",0,50,30],
  ["",0,100,50],
  ["",0,15,10],
  ["",0,15,10],
  ["",0,35,10]
  >

  // Blufor Buyable Vehicles
<#define BLUFOR_AIRVEHICLES|
  ["",0,0,25],
  ["",0,50,30],
  ["",0,100,50],
  ["",0,15,10],
  ["",0,15,10],
  ["",0,35,10]
  >

  // Blufor Buyable Vehicles
<#define BLUFOR_STATICS|
  ["",0,0,25],
  ["",0,50,30],
  ["",0,100,50],
  ["",0,15,10],
  ["",0,15,10],
  ["",0,35,10]
  >

//Specify logistics trucks ammo, repair, fuel and optionally any addition support vehicles you want to be available.

w<#define BLUFOR_LOGITRUCKS|
  ["",0,0,25],
  ["",0,50,30],
  ["",0,100,50],
  ["",0,15,10],
  ["",0,15,10],
  ["",0,35,10]
  >
// Elite vehicles are locked behind a random military base, these should be vehicles present in the above list

   <#define BLUFOR_ELITES|
  "",
  ""
  >

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"CUP_O_RU_Soldier_SL_EMR">              // Squadleader
<#define OPFOR_UNIT_FTL|"CUP_O_RU_Soldier_TL_EMR">              // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"CUP_O_RU_Officer_EMR">             // Officer
<#define OPFOR_UNIT_RIFLEMAN|"CUP_O_RU_Soldier_EMR">            // Rifleman
<#define OPFOR_UNIT_GRENADIER|"CUP_O_RU_Soldier_GL_EMR">        // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"CUP_O_RU_Soldier_AR_EMR">     // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"CUP_O_RU_Medic_EMR">                 // Medic
<#define OPFOR_UNIT_MARKSMAN|"CUP_O_RU_Soldier_Marksman_EMR">   // Marksman
<#define OPFOR_UNIT_ENGINEER|"CUP_O_RU_Engineer_EMR">           // Engineer
<#define OPFOR_UNIT_LAT|"CUP_O_RU_Soldier_AT_EMR">              // Light AT
<#define OPFOR_UNIT_HAT|"CUP_O_RU_Soldier_HAT_EMR">             // Dedicated AT
<#define OPFOR_UNIT_AA|"CUP_O_RU_Soldier_AA_EMR">               // Anti Air
<#define OPFOR_UNIT_MMG|"CUP_O_RU_Soldier_MG_EMR">              // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"CUP_O_RU_Sniper_KSVK_EMR">          // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"CUP_O_RU_Sniper_EMR">         // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"">                                 // Crewman
<#define OPFOR_UNIT_PILOT|"">                                   // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"">                               // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"CUP_O_RU_Officer_VDV_EMR">     // Paratrooper

<#define OPFOR_MRAP|"CUP_O_UAZ_Unarmed_RU">
<#define OPFOR_MRAPARMED|"CUP_O_UAZ_MG_RU">
<#define OPFORTRANSHELO|"CUP_O_Mi8_RU">
<#define OPFORTRANSTRUCK|"CUP_O_Ural_RU">
<#define OPFORFUELTRUCK|"CUP_O_Ural_Refuel_RU">
<#define OPFORAMMOTRUCK|"CUP_O_Ural_Reammo_RU">
<#define OPFOR_FLAG|"">

//These fields are used in varying combination to make up standard vehicle spawns and battlegroups at different intensities

//Light vehicles
<#define OPFOR_VEHICLES_TIER1|
  ""
  >

//Medium Vehicles (APCs etc)
<#define OPFOR_VEHICLES_TIER2|
  ""
  >
//Heavy Vehicles (Armor, Tanks etc)
<#define OPFOR_VEHICLES_TIER3|
  ""
  >

//Helicopters

<#define OPFOR_VEHICLES_HELI|
  ""
  >

//Heavy air vehicles (jets etc)

<#define OPFOR_VEHICLES_JET|
  ""
  >

<#define OPFOR_TROOPTRANSPORT|
  ""
  >


<#define INDFOR_UNIT_SQL|"CUP_O_INS_Story_Bardak">              // Squadleader
<#define INDFOR_UNIT_FTL|"">                                    // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"CUP_O_INS_Story_Lopotev">         // Officer
<#define INDFOR_UNIT_RIFLEMAN|"CUP_O_INS_Soldier">              // Rifleman
<#define INDFOR_UNIT_GRENADIER|"CUP_O_INS_Soldier_GL">          // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"CUP_O_INS_Soldier_AR">       // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"CUP_O_INS_Medic">                   // Medic
<#define INDFOR_UNIT_MARKSMAN|"">                               // Marksman
<#define INDFOR_UNIT_ENGINEER|"CUP_O_INS_Soldier_Engineer">     // Engineer
<#define INDFOR_UNIT_LAT|"CUP_O_INS_Soldier_AT">                // Light AT
<#define INDFOR_UNIT_HAT|"">                                    // Dedicated AT
<#define INDFOR_UNIT_AA|"CUP_O_INS_Soldier_AA">                 // Anti Air
<#define INDFOR_UNIT_MMG|"CUP_O_INS_Soldier_MG">                // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"CUP_O_INS_Sniper">                 // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"">                                // Crewman
<#define INDFOR_UNIT_PILOT|"">                                  // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"">                              // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|"">                            // Paratrooper

<#define INDFOR_VEHICLES|
  "CUP_O_Datsun_PK"
  >

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
  "C_man_w_worker_F"
  >

 <#define CIVILIAN_VEHICLES|
  "C_Hatchback_01_F",
  "C_Hatchback_01_sport_F",
  "C_Offroad_01_F",
  "C_SUV_01_F",
  "C_Van_01_transport_F",
  "C_Van_01_box_F",
  "C_Van_01_fuel_F",
  "C_Quadbike_01_F"
  >


// Buildable Object Defines & Function
<#define B|[#1,0,0,0]>