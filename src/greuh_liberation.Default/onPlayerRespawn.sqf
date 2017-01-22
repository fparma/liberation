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
  ACE_player forceAddUniform "usm_bdu_w";
  ACE_player addHeadgear "usm_helmet_pasgt_w";
  ACE_player addVest "usm_vest_rba_lbe_rm";
  ACE_player linkItem "ItemMap";
  ACE_player linkItem "ItemCompass";
  ACE_player linkItem "ItemWatch";
  firstload = false;
};

[] spawn FPC_fnc_show_redeploy_dialog;