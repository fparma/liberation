if ( isNil "GRLIB_respawn_loadout" ) then {
	removeAllWeapons player;
	player linkItem "NVGoggles";
} else {
	sleep 4;
	[ player, GRLIB_respawn_loadout ] call F_setLoadout;
};

player addAction ["<t color='#FF8000'>Extended Options</t>","GREUH\scripts\GREUH_dialog.sqf","",-999,false,true];