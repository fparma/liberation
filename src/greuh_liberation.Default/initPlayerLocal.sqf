// ACE Interation Root
[ACE_player, 1, ["ACE_SelfActions"], ['FPC_INTERACTION_ROOT','Liberation','',{},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Arsenal Handling
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_ARSENAL','Open Arsenal','\z\ace\addons\magazinerepack\UI\repack_ca.paa',{[] call FPC_fnc_openArsenal;},{[] call FPC_fnc_arsenalCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Redeploy
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_REDEPLOY','Redeploy','',{[] spawn FPC_fnc_show_redeploy_dialog;},{[] call FPC_fnc_redeployCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Build Menu
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_BUILD_MENU','Build Menu','',{[] execVM "scripts\client\build\open_build_menu.sqf";},{[] call FPC_fnc_buildMenuCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Deploy FOB
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_DEPLOY_FOB','Build FOB','',{[] execVM "scripts\client\build\do_build_fob.sqf";},{[] call FPC_fnc_deployFobCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Squad Management
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_SQUAD_MANAGEMENT','Squad Management','',{[] execVM "scripts\client\ui\squad_management.sqf";},{[] call FPC_fnc_squadManagementCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Permission Management
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_PERMISSION','Permissions','',{[] execVM "scripts\client\commander\open_permissions.sqf";},{[] call FPC_fnc_permissionCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Repackage FOB
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_REPACKAGE','Repackage FOB','',{[] execVM "scripts\client\actions\do_repackage_fob.sqf";},{[] call FPC_fnc_repackageCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Secondary Objectives
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_SECONDARY','Secondary Objectives','',{[] execVM "scripts\client\ui\secondary_ui.sqf";},{[] call FPC_fnc_secondaryObjectiveCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;