// 
//In liberation scripts BLUFOR is always the player side, and OPFOR the opposing side
//Units do not have to match to their ingame side (e.g you can use units from any side for blufor down below).
//Vehicle costs are decided by the set of numbers after the classname (manpower, ammo, fuel), e.g ["B_MRAP_01_F",0,0,5]

// Main Objects
<#define MAIN_FOB_TYPE|"Land_Cargo_HQ_V1_F">                    // FOB Base Object
<#define MAIN_FOB_BOX|"B_Slingload_01_Cargo_F">                 // FOB Packaged Box (For Slingloading)
<#define MAIN_TRUCK|"B_Truck_01_box_F">                         // FOB Transport Truck
<#define MAIN_TRUCK_RESPAWN|"B_Truck_01_medical_F">             // Mobile Respawn Vehicle
<#define MAIN_TRUCK_AMMOBOX_OPFOR|"O_Truck_03_transport_F">     // Opfor transport truck Definition
<#define MAIN_ARSENAL_BOX|"B_supplyCrate_F">                    // Arsenal Box Classname
<#define MAIN_TRANSPORT_HELO|"B_Heli_Transport_03_unarmed_F">   // Main Transport helicopter (Make sure it's capable of slingloading the FOB BOX above)
<#define MAIN_AMMOBOX_BLUFOR|"Box_NATO_AmmoVeh_F">              // Blufor Vehicle Ammobox Definition
<#define MAIN_AMMOBOX_OPFOR|"Box_East_AmmoVeh_F">               // Opfor Vehicle Ammobox Definition

// Blufor Units

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
  ["B_MRAP_01_F",0,0,5],                          //M-ATV
  ["B_MRAP_01_gmg_F",0,10,5],                     //M-ATV GMG
  ["B_MRAP_01_hmg_F",0,5,5],                      //M-ATV HMG
  ["B_LSV_01_unarmed_F",0,0,5],                   //Polaris DAGOR
  ["B_LSV_01_armed_F",0,10,5],                    //Polaris DAGOR XM312
  ["B_LSV_01_AT_F",0,15,5],                       //Prowler AT
  ["B_Quadbike_01_F",0,0,5],                      //Quad Bike
  ["B_UGV_01_F",10,0,5],                          //UGV Stomper
  ["B_UGV_01_rcws_F",10,10,5],                    //UGV Stomper RCWS
  ["B_Boat_Transport_01_F",0,0,5],                //Assault Boat
  ["B_Boat_Armed_01_minigun_F",0,5,5]>                      //Speedboat Minigun
  

 // Blufor Buyable Vehicles
<#define BLUFOR_HEAVYVEHICLES|
  ["B_APC_Wheeled_01_cannon_F",20,40,15],                  //Badger IFV
  ["B_APC_Tracked_01_rcws_F",20,60,20],               //Namer
  ["B_APC_Tracked_01_CRV_F",20,60,20],             //Nemmera
  ["B_AFV_Wheeled_01_cannon_F",30,80,25],                 //Rhino MGS
  ["B_AFV_Wheeled_01_up_cannon_F",30,85,25],               //Rhino MSG UP
  ["B_MBT_01_mlrs_F",40,120,30],                     //Seara
  ["B_MBT_01_arty_F",40,120,30],             //Sholef
  ["B_MBT_01_TUSK_F",50,150,30],            //Merkava Mk IV LIC
  ["B_MBT_01_cannon_F",50,150,30]>                  //Merkava MK IV M
  

  // Blufor Buyable Vehicles
<#define BLUFOR_AIRVEHICLES|
  ["B_Heli_Light_01_dynamicLoadout_F",10,10,5],                       //AH-6 Little Bird
  ["B_Heli_Transport_03_F",20,0,15],                    //CH-47I Chinook
  ["B_Heli_Light_01_F",10,0,5],                   //MH-6 Little Bird
  ["B_Heli_Attack_01_dynamicLoadout_F",50,50,20],                   //RAH-66 Comanche
  ["B_Heli_Transport_01_F",20,0,15],                   //UH-80 Ghost Hawk
  ["B_Plane_CAS_01_dynamicLoadout_F",40,120,30],                      //A-10D Thunderbolt II
  ["B_Plane_Fighter_01_F",40,80,25],                //F/A-181 Black Wasp II
  ["B_Plane_Fighter_01_Stealth_F",40,90,30],            //F/A-181 Black Wasp II (Stealth)
  ["B_T_VTOL_01_armed_F",40,35,30],           //V-44 X Blackfish (Armed)
  ["B_T_VTOL_01_vehicle_F",40,15,30],       //V-44 X Blackfish Vehicle Transport
  ["B_T_VTOL_01_infantry_F",40,15,30],       //V-44 X Blackfish Infantry Transport
  ["B_UAV_06_F",5,0,5],                    //AL-6 Pelican
  ["B_UAV_06_medical_F",5,0,5],                    //AL-6 Pelican Medical
  ["B_UAV_05_F",20,20,10],                     //UCAV Sentinel
  ["B_UAV_02_dynamicLoadout_F",20,20,10]>     //YABHON-R3                
  

  // Blufor Buyable Vehicles
