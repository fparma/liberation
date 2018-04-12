// Main Objects
<#define MAIN_FOB_TYPE|"Gue_WarfareBBarracks">                  // FOB Base Object
<#define MAIN_FOB_BOX|"B_Slingload_01_Cargo_F">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"B_Truck_01_box_F">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"CUP_O_Ural_Open_CHDKZ">            // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"O_Truck_03_transport_F">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"CUP_O_MI6T_CHDKZ">                // Main Transport helicopter (Transporting FOB Capable)
<#define MAIN_AMMOBOX_BLUFOR|"Box_NATO_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units (Not necessary arma3's blufor side, but rather the player side. )
// TODO: Add Sharpshooter
<#define BLUFOR_UNIT_OFFICER|"CUP_O_INS_Officer">               // Officer
<#define BLUFOR_UNIT_SQL|"CUP_O_INS_Officer">                   // Squadleader
<#define BLUFOR_UNIT_FTL|"CUP_O_INS_Officer">                   // Fireteam Leader
<#define BLUFOR_UNIT_RIFLEMAN|"CUP_O_INS_Soldier">              // Rifleman
<#define BLUFOR_UNIT_GRENADIER|"CUP_O_INS_Soldier_GL">          // Grenadier
<#define BLUFOR_UNIT_AUTORIFLEMAN|"CUP_O_INS_Soldier_AR">       // Autorifleman (LMG)
<#define BLUFOR_UNIT_MEDIC|"CUP_O_INS_Medic">                   // Medic
<#define BLUFOR_UNIT_MARKSMAN|"CUP_O_INS_Sniper">               // Marksman
<#define BLUFOR_UNIT_ENGINEER|"CUP_O_INS_Soldier_Engineer">     // Engineer
<#define BLUFOR_UNIT_LAT|"CUP_O_INS_Soldier_AT">                // Light AT
<#define BLUFOR_UNIT_HAT|"CUP_O_INS_Soldier_AT">                // Dedicated AT
<#define BLUFOR_UNIT_AA|"CUP_O_INS_Soldier_AA">                 // Anti Air
<#define BLUFOR_UNIT_MMG|"CUP_O_INS_Soldier_AR">                // Medium Machine Gunner
<#define BLUFOR_UNIT_SNIPER|"CUP_O_INS_Sniper">                 // Sniper
<#define BLUFOR_UNIT_SHARPSHOOTER|"CUP_O_INS_Sniper">           // Sharpshooter
<#define BLUFOR_UNIT_CREWMAN|"CUP_O_INS_Crew">                  // Crewman
<#define BLUFOR_UNIT_PILOT|"CUP_O_INS_Pilot">                   // Jet Pilot
<#define BLUFOR_UNIT_HELIPILOT|"CUP_O_INS_Pilot">               // Helicopter Pilot
<#define BLUFOR_UNIT_PARATROOPER|"CUP_O_INS_Soldier_AK74">      // Paratrooper

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"CUP_B_CDF_Officer_FST">                    // Squadleader
<#define OPFOR_UNIT_FTL|"CUP_B_CDF_Soldier_TL_FST">                 // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"CUP_B_CDF_Officer_FST">                // Officer
<#define OPFOR_UNIT_RIFLEMAN|"CUP_B_CDF_Soldier_FST">               // Rifleman
<#define OPFOR_UNIT_GRENADIER|"CUP_B_CDF_Soldier_GL_FST">           // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"CUP_B_CDF_Soldier_AR_FST">        // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"CUP_B_CDF_Medic_FST">                    // Medic
<#define OPFOR_UNIT_MARKSMAN|"CUP_B_CDF_Soldier_Marksman_FST">      // Marksman
<#define OPFOR_UNIT_ENGINEER|"CUP_B_CDF_Engineer_FST">              // Engineer
<#define OPFOR_UNIT_LAT|"CUP_B_CDF_Soldier_LAT_FST">                // Light AT
<#define OPFOR_UNIT_HAT|"CUP_B_CDF_Soldier_LAT_FST">                // Dedicated AT
<#define OPFOR_UNIT_AA|"CUP_B_CDF_Soldier_AA_FST">                  // Anti Air
<#define OPFOR_UNIT_MMG|"CUP_B_CDF_Soldier_MG_FST">                 // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"CUP_B_CDF_Sniper_FST">                  // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"CUP_B_CDF_Soldier_Marksman_FST">  // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"CUP_B_CDF_Militia_FST">                // Crewman
<#define OPFOR_UNIT_PILOT|"CUP_B_CDF_Militia_FST">                  // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"CUP_B_CDF_Militia_FST">              // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"CUP_B_CDF_Militia_FST">            // Paratrooper

<#define INDFOR_UNIT_SQL|"CUP_I_GUE_Officer">                       // Squadleader
<#define INDFOR_UNIT_FTL|"CUP_I_GUE_Soldier_AKS74">                 // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"CUP_I_GUE_Officer">                   // Officer
<#define INDFOR_UNIT_RIFLEMAN|"CUP_I_GUE_Soldier_AKM">              // Rifleman
<#define INDFOR_UNIT_GRENADIER|"CUP_I_GUE_Soldier_GL">              // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"CUP_I_GUE_Soldier_AR">           // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"CUP_I_GUE_Medic">                       // Medic
<#define INDFOR_UNIT_MARKSMAN|"CUP_I_GUE_Sniper">                   // Marksman
<#define INDFOR_UNIT_ENGINEER|"CUP_I_GUE_Engineer">                 // Engineer
<#define INDFOR_UNIT_LAT|"CUP_I_GUE_Soldier_AT">                    // Light AT
<#define INDFOR_UNIT_HAT|"CUP_I_GUE_Soldier_AT">                    // Dedicated AT
<#define INDFOR_UNIT_AA|"CUP_I_GUE_Soldier_AA">                     // Anti Air
<#define INDFOR_UNIT_MMG|"CUP_I_GUE_Soldier_MG">                    // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"CUP_I_GUE_Sniper">                     // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"CUP_I_GUE_Sniper">               // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"CUP_I_GUE_Crew">                      // Crewman
<#define INDFOR_UNIT_PILOT|"CUP_I_GUE_Soldier_AKSU">                // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"CUP_I_GUE_Soldier_AKSU">            // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|"CUP_I_GUE_Soldier_AKSU">          // Paratrooper



// Buildable Object Defines & Function
<#define B|[#1,0,0,0]>
