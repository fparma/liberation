// Main Objects
<#define MAIN_FOB_TYPE|"TK_WarfareBAircraftFactory_Base_EP1">                    // FOB Base Object
<#define MAIN_FOB_BOX|"B_Slingload_01_Cargo_F">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"CUP_O_Ural_Repair_RU">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"CUP_O_BMP2_AMB_RU">             // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"CUP_O_Ural_Reammo_RU">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"CUP_O_MI6T_RU">           // Main Transport helicopter (Transporting FOB Capable)
<#define MAIN_AMMOBOX_BLUFOR|"Box_East_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units (Not necessary arma3's blufor side, but rather the player side. )
// TODO: Add Sharpshooter
<#define BLUFOR_UNIT_OFFICER|"FP_Faction_GSFG70_SL">                   // Officer
<#define BLUFOR_UNIT_SQL|"FP_Faction_GSFG85_SL">                    // Squadleader
<#define BLUFOR_UNIT_FTL|"FP_Faction_GSFG85_TL">                    // Fireteam Leader
<#define BLUFOR_UNIT_RIFLEMAN|"FP_Faction_GSFG85_Rifleman">                  // Rifleman
<#define BLUFOR_UNIT_GRENADIER|"FP_Faction_GSFG85_RAT">              // Grenadier
<#define BLUFOR_UNIT_AUTORIFLEMAN|"FP_Faction_GSFG85_AR">           // Autorifleman (LMG)
<#define BLUFOR_UNIT_MEDIC|"FP_Faction_GSFG85_Medic">                       // Medic
<#define BLUFOR_UNIT_MARKSMAN|"FP_Faction_GSFG85_DM">                // Marksman
<#define BLUFOR_UNIT_ENGINEER|"FP_Faction_GSFG85_Engineer">                 // Engineer
<#define BLUFOR_UNIT_LAT|"FP_Faction_GSFG85_RAT">                   // Light AT
<#define BLUFOR_UNIT_HAT|"FP_Faction_GSFG85_AMAT">                    // Dedicated AT
<#define BLUFOR_UNIT_AA|"FP_Faction_GSFG85_MANPADS">                     // Anti Air
<#define BLUFOR_UNIT_MMG|"FP_Faction_GSFG85_MMG">                    // Medium Machine Gunner
<#define BLUFOR_UNIT_SNIPER|"CUP_O_RU_Sniper_KSVK_VDV">                     // Sniper
<#define BLUFOR_UNIT_SHARPSHOOTER|"FP_Faction_GSFG70_DM">                           // Sharpshooter
<#define BLUFOR_UNIT_CREWMAN|"FP_Faction_GSFG70_Crewman">                      // Crewman
<#define BLUFOR_UNIT_PILOT|"CUP_O_RU_Pilot_VDV">                       // Jet Pilot
<#define BLUFOR_UNIT_HELIPILOT|"CUP_O_RU_Pilot_VDV">               // Helicopter Pilot
<#define BLUFOR_UNIT_PARATROOPER|"CUP_O_RUS_Soldier_GL_Autumn">            // Paratrooper

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"FP_Faction_USAREUR90_SL_D">                     // Squadleader
<#define OPFOR_UNIT_FTL|"CUP_I_TK_GUE_Soldier_TL">                     // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"FP_Faction_USAREUR90_SL_D">                    // Officer
<#define OPFOR_UNIT_RIFLEMAN|"CUP_I_TK_GUE_Soldier_M16A2">                   // Rifleman
<#define OPFOR_UNIT_GRENADIER|"CUP_I_GUE_Soldier_GL">               // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"CUP_I_GUE_Soldier_AR">            // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"CUP_I_GUE_Medic">                        // Medic
<#define OPFOR_UNIT_MARKSMAN|"B_ghillie_ard_F">                 // Marksman
<#define OPFOR_UNIT_ENGINEER|"CUP_I_GUE_Engineer">                  // Engineer
<#define OPFOR_UNIT_LAT|"CUP_I_GUE_Soldier_AT">                    // Light AT
<#define OPFOR_UNIT_HAT|"CUP_I_GUE_Soldier_AA">                     // Dedicated AT
<#define OPFOR_UNIT_AA|"CUP_I_TK_GUE_Soldier_AA">                      // Anti Air
<#define OPFOR_UNIT_MMG|"CUP_I_TK_GUE_Soldier_MG">                     // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"B_ghillie_ard_F">                      // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"B_ghillie_sard_F">               // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"CUP_I_TK_GUE_Guerilla_Enfield">                       // Crewman
<#define OPFOR_UNIT_PILOT|"CUP_B_USMC_Pilot">                        // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"CUP_B_USMC_Pilot">                // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"">             // Paratrooper

<#define INDFOR_UNIT_SQL|"CUP_I_TK_GUE_Commander">                  // Squadleader
<#define INDFOR_UNIT_FTL|"CUP_I_TK_GUE_Soldier_TL">              // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"CUP_I_TK_GUE_Commander">              // Officer
<#define INDFOR_UNIT_RIFLEMAN|"CUP_I_TK_GUE_Soldier">           // Rifleman
<#define INDFOR_UNIT_GRENADIER|"CUP_I_TK_GUE_Soldier_GL">          // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"CUP_I_TK_GUE_Soldier_AR">       // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"CUP_I_TK_GUE_Guerilla_Medic">            // Medic
<#define INDFOR_UNIT_MARKSMAN|"CUP_I_TK_GUE_Guerilla_Enfield">                               // Marksman
<#define INDFOR_UNIT_ENGINEER|"I_C_Soldier_Para_8_F">           // Engineer
<#define INDFOR_UNIT_LAT|"CUP_I_TK_GUE_Soldier_AT">                // Light AT
<#define INDFOR_UNIT_HAT|"CUP_I_TK_GUE_Soldier_HAT">                                    // Dedicated AT
<#define INDFOR_UNIT_AA|"CUP_I_TK_GUE_Soldier_AA">               // Anti Air
<#define INDFOR_UNIT_MMG|"CUP_I_TK_GUE_Soldier_MG">              // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"CUP_I_GUE_Sniper">             // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"CUP_I_TK_GUE_Guerilla_Enfield">                           // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"CUP_I_TK_GUE_Soldier">                                // Crewman
<#define INDFOR_UNIT_PILOT|"">                                  // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"">                              // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|"">                            // Paratrooper



// Buildable Object Defines & Function
<#define B|[#1,0,0,0]>
