// target is a magic var passed from ace interact
private _onFinish = {
	params ["_args"];
	_args params ["", "_target"];
	_target remoteExecCall ["prisonner_remote_call", 2];
};

private _onFail = {
	params ["_args"];
	_args params ["", "_target"];
	_target setVariable ["fpc_interrogated", false, true];
};

private _condition = {
	params ["_args"];
	_args params ["_plr", "_target"];
	_plr == ACE_player && {_x getVariable ["ACE_isUnconscious", false]} count _args == 0 && {_plr distance _target < 4}
};

_target setVariable ["fpc_interrogated", true, true];
[30, [ACE_player, _target], _onFinish, _onFail, "Interrogating", _condition] call ace_common_fnc_progressBar;