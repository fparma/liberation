params [ "_unit", ["_force_surrender", false] ];

if ( (!_force_surrender) && (( random 100 ) > GRLIB_surrender_chance) ) exitWith {};

if ( (_unit isKindOf "Man") && ( alive _unit ) && (side group _unit == GRLIB_side_enemy) ) then {
  if ( vehicle _unit != _unit ) then { deleteVehicle _unit };
  sleep (random 5);

  if ( alive _unit ) then {
    [_unit, true] remoteExecCall ["ace_captives_fnc_setSurrendered", _unit];
  };
};