waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "save_is_loaded" };

firstloop = true;
HELO_TRANSPORT = objNull;
_savedhuron = objNull;

while { true } do {

	// Check if the Helicopter is loaded from a save.
	{if ( typeof _x == huron_typename ) then {_savedhuron = _x;};} foreach vehicles;

	if ( firstloop && !isNull _savedhuron ) then {
		HELO_TRANSPORT = _savedhuron;
	} else {
		HELO_TRANSPORT = huron_typename createVehicle ( getpos huronspawn );
		HELO_TRANSPORT setpos ( getpos huronspawn );
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
