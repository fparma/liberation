
private _defenders_amount = 15 * ( sqrt ( GRLIB_unitcap ) );
if ( _defenders_amount > 15 ) then { _defenders_amount = 15 };
private _fob_templates = [
"scripts\fob_templates\template5.sqf",
"scripts\fob_templates\template4.sqf",
"scripts\fob_templates\template3.sqf",
"scripts\fob_templates\template2.sqf",
"scripts\fob_templates\template1.sqf"
];

private _spawn_marker = [2000,999999,false] call F_findOpforSpawnPoint;
if ( _spawn_marker == "" ) exitWith { diag_log "Could not find position for fob hunting mission"; };

//Selects spawn point for FOB

used_positions = used_positions + [ _spawn_marker ];
private _base_position = markerpos _spawn_marker;
private _base_objects = [];
private _base_objectives = [];
private _template = ([] call (compile preprocessFileLineNumbers ( _fob_templates call bis_fnc_selectrandom )));

private _objects_to_build = _template select 0;
private _objectives_to_build = _template select 1;
private _defenders_to_build = _template select 2;
private _base_corners = _template select 3;

{
private  _nextclass = _x select 0;
private  _nextpos = _x select 1;
  _nextpos = [((_base_position select 0) + (_nextpos select 0)),((_base_position select 1) + (_nextpos select 1)),0];
private  _nextdir = _x select 2;

private   _nextobject = _nextclass createVehicle _nextpos;
  _nextobject setVectorUp [0,0,1];
  _nextobject setpos _nextpos;
  _nextobject setdir _nextdir;
  _nextobject setVectorUp [0,0,1];
  _nextobject setpos _nextpos;
  _nextobject setdir _nextdir;
  _base_objects = _base_objects + [_nextobject];

} foreach _objects_to_build;

sleep 1;

{
private   _nextclass = _x select 0;
private  _nextpos = _x select 1;
  _nextpos = [((_base_position select 0) + (_nextpos select 0)),((_base_position select 1) + (_nextpos select 1)),0.5];
private  _nextdir = _x select 2;

private  _nextobject = _nextclass createVehicle [(_nextpos select 0) + (random 500),(_nextpos select 1) + (random 500),0.5];
  _nextobject setVectorUp [0,0,1];
  _nextobject setpos _nextpos;
  _nextobject setdir _nextdir;
  _nextobject setVectorUp [0,0,1];
  _nextobject setpos _nextpos;
  _nextobject setdir _nextdir;
  _nextobject lock 2;

  _base_objectives = _base_objectives + [_nextobject];
} foreach _objectives_to_build;

sleep 1;

{ _x setDamage 0; } foreach (_base_objectives + _base_objects);

private _grpdefenders = createGroup GRLIB_side_enemy;
private _idxselected = [];
while { count _idxselected < _defenders_amount } do {
private  _idx = floor (random (count _defenders_to_build));
  if ( !(_idx in _idxselected) ) then {
    _idxselected pushback _idx;
  };
};

{
private  _nextentry = _defenders_to_build select _x;
private  _nextclass = _nextentry select 0;
private  _nextpos = _nextentry select 1;
  _nextpos = [((_base_position select 0) + (_nextpos select 0)),((_base_position select 1) + (_nextpos select 1)),(_nextpos select 2)];
private  _nextdir = _nextentry select 2;
  _nextclass createUnit [_nextpos, _grpdefenders,"nextdefender = this; this addMPEventHandler [""MPKilled"", {_this spawn kill_manager}]", 0.5, "private"];
  nextdefender setpos _nextpos;
  nextdefender setdir _nextdir;
  [nextdefender] spawn building_defence_ai;
} foreach _idxselected;

private _sentry = ceil ((3 + (floor (random 4))) * ( sqrt ( GRLIB_unitcap ) ) );

