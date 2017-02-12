build_confirmed = 0;
enableSaving [ false, false ];

[] call compileFinal preprocessFileLineNumbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_sectors.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "gameplay_constants.sqf";
[] call compileFinal preprocessFileLineNumbers "classnames.sqf";
[] call compileFinal preprocessFileLineNumbers "custom.sqf";

// Start limiting of Arsenal Assets
ARSENAL_ISFULL = true;
if ((["ArsenalLimitation",1] call bis_fnc_getParamValue) == 1) then {
  ARSENAL_ISFULL = false;
  [] call compileFinal preprocessFileLineNumbers "arsenal.sqf";
};

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
