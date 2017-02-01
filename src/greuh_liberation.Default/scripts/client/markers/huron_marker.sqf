private [ "_huronlocal" ];

while { true } do {
	_huronlocal = [] call F_spartanScan;
	if ( !( isNull _huronlocal) ) then {
		"HELO_MAPMARKER" setmarkerposlocal (getpos _huronlocal);
	} else {
		"HELO_MAPMARKER" setmarkerposlocal markers_reset;
	};
	sleep 4.9;
};
