// target is a magic var passed from ace interact
alive _target 
&&
{side group _target == GRLIB_side_enemy}
&&
{_target getVariable ["ace_captives_isHandcuffed", false] || _target getVariable ["ace_captives_isSurrendering", false]}
&&
{!(_target getVariable ["fpc_interrogated", false])}
&&
{call FPC_fnc_getFobDistance < 80}