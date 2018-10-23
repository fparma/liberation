player addEventHandler ["HandleRating", {abs (_this select 1);}];

["ace_arsenal_displayClosed", {
[{
  profileNamespace setVariable [format ['%1_fpcGear', GRLIB_save_key], getUnitLoadout player];
  saveProfileNamespace;
}] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;

// Start limiting of Arsenal Assets
selectedFactionParam = "SelectedFaction" call BIS_fnc_getParamValue;
ARSENAL_ISFULL = true;
if ((["ArsenalLimitation",1] call bis_fnc_getParamValue) == 1) then {
	selectedFactionArsenal = format ["factions\arsenal%1.sqf", selectedFactionParam];
  ARSENAL_ISFULL = false;
  [] call compileFinal preprocessFileLineNumbers selectedFactionArsenal;
};

// Liberation ACE Actions
[ACE_player, 1, ["ACE_SelfActions"], ['FPC_INTERACTION_ROOT','Liberation','',{},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_ARSENAL','Open Arsenal','\z\ace\addons\common\UI\repack_ca.paa',{[{[player, player, ARSENAL_ISFULL] call ace_arsenal_fnc_openBox;}] call CBA_fnc_execNextFrame;},{[] call FPC_fnc_arsenalCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_REDEPLOY','Redeploy','',{[] spawn FPC_fnc_show_redeploy_dialog;},{[] call FPC_fnc_redeployCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_BUILD_MENU','Build Menu','',{[] execVM "scripts\client\build\open_build_menu.sqf";},{[] call FPC_fnc_buildMenuCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_DEPLOY_FOB','Build FOB','',{[] execVM "scripts\client\build\do_build_fob.sqf";},{[] call FPC_fnc_deployFobCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_SQUAD_MANAGEMENT','Squad Management','',{[] execVM "scripts\client\ui\squad_management.sqf";},{[] call FPC_fnc_squadManagementCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_PERMISSION','Permissions','',{[] execVM "scripts\client\commander\open_permissions.sqf";},{[] call FPC_fnc_permissionCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_REPACKAGE','Repackage FOB','',{[] execVM "scripts\client\actions\do_repackage_fob.sqf";},{[] call FPC_fnc_repackageCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_INTERACTION_SECONDARY','Secondary Objectives','',{[] execVM "scripts\client\ui\secondary_ui.sqf";},{[] call FPC_fnc_secondaryObjectiveCondition;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Advanced Slingloading ACE Actions
[ACE_player, 1, ["ACE_SelfActions"], ['FPC_SLINGLOADING_ROOT','Slingloading','\z\ace\addons\fastroping\UI\Icon_Waypoint.paa',{},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Deploy','Deploy Cargo Ropes','',{[] call ASL_Deploy_Ropes_Action;},{call ASL_Deploy_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Attach','Attach Cargo Ropes','',{[] call ASL_Attach_Ropes_Action;},{call ASL_Attach_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Drop','Drop Cargo Ropes','',{[] call ASL_Drop_Ropes_Action;},{[] call ASL_Can_Drop_Ropes;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Pickup','Pickup Cargo Ropes','',{[] call ASL_Pickup_Ropes_Action;},{call ASL_Can_Pickup_Ropes;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Extend','Extend Cargo Ropes','',{[] call ASL_Extend_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Extend_Ropes;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Shorten','Shorten Cargo Ropes','',{[] call ASL_Shorten_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Shorten_Ropes;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Release','Release Cargo','',{[] call ASL_Release_Cargo_Action;},{[vehicle ACE_player] call ASL_Can_Release_Cargo;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_SLINGLOADING_ROOT"], ['FP_Slingloading_Retract','Retract Cargo Ropes','',{[] call ASL_Retract_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Retract_Ropes;}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// Liberation ACE Helper Actions
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT"], ['FPC_HELPERS_ROOT','Helpers','res\icon-questionmark.paa',{},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT", "FPC_HELPERS_ROOT"], ['FPC_HELPERS_INITACELOGI','Reinit Logistics Actions for objects around player','',{[true] call FPC_fnc_initLogisticsInRange;},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
[ACE_player, 1, ["ACE_SelfActions", "FPC_INTERACTION_ROOT", "FPC_HELPERS_ROOT"], ['FPC_HELPERS_RESETLIBMENU','Reinit Liberation Menu','',{build_confirmed=0;},{true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;
// Interrogate
_targetRoot = ["FPC_TARGET_ROOT","Liberation","",{},{true}] call ace_interact_menu_fnc_createAction;
["CAManBase", 0, ["ACE_MainActions"], _targetRoot, true] call ace_interact_menu_fnc_addActionToClass;

_interrogateAction = ["FPC_TARGET_INTERROGATE","Interrogate","", FPC_fnc_interrogate, FPC_fnc_interrogateCondition] call ace_interact_menu_fnc_createAction;
["CAManBase", 0, ["ACE_MainActions", "FPC_TARGET_ROOT"], _interrogateAction, true] call ace_interact_menu_fnc_addActionToClass;
