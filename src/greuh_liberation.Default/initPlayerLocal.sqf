// ACE Interation Root
_FPC_Interact_Root = ['FPC_INTERACTION_ROOT','Liberation','',{},{true}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions"], _FPC_Interact_Root] call ace_interact_menu_fnc_addActionToObject;

// Arsenal Handling
_FPC_Interact_Arsenal = ['FPC_INTERACTION_ARSENAL','Open Arsenal','\z\ace\addons\magazinerepack\UI\repack_ca.paa',{[] call FPC_fnc_openArsenal;},{[] call FPC_fnc_arsenalCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_Arsenal] call ace_interact_menu_fnc_addActionToObject;

// Redeploy
_FPC_Interact_Redeploy = ['FPC_INTERACTION_REDEPLOY','Redeploy','',{GRLIB_force_redeploy = true;},{[] call FPC_fnc_redeployCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_Redeploy] call ace_interact_menu_fnc_addActionToObject;

// Build Menu
_FPC_Interact_build_menu = ['FPC_INTERACTION_BUILD_MENU','Build Menu','',{[] execVM "scripts\client\build\open_build_menu.sqf";},{[] call FPC_fnc_buildMenuCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_build_menu] call ace_interact_menu_fnc_addActionToObject;

// Deploy FOB
_FPC_Interact_deploy_fob = ['FPC_INTERACTION_DEPLOY_FOB','Build FOB','',{[] execVM "scripts\client\build\do_build_fob.sqf";},{[] call FPC_fnc_deployFobCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_deploy_fob] call ace_interact_menu_fnc_addActionToObject;

// Squad Management
_FPC_Interact_squad_management = ['FPC_INTERACTION_SQUAD_MANAGEMENT','Squad Management','',{[] execVM "scripts\client\ui\squad_management.sqf";},{[] call FPC_fnc_squadManagementCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_squad_management] call ace_interact_menu_fnc_addActionToObject;

// Permission Management
_FPC_Interact_permissions = ['FPC_INTERACTION_PERMISSION','Permissions','',{[] execVM "scripts\client\commander\open_permissions.sqf";},{[] call FPC_fnc_permissionCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_permissions] call ace_interact_menu_fnc_addActionToObject;

// Repackage FOB
_FPC_Interact_repackage_fob = ['FPC_INTERACTION_REPACKAGE','Repackage FOB','',{[] execVM "scripts\client\actions\do_repackage_fob.sqf";},{[] call FPC_fnc_repackageCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_repackage_fob] call ace_interact_menu_fnc_addActionToObject;

// Secondary Objectives
_FPC_Interact_secondary_objectives = ['FPC_INTERACTION_SECONDARY','Secondary Objectives','',{[] execVM "scripts\client\ui\secondary_ui.sqf";},{[] call FPC_fnc_secondaryObjectiveCondition;}] call ace_interact_menu_fnc_createAction;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], _FPC_Interact_secondary_objectives] call ace_interact_menu_fnc_addActionToObject;