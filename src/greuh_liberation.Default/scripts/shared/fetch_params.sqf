GRLIB_difficulty_modifier =   ["Difficulty",1] call bis_fnc_getParamValue;
GRLIB_resources_multiplier =  ["ResourcesMultiplier",1] call bis_fnc_getParamValue;
GRLIB_unitcap =               ["Unitcap",1] call bis_fnc_getParamValue;
GRLIB_adaptive_opfor =        ["AdaptToPlayercount",1] call bis_fnc_getParamValue;
GRLIB_civilian_activity =     ["civilians",1] call bis_fnc_getParamValue;
GRLIB_build_first_fob =       ["FirstFob",0] call bis_fnc_getParamValue;
GRLIB_passive_income =        ["PassiveIncome",0] call bis_fnc_getParamValue;
GRLIB_permissions_param =     ["Permissions",1] call bis_fnc_getParamValue;
GRLIB_cleanup_vehicles =      ["CleanupVehicles",2] call bis_fnc_getParamValue;
GRLIB_csat_aggressivity =     ["Aggressivity",1] call bis_fnc_getParamValue;
GRLIB_ammo_bounties =         ["AmmoBounties",0] call bis_fnc_getParamValue;
GRLIB_civ_penalties =         ["CivPenalties",0] call bis_fnc_getParamValue;
GRLIB_blufor_defenders =      ["BluforDefenders",1] call bis_fnc_getParamValue;
GRLIB_maximum_fobs =          ["MaximumFobs",26] call bis_fnc_getParamValue;
GRLIB_max_squad_size =        ["MaxSquadSize",10] call bis_fnc_getParamValue;

if ( GRLIB_build_first_fob == 1 ) then { GRLIB_build_first_fob = true } else { GRLIB_build_first_fob = false };
if ( GRLIB_adaptive_opfor == 1 ) then { GRLIB_adaptive_opfor = true } else { GRLIB_adaptive_opfor = false };
if ( GRLIB_passive_income == 1 ) then { GRLIB_passive_income = true } else { GRLIB_passive_income = false };
if ( GRLIB_permissions_param == 1 ) then { GRLIB_permissions_param = true } else { GRLIB_permissions_param = false };
if ( GRLIB_ammo_bounties == 1 ) then { GRLIB_ammo_bounties = true } else { GRLIB_ammo_bounties = false };
if ( GRLIB_civ_penalties == 1 ) then { GRLIB_civ_penalties = true } else { GRLIB_civ_penalties = false };
if ( GRLIB_blufor_defenders == 1 ) then { GRLIB_blufor_defenders = true } else { GRLIB_blufor_defenders = false };