private _grpsentry = createGroup GRLIB_side_enemy;
private _base_sentry_pos = [(_base_position select 0) + ((_base_corners select 0) select 0), (_base_position select 1) + ((_base_corners select 0) select 1),0];
for [ {_idx=0},{_idx < _sentry},{_idx=_idx+1} ] do {
  opfor_sentry createUnit [_base_sentry_pos, _grpsentry,"this addMPEventHandler [""MPKilled"", {_this spawn kill_manager}]", 0.5, "private"];
};

while {(count (waypoints _grpsentry)) != 0} do {deleteWaypoint ((waypoints _grpsentry) select 0);};
{
private  _waypoint = _grpsentry addWaypoint [[((_base_position select 0) + (_x select 0)), ((_base_position select 1) + (_x select 1)),0], 0];
  _waypoint setWaypointType "MOVE";
  _waypoint setWaypointSpeed "LIMITED";
  _waypoint setWaypointBehaviour "SAFE";
  _waypoint setWaypointCompletionRadius 5;
} foreach _base_corners;

private _waypoint = _grpsentry addWaypoint [[(_base_position select 0) + ((_base_corners select 0) select 0), (_base_position select 1) + ((_base_corners select 0) select 1),0], 0];
_waypoint setWaypointType "CYCLE";

//Now that we've setup the FOB itself, generate some additional infantry and vehicles around the area

private _vehtospawn = [];
private _statictospawn = [];
private _managed_units = [];
private _squad1 = [];
private _squad2 = [];
private _squad3 = [];
private _squad4 = [];

_squad1 = ([] call F_getAdaptiveSquadComp);
_squad2 = ([] call F_getAdaptiveSquadComp);
if ( GRLIB_unitcap >= 1.5) then {
  _squad3 = ([] call F_getAdaptiveSquadComp);
};
if ( GRLIB_unitcap >= 2) then {
   _squad4 = ([] call F_getAdaptiveSquadComp);
};
_vehtospawn = [( [] call F_getAdaptiveVehicle ),( [] call F_getAdaptiveVehicle )];
if((random 100) > (25 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
if((random 100) > (50 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
if((random 100) > (75 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };

_statictospawn = [( [] call F_getAdaptiveStatic),( [] call F_getAdaptiveStatic )];
if((random 100) > (25 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveStatic ); };
if((random 100) > (50 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveStatic ); };
if((random 100) > (75 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveStatic ); };


  // Start to spawn the vehicles added to the _vehtospawn Array.
  {
    private _vehicle = [_base_position, _x] call F_libSpawnVehicle;
    [group ((crew _vehicle) select 0 ),_base_position] spawn add_defense_waypoints;
    _managed_units pushback _vehicle;
    { _managed_units pushback _x; } foreach (crew _vehicle);
    sleep 0.25;
  } foreach _vehtospawn;

  {
    private _static = [_base_position, _x, false, false, true, true] call F_libSpawnVehicle;
    _managed_units pushback _static;
    { _managed_units pushback _x; } foreach (crew _static);
    sleep 0.25;
  } foreach _statictospawn;

    // Spawn Squads and make them patrol the FOB.
  {
    if ( count _x > 0 ) then {
      private _grp = [ _spawn_marker, _x ] call F_spawnRegularSquad;
      [ _grp, _base_position ] spawn add_defense_waypoints;
      _managed_units = _managed_units + (units _grp);
    };
  } foreach [_squad1, _squad2, _squad3, _squad4];


secondary_objective_position = _base_position;
secondary_objective_position_marker = [(((secondary_objective_position select 0) + 800) - random 1600),(((secondary_objective_position select 1) + 800) - random 1600),0];
publicVariable "secondary_objective_position_marker";
sleep 1;
GRLIB_secondary_in_progress = 0; publicVariable "GRLIB_secondary_in_progress";
[ [ 2 ] , "remote_call_intel" ] call BIS_fnc_MP;


waitUntil {
  sleep 5;
   ( { alive _x } count _base_objectives ) <= 1
};

combat_readiness = round (combat_readiness * GRLIB_secondary_objective_impact);

sleep 3;

[ [ 3 ] , "remote_call_intel" ] call BIS_fnc_MP;

GRLIB_secondary_in_progress = -1; publicVariable "GRLIB_secondary_in_progress";