<#define BLUFOR_STATICS|
  ["B_static_AA_F",5,5,0],             //Mini-Spike AA
  ["B_static_AT_F",5,5,0],                    //Mini-Spike AT
  ["B_SAM_System_02_F",15,30,0],                    //Mk21 Centurion
  ["B_SAM_System_01_F",15,40,0],                    //Mk49 Spartan
  ["B_Mortar_01_F",10,20,0],                  //Mk6 Mortar
  ["B_AAA_System_01_F",15,35,0],                     //Praetorian 1C
  ["B_GMG_01_A_F",5,5,0],                       //XM307A
  ["B_HMG_01_A_F",10,20,0]>                    //XM312
  

//Specify logistics trucks ammo, repair, fuel and optionally any addition support vehicles you want to be available.

<#define BLUFOR_LOGITRUCKS|
  ["B_Truck_01_ammo_F",15,20,10],          //HEMTT Ammo
  ["B_Truck_01_fuel_F",15,0,10],             //HEMTT Fuel
  ["B_Truck_01_transport_F",10,0,10],       //HEMTT Transport
  ["B_Truck_01_Repair_F",15,0,10]>          //HEMTT Repair
  
// Elite vehicles are locked behind a random military base, these should be vehicles present in the above lists

<#define BLUFOR_ELITE_VEHICLES|
  "B_AFV_Wheeled_01_cannon_F",                
  "B_AFV_Wheeled_01_up_cannon_F",                  
  "B_MBT_01_mlrs_F",                           
  "B_MBT_01_arty_F",                    
  "B_MBT_01_TUSK_F",                   
  "B_MBT_01_cannon_F",                           
  "B_Heli_Attack_01_dynamicLoadout_F",                              //RAH-66 Comanche
  "B_Plane_Fighter_01_F",                       //F/A-181 Black Wasp II
  "B_Plane_Fighter_01_Stealth_F",                   //F/A-181 Black Wasp II (Stealth)
  "B_Plane_CAS_01_dynamicLoadout_F">                       //A-10D
  

<#define BLUFOR_UAVS|"">
  

// Opfor Units (Not necessary arma3's opfor side, but rather the enemy's side. )
<#define OPFOR_UNIT_SQL|"O_Soldier_SL_F">                     // Squadleader
<#define OPFOR_UNIT_FTL|"O_Soldier_TL_F">                     // Fireteam Leader
<#define OPFOR_UNIT_OFFICER|"O_officer_F">                    // Officer
<#define OPFOR_UNIT_RIFLEMAN|"O_Soldier_F">                   // Rifleman
<#define OPFOR_UNIT_GRENADIER|"O_Soldier_GL_F">               // Grenadier
<#define OPFOR_UNIT_AUTORIFLEMAN|"O_Soldier_AR_F">            // Autorifleman (LMG)
<#define OPFOR_UNIT_MEDIC|"O_medic_F">                        // Medic
<#define OPFOR_UNIT_MARKSMAN|"O_soldier_M_F">                 // Marksman
<#define OPFOR_UNIT_ENGINEER|"O_engineer_F">                  // Engineer
<#define OPFOR_UNIT_LAT|"O_Soldier_LAT_F">                    // Light AT
<#define OPFOR_UNIT_HAT|"O_Soldier_AT_F">                     // Dedicated AT
<#define OPFOR_UNIT_AA|"O_Soldier_AA_F">                      // Anti Air
<#define OPFOR_UNIT_MMG|"O_HeavyGunner_F">                     // Medium Machine Gunner
<#define OPFOR_UNIT_SNIPER|"O_Sniper_F">                      // Sniper
<#define OPFOR_UNIT_SHARPSHOOTER|"O_Sharpshooter_F">               // Sharpshooter
<#define OPFOR_UNIT_CREWMAN|"O_crew_F">                       // Crewman
<#define OPFOR_UNIT_PILOT|"O_Fighter_Pilot_F">                        // Jet Pilot
<#define OPFOR_UNIT_HELIPILOT|"O_Pilot_F">                // Helicopter Pilot
<#define OPFOR_UNIT_PARATROOPER|"O_soldier_PG_F"> // Paratrooper

<#define OPFOR_MRAP|"O_MRAP_02_F">
<#define OPFOR_MRAPARMED|"O_MRAP_02_hmg_F">
<#define OPFOR_TRANSHELO|"O_Heli_Transport_04_covered_F">
<#define OPFOR_TRANSTRUCK|"O_Truck_03_covered_F">
<#define OPFOR_FUELTRUCK|"O_Truck_03_fuel_F">
<#define OPFOR_AMMOTRUCK|"O_Truck_03_ammo_F">
<#define OPFOR_FLAG|"Flag_CSAT_F">

