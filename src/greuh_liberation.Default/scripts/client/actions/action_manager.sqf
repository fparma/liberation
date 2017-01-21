GRLIB_removefobboxes = false;

waitUntil { !isNil "build_confirmed" };
waitUntil { !isNil "one_synchro_done" };
waitUntil { one_synchro_done };

while { true } do {

	_nearfobbox = ( (getpos player) nearEntities [ [ FOB_box_typename, FOB_truck_typename ] , 10 ] );
	if ( GRLIB_removefobboxes ) then {
		GRLIB_removefobboxes = false;
		if ( count _nearfobbox > 0 ) then {
			deletevehicle (_nearfobbox select 0);
		};
	};

	sleep 5;
};
