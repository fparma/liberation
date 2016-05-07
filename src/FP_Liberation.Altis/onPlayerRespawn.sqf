if (isNil "GRLIB_respawn_loadout") then {
  removeAllWeapons player;
  player linkItem "NVGoggles";
} else {
  sleep 4;
  [player, GRLIB_respawn_loadout] call F_setLoadout;
};

{
  [_x, true, 1] call ace_cargo_fnc_makeLoadable;
  [_x, true, [0,2,0], 0] call ace_dragging_fnc_setDraggable;
  [_x, true, [0,2,1], 0] call ace_dragging_fnc_setCarryable;
} forEach (allMissionObjects "Static");

{
  [_x, true, 1] call ace_cargo_fnc_makeLoadable;
} forEach (allMissionObjects "ReammoBox_F");
