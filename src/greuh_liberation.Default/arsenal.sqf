<#define ARSENAL_WHITELIST_WEAPONS|
  "rhs_weap_m4a1_carryhandle_m203S",
  "rhs_weap_m4a1_carryhandle_pmag",
  "CUP_lmg_m249_pip1",
  "hlc_lmg_mg42kws_b",
  "CUP_launch_Javelin",
  "CUP_launch_Mk153Mod0",
  "CUP_launch_M136",
  "CUP_launch_FIM92Stinger",
  "RH_m9",
  "RH_g19",
  "ACE_VMM3",
  "ACE_VMH3",
  "RH_m1911",
  "srifle_DMR_02_F",
  "srifle_DMR_06_olive_F">
<#define ARSENAL_WHITELIST_MAGAZINES|
  "hlc_30rnd_556x45_SOST",
  "hlc_30rnd_556x45_SPR",
  "hlc_200rnd_556x45_T_SAW",
  "hlc_200rnd_556x45_B_SAW",
  "hlc_200rnd_556x45_M_SAW",
  "hlc_200Rnd_792x57_T_MG42",
  "hlc_200Rnd_792x57_B_MG42",
  "CUP_Javelin_M",
  "CUP_SMAW_HEAA_M",
  "CUP_SMAW_HEDP_M",
  "ACE_PreloadedMissileDummy_CUP",
  "CUP_Stinger_M",
  "RH_15Rnd_9x19_M9",
  "RH_17Rnd_9x19_g17",
  "RH_7Rnd_45cal_m1911",
  "10Rnd_338_Mag",
  "ACE_10Rnd_338_API526_Mag",
  "ACE_10Rnd_338_300gr_HPBT_Mag",
  "20Rnd_762x51_Mag",
  "CUP_1Rnd_HEDP_M203",
  "CUP_1Rnd_HE_M203",
  "CUP_1Rnd_StarFlare_Red_M203",
  "1Rnd_SmokeRed_Grenade_shell",
  "1Rnd_Smoke_Grenade_shell",
  "HandGrenade",
  "ACE_M84",
  "SmokeShellRed",
  "SmokeShell",
  "DemoCharge_Remote_Mag",
  "ATMine_Range_Mag",
  "SatchelCharge_Remote_Mag">
<#define ARSENAL_WHITELIST_UNIFORMS|
  "FP_U_B_CombatUniform_WDL",
  "FP_U_B_CombatUniform_WDL_Sleeves",
  "U_B_PilotCoveralls",
  "FP_U_B_CombatUniform_Sage_Sleeves">
<#define ARSENAL_WHITELIST_VESTS|
  "V_PlateCarrier1_rgr",
  "V_PlateCarrier2_rgr",
  "usm_vest_rba_lbe_gr",
  "usm_vest_rba_lbv_gr",
  "usm_vest_rba_lbv_mg",
  "usm_vest_rba_lbe_rm",
  "usm_vest_rba_lbv_rmp">
<#define ARSENAL_WHITELIST_BACKPACKS|
  "B_AssaultPack_rgr",
  "B_Carryall_oli",
  "B_FieldPack_oli",
  "ace_gunbag",
  "B_Kitbag_rgr",
  "ACE_TacticalLadder_Pack",
  "B_Parachute">
<#define ARSENAL_WHITELIST_HELMETS|
  "H_Bandanna_sgg",
  "H_Watchcap_camo",
  "H_Booniehat_oli",
  "H_HelmetCrew_B",
  "H_PilotHelmetHeli_B",
  "FP_Helmet_M81",
  "usm_helmet_pasgt_w",
  "usm_bdu_8point_wdl">
<#define ARSENAL_WHITELIST_MASKS|
  "G_Aviator",
  "G_Balaclava_blk",
  "G_Combat">
<#define ARSENAL_WHITELIST_NV|
  "CUP_NVG_PVS7",
  "ACE_NVG_Gen2">
<#define ARSENAL_WHITELIST_BINOC|
  <#include arsenal/whitelist-ace-binocs.h>
  "Binocular">
<#define ARSENAL_WHITELIST_ITEMS|
  <#include arsenal/whitelist-ace-items.h>
  <#include arsenal/whitelist-acre-items.h>
  "ItemMap",
  "ItemGPS",
  "ItemRadio",
  "ItemCompass",
  "ItemWatch",
  "MineDetector",
  "ToolKit">
<#define ARSENAL_WHITELIST_ACCS|
  "RH_barska_rds",
  "optic_DMS",
  "CUP_optic_Elcan_reflex",
  "RH_eotech553",
  "optic_KHS_blk",
  "RH_LTdocter",
  "RH_leu_mk4",
  "optic_LRPS",
  "rhsusf_acc_ELCAN",
  "rhsusf_acc_elcan_3d",
  "rhsusf_acc_ACOG",
  "rhsusf_acc_ACOG_3d",
  "rhsusf_acc_eotech_552",
  "rhsusf_acc_compm4",
  "optic_Hamr",
  "rhsusf_acc_SpecterDR",
  "rhsusf_acc_SpecterDR_3d",
  "RH_reflex",
  "ACE_acc_pointer_green",
  "acc_pointer_IR",
  "RH_SFM952V",
  "rhsusf_acc_grip2",
  "rhsusf_acc_grip1",
  "RH_HBLM",
  "bipod_01_F_blk">
<#define ARSENAL_WHITELIST_ITEMS_CATEGORY|<#ARSENAL_WHITELIST_UNIFORMS><#ARSENAL_WHITELIST_VESTS><#ARSENAL_WHITELIST_HELMETS><#ARSENAL_WHITELIST_MASKS><#ARSENAL_WHITELIST_NV><#ARSENAL_WHITELIST_BINOC><#ARSENAL_WHITELIST_ITEMS><#ARSENAL_WHITELIST_ACCS>>
[ missionNamespace, <#ARSENAL_WHITELIST_WEAPONS>, true] call BIS_fnc_addVirtualWeaponCargo;
[ missionNamespace, <#ARSENAL_WHITELIST_MAGAZINES>, true] call BIS_fnc_addVirtualMagazineCargo;
[ missionNamespace, <#ARSENAL_WHITELIST_BACKPACKS>, true] call BIS_fnc_addVirtualBackpackCargo;
[ missionNamespace, <#ARSENAL_WHITELIST_ITEMS_CATEGORY>, true] call BIS_fnc_addVirtualItemCargo;
