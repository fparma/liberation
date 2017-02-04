ACE_player setUnitLoadout (ACE_player getVariable ["Saved_Loadout",[]]);

if (firstload) then {
  removeAllWeapons ACE_player;
  removeAllItems ACE_player;
  removeAllAssignedItems ACE_player;
  removeUniform ACE_player;
  removeVest ACE_player;
  removeBackpack ACE_player;
  removeHeadgear ACE_player;
  removeGoggles ACE_player;
  ACE_player forceAddUniform "U_B_T_Soldier_SL_F";
  ACE_player addHeadgear "H_HelmetB_tna_F";
  ACE_player addVest "V_Chestrig_rgr";
  ACE_player linkItem "ItemMap";
  ACE_player linkItem "ItemCompass";
  ACE_player linkItem "ItemWatch";
  firstload = false;
};

[] spawn FPC_fnc_show_redeploy_dialog;