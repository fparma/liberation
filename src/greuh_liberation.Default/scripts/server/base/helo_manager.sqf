waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "save_is_loaded" };

firstloop = true;
HELO_TRANSPORT = objNull;
private _savedhelo = objNull;

while { true } do {

  // Check if the Helicopter is loaded from a save.
  {if ( typeof _x == HELO_CLASSNAME ) then {_savedhelo = _x;};} foreach vehicles;

  if ( firstloop && !isNull _savedhelo ) then {
    HELO_TRANSPORT = _savedhelo;
  } else {
    HELO_TRANSPORT = HELO_CLASSNAME createVehicle ( getpos HELO_SPAWNMARKER );
    HELO_TRANSPORT setpos ( getpos HELO_SPAWNMARKER );
    HELO_TRANSPORT setDir 0;
  };

  firstloop = false;

  publicVariable "HELO_TRANSPORT";
  clearWeaponCargoGlobal HELO_TRANSPORT;
  clearMagazineCargoGlobal HELO_TRANSPORT;
  clearItemCargoGlobal HELO_TRANSPORT;
  clearBackpackCargoGlobal HELO_TRANSPORT;

  if ( alive HELO_TRANSPORT ) then {
    waitUntil {sleep 1;!alive HELO_TRANSPORT;};
    sleep 15;
    deleteVehicle HELO_TRANSPORT;
  };
};
