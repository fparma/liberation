private _stringarray = [];
{ _stringarray pushBack (_x select 0); } forEach buildings;

private _objects = nearestObjects [ACE_player, _stringarray, 100];
{
  [_x, true, 1] call ace_cargo_fnc_makeLoadable;
  [_x, true, [0,3,1], 0] call ace_dragging_fnc_setCarryable;
  [_x, true, [0,3,0], 0] call ace_dragging_fnc_setDraggable;
} forEach _objects;

(_this select 0) spawn {
  if (_this) then {
    hintC "Initialized ACE Logistics Actions for Building Objects around player within 100 meters.";
  };
};