//These fields are used in varying combination to make up standard vehicle spawns and battlegroups at different intensities
//When a vehicle is spawned a randomly chosen classname is picked from the available, so 
//you can use the same classname multiple times to increase the chance of it being selected

//Light vehicles 
<#define OPFOR_VEHICLES_TIER1|
  "O_MRAP_02_F",                         //Karatel
  "O_MRAP_02_hmg_F",                         //Karatel HMG
  "O_MRAP_02_hmg_F",                         //Karatel HMG
  "O_MRAP_02_gmg_F",                       //Karatel GMG
  "O_LSV_02_armed_F">
  

//Medium Vehicles (APCs etc)
<#define OPFOR_VEHICLES_TIER2|
  "O_APC_Tracked_02_cannon_F",                          //BM-2T Stalker
  "O_APC_Wheeled_02_rcws_v2_F">                          //MSE-3 Marid
  
//Heavy Vehicles (Armor, Tanks etc)
<#define OPFOR_VEHICLES_TIER3|
  "O_APC_Tracked_02_AA_F",                              //ZSU-35 Tigris
  "O_MBT_02_arty_F",                              //2S9 Sochor
  "O_MBT_02_cannon_F",                            //T100 Black Eagle
  "O_MBT_04_cannon_F",                        //T-140 Angara
  "O_MBT_04_command_F">
  

//Helicopters

<#define OPFOR_VEHICLES_HELI|
  "O_Heli_Transport_04_bench_F",                       //Mi-290 Taru (Bench)
  "O_Heli_Light_02_dynamicLoadout_F",                        //Ka-60 Kasatka
  "O_Heli_Attack_02_dynamicLoadout_F">                  //Mi-48 Kajman

//Jets

<#define OPFOR_VEHICLES_JET|
  "O_Plane_Fighter_02_F",                          //To-201 Shikra
  "O_Plane_CAS_02_dynamicLoadout_F">              //Yak-130

<#define OPFOR_STATICS|
  "O_static_AA_F",
  "O_static_AT_F",
  "O_Mortar_01_F",
  "O_GMG_01_high_F">
  

//Troop transports, include both air and ground troop transports

<#define OPFOR_TROOPTRANSPORT|
  "O_Truck_03_transport_F",                       //Typhoon Transport
  "O_Truck_03_covered_F",                          //Typhoon Transport (Covered)
  "O_APC_Tracked_02_cannon_F",                          //BM-2T Stalker
  "O_Heli_Transport_04_bench_F",                         //Mi-290 Taru
  "O_Truck_02_transport-F">                       //KamAZ Transport
  
//Independent faction that shows up in small outposts and towns at low intensity, you can always set these to the same as OPFOR units if you don't want
//to use a third faction

<#define INDFOR_UNIT_SQL|"I_G_Soldier_SL_F">                  // Squadleader
<#define INDFOR_UNIT_FTL|"I_G_Soldier_F">              // Fireteam Leader
<#define INDFOR_UNIT_OFFICER|"I_G_officer_F">              // Officer
<#define INDFOR_UNIT_RIFLEMAN|"I_G_Soldier_F">           // Rifleman
<#define INDFOR_UNIT_GRENADIER|"I_G_Soldier_LAT_F">          // Grenadier
<#define INDFOR_UNIT_AUTORIFLEMAN|"I_G_Soldier_M_F">       // Autorifleman (LMG)
<#define INDFOR_UNIT_MEDIC|"I_G_medic_F">            // Medic
<#define INDFOR_UNIT_MARKSMAN|"">                               // Marksman
<#define INDFOR_UNIT_ENGINEER|"I_G_engineer_F">           // Engineer
<#define INDFOR_UNIT_LAT|"I_G_Soldier_LAT_F">                // Light AT
<#define INDFOR_UNIT_HAT|"">                                    // Dedicated AT
<#define INDFOR_UNIT_AA|"I_G_Soldier_F">               // Anti Air
<#define INDFOR_UNIT_MMG|"I_G_Soldier_M_F">              // Medium Machine Gunner
<#define INDFOR_UNIT_SNIPER|"I_G_Soldier_F">             // Sniper
<#define INDFOR_UNIT_SHARPSHOOTER|"">                           // Sharpshooter
<#define INDFOR_UNIT_CREWMAN|"">                                // Crewman
<#define INDFOR_UNIT_PILOT|"">                                  // Jet Pilot
<#define INDFOR_UNIT_HELIPILOT|"">                              // Helicopter Pilot
<#define INDFOR_UNIT_PARATROOPER|""> // Paratrooper

<#define INDFOR_VEHICLES|
  "I_G_Offroad_01_armed_F",                                     //Offroad HMG
  "I_G_Offroad_01_AT_F",                                        //Offroad AT
  "I_G_Van_02_transport_F">                                     //Van Transport
  

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