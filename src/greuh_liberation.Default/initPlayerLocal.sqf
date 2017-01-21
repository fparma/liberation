// ACE Interation Root
_FPC_Interact_Root = ['FPC_INTERACTION_ROOT','Liberation','',{},{true}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions"], _FPC_Interact_Root] call ace_interact_menu_fnc_addActionToObject;

// Arsenal Handling
_FPC_Interact_Arsenal = ['FPC_INTERACTION_ARSENAL','Open Arsenal','\z\ace\addons\magazinerepack\UI\repack_ca.paa',{[] call FPC_fnc_openArsenal;},{[] call FPC_fnc_arsenalCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_Arsenal] call ace_interact_menu_fnc_addActionToObject;

// Redeploy
_FPC_Interact_Redeploy = ['FPC_INTERACTION_REDEPLOY','Redeploy','',{GRLIB_force_redeploy = true;},{[] call FPC_fnc_redeployCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_Redeploy] call ace_interact_menu_fnc_addActionToObject;