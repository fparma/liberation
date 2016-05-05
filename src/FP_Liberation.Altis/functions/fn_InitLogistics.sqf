if (!isDedicated && hasInterface) then {
  {
    [_vehicle, true, 1] call ace_cargo_fnc_makeLoadable;
    [_vehicle, true, [0,2,0], 0] call ace_dragging_fnc_setDraggable;
    [_vehicle, true, [0,2,1], 0] call ace_dragging_fnc_setCarryable;
  } forEach (allMissionObjects "Static");
};
