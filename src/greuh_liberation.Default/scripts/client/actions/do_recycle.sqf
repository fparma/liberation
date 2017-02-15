params [ "_vehtorecycle" ];
private [ "_objectinfo", "_cfg", "_dialog" ];

_objectinfo = ( [ (light_vehicles + heavy_vehicles + air_vehicles + static_vehicles + support_vehicles + buildings ), { typeof _vehtorecycle == _x select 0 } ] call BIS_fnc_conditionalSelect ) select 0;
dorecycle = 0;

_cfg = configFile >> "cfgVehicles";
_dialog = createDialog "liberation_recycle";
waitUntil { dialog };

// Special Condition for Static Weapon if Arsenal is Full in order to prevent infinite ammo resource exploit
private _ammo_amount = round ((_objectinfo select 2) * GRLIB_recycling_percentage);
if (ARSENAL_ISFULL) then {
  {
    if (_vehtorecycle isKindOf (_x select 0)) then {
      _ammo_amount = 0;
    }
  } forEach static_vehicles;
};

ctrlSetText [ 134, format [ localize "STR_RECYCLING_YIELD", getText (_cfg >> (_objectinfo select 0) >> "displayName" ) ] ];
ctrlSetText [ 131, format [ "%1", round (_objectinfo select 1) ] ];
ctrlSetText [ 132, format [ "%1", _ammo_amount ] ];
ctrlSetText [ 133, format [ "%1", round ( _objectinfo select 3) ] ];

while { dialog && (alive player) && dorecycle == 0 } do {
  sleep 0.1;
};

if ( dialog ) then { closeDialog 0 };

if ( dorecycle == 1 && !(isnull _vehtorecycle) && alive _vehtorecycle) then {
  [ [ _vehtorecycle, _ammo_amount ] , "recycle_remote_call" ] call BIS_fnc_MP;
};