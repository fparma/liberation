// Main Objects
<#define MAIN_FOB_TYPE|"Land_Cargo_HQ_V1_F">                    // FOB Base Object
<#define MAIN_FOB_BOX|"B_Slingload_01_Cargo_F">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"B_Truck_01_box_F">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"B_Truck_01_medical_F">             // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"O_Truck_03_transport_F">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"B_Heli_Transport_03_F">           // Main Transport helicopter (Transporting FOB Capable)
<#define MAIN_AMMOBOX_BLUFOR|"Box_NATO_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units (Not necessary arma3's blufor side, but rather the player side. )
// TODO: Add Sharpshooter
<#define BLUFOR_UNIT_OFFICER|"B_T_Officer_F">                   // Officer
<#define BLUFOR_UNIT_SQL|"B_T_Soldier_SL_F">                    // Squadleader
<#define BLUFOR_UNIT_FTL|"B_T_Soldier_TL_F">                    // Fireteam Leader
<#define BLUFOR_UNIT_RIFLEMAN|"B_T_soldier_F">                  // Rifleman
<#define BLUFOR_UNIT_GRENADIER|"B_T_soldier_GL_F">              // Grenadier
<#define BLUFOR_UNIT_AUTORIFLEMAN|"B_T_soldier_AR_F">           // Autorifleman (LMG)
<#define BLUFOR_UNIT_MEDIC|"B_T_medic_F">                       // Medic
<#define BLUFOR_UNIT_MARKSMAN|"B_T_soldier_M_F">                // Marksman
<#define BLUFOR_UNIT_ENGINEER|"B_T_engineer_F">                 // Engineer
<#define BLUFOR_UNIT_LAT|"B_T_soldier_LAT_F">                   // Light AT
<#define BLUFOR_UNIT_HAT|"B_T_soldier_AT_F">                    // Dedicated AT
<#define BLUFOR_UNIT_AA|"B_T_soldier_AA_F">                     // Anti Air
<#define BLUFOR_UNIT_MMG|"B_T_HeavyGunner_F">                   // Medium Machine Gunner
<#define BLUFOR_UNIT_SNIPER|"B_T_sniper_F">                     // Sniper
<#define BLUFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define BLUFOR_UNIT_CREWMAN|"B_T_crew_F">                      // Crewman
<#define BLUFOR_UNIT_PILOT|"B_T_Pilot_F">                       // Jet Pilot
<#define BLUFOR_UNIT_HELIPILOT|"B_T_helipilot_F">               // Helicopter Pilot
<#define BLUFOR_UNIT_PARATROOPER|"B_T_soldier_PG_F">            // Paratrooper

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"O_T_Soldier_SL_F">                     // Squadleader
<#define OPFOR_UNIT_FTL|"O_T_Soldier_TL_F">                     // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"O_T_Officer_F">                    // Officer
<#define OPFOR_UNIT_RIFLEMAN|"O_T_Soldier_F">                   // Rifleman
<#define OPFOR_UNIT_GRENADIER|"O_T_Soldier_GL_F">               // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"O_T_Soldier_AR_F">            // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"O_T_Medic_F">                        // Medic
<#define OPFOR_UNIT_MARKSMAN|"O_T_Soldier_M_F">                 // Marksman
<#define OPFOR_UNIT_ENGINEER|"O_T_Engineer_F">                  // Engineer
<#define OPFOR_UNIT_LAT|"O_T_Soldier_LAT_F">                    // Light AT
<#define OPFOR_UNIT_HAT|"O_T_Soldier_AT_F">                     // Dedicated AT
<#define OPFOR_UNIT_AA|"O_T_Soldier_AA_F">                      // Anti Air
<#define OPFOR_UNIT_MMG|"O_T_Soldier_AR_F">                     // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"O_T_Sniper_F">                      // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"O_T_Recon_M_F">               // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"O_T_Crew_F">                       // Crewman
<#define OPFOR_UNIT_PILOT|"O_T_Pilot_F">                        // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"O_T_Helipilot_F">                // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"O_T_Soldier_PG_F">             // Paratrooper

<#define INDFOR_UNIT_SQL|"I_C_Soldier_Camo_F">                  // Squadleader
<#define INDFOR_UNIT_FTL|"I_C_Soldier_Bandit_7_F">              // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"I_C_Soldier_Camo_F">              // Officer
<#define INDFOR_UNIT_RIFLEMAN|"I_C_Soldier_Para_1_F">           // Rifleman
<#define INDFOR_UNIT_GRENADIER|"I_C_Soldier_Para_6_F">          // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"I_C_Soldier_Para_4_F">       // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"I_C_Soldier_Bandit_1_F">            // Medic
<#define INDFOR_UNIT_MARKSMAN|"">                               // Marksman
<#define INDFOR_UNIT_ENGINEER|"I_C_Soldier_Para_8_F">           // Engineer
<#define INDFOR_UNIT_LAT|"I_C_Soldier_Para_5_F">                // Light AT
<#define INDFOR_UNIT_HAT|"">                                    // Dedicated AT
<#define INDFOR_UNIT_AA|"I_C_Soldier_Bandit_2_F">               // Anti Air
<#define INDFOR_UNIT_MMG|"I_C_Soldier_Bandit_3_F">              // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"I_C_Soldier_Para_7_F">             // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"">                                // Crewman
<#define INDFOR_UNIT_PILOT|"">                                  // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"">                              // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|"">                            // Paratrooper



// Buildable Object Defines & Function
<#define B|[#1,0,0,0]>