build_confirmed = 0;
enableSaving [ false, false ];

[] call compileFinal preprocessFileLineNumbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_sectors.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "gameplay_constants.sqf";

selectedFactionParam = "SelectedFaction" call BIS_fnc_getParamValue;

classNamesFile = format ["factions\classnames%1.sqf", selectedFactionParam];

GRLIB_save_key = format ["COMFY_LIBERATION_%1_%2", worldName, selectedFactionParam];

[] call compileFinal preprocessFileLineNumbers classNamesFile;

[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
  setTimeMultiplier (["DayDuration",4] call bis_fnc_getParamValue);
  [] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && hasInterface) then {
  waitUntil { alive player };
  [] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
};

[] spawn FPC_fnc_initWeather;

disableRemoteSensors true;

// Set ACE Vars for Max Dragging and Carrying Weight.
missionNamespace setVariable ["ACE_maxWeightDrag", 8000];
missionNamespace setVariable ["ACE_maxWeightCarry", 8000];