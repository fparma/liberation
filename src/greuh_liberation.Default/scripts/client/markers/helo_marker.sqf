private [ "_helo" ];

while { true } do {
  _helo = [] call F_spartanScan;
  if ( !( isNull _helo) ) then {
    "HELO_MAPMARKER" setmarkerposlocal (getpos _helo);
  } else {
    "HELO_MAPMARKER" setmarkerposlocal markers_reset;
  };
  sleep 5;
};
