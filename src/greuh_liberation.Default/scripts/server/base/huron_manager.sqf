waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "save_is_loaded" };

firstloop = true;
huron = objNull;
_savedhuron = objNull;

while { true } do {

	{
		if ( typeof _x == huron_typename ) then {
			_savedhuron = _x;
		};
	} foreach vehicles;

	if ( firstloop && !isNull _savedhuron ) then {
		huron = _savedhuron;
	} else {
		huron = huron_typename createVehicle ( getpos huronspawn );
		huron allowdamage false;
		huron setpos ( getpos huronspawn );
		huron setDir 0;
	};

	firstloop = false;

	huron AnimateDoor ["Door_rear_source", 1, true];
	publicVariable "huron";
	clearWeaponCargoGlobal huron;
	clearMagazineCargoGlobal huron;
	clearItemCargoGlobal huron;
	clearBackpackCargoGlobal huron;
	huron setDamage 0;
	sleep 0.5;
	huron enableSimulationGlobal true;
	huron setDamage 0;
	sleep 1.5;

	huron setDamage 0;
	huron allowdamage true;

	if ( alive huron ) then {

		waitUntil {
			sleep 1;
			!alive huron;
		};
		sleep 15;

	};

	sleep 0.25;

};
