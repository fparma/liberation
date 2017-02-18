params [ "_sector" ];

waitUntil { !isNil "combat_readiness" };
private _sectorpos = getmarkerpos _sector;
private _stopit = false;
private _spawncivs = false;
private _building_ai_max = 0;
private _infsquad = "militia";
private _building_range = 50;
private _local_capture_size = GRLIB_capture_size;
private _iedcount = 0;
private _vehtospawn = [];
private _managed_units = [];
private _squad1 = [];
private _squad2 = [];
private _squad3 = [];
private _squad4 = [];
private _minimum_building_positions = 5;
private _sector_despawn_tickets = 12;

private _popfactor = 1;
if ( GRLIB_unitcap < 1 ) then { _popfactor = GRLIB_unitcap; };

if ( isNil "active_sectors" ) then { active_sectors = [] };
if ( _sector in active_sectors ) exitWith {};
active_sectors pushback _sector; publicVariable "active_sectors";

private _opforcount = [] call F_opforCap;
[ _sector, _opforcount ] call wait_to_spawn_sector;

if ( (!(_sector in blufor_sectors)) && ( ( [ getmarkerpos _sector , [ _opforcount ] call F_getCorrectedSectorRange , GRLIB_side_friendly ] call F_getUnitsCount ) > 0 ) ) then {

  //===================================================================
  // BIG TOWN SPAWN HANDLING
  //===================================================================
  if ( _sector in sectors_bigtown ) then {
    _vehtospawn =
    [ ( [] call F_getAdaptiveVehicle ) ,
    (militia_vehicles call BIS_fnc_selectRandom),
    (militia_vehicles call BIS_fnc_selectRandom)];
    _infsquad = "militia";
    _squad1 = ([] call F_getAdaptiveSquadComp);
    _squad2 = ([] call F_getAdaptiveSquadComp);
    if ( GRLIB_unitcap >= 1) then {
      _squad3 = ([] call F_getAdaptiveSquadComp);
    };
    if ( GRLIB_unitcap >= 1.5) then {
      _squad4 = ([] call F_getAdaptiveSquadComp);
    };
    if((random 100) > (66 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback (militia_vehicles call BIS_fnc_selectRandom); };
    if((random 100) > (50 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback (militia_vehicles call BIS_fnc_selectRandom); };
    if((random 100) > (33 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
    _spawncivs = true;

    _building_ai_max = round (50 * _popfactor) ;
    _building_range = 110;
    _local_capture_size = _local_capture_size * 1.4;
    _iedcount = (2 + (floor (random 4))) * GRLIB_difficulty_modifier;
    if ( _iedcount > 10 ) then { _iedcount = 10 };
  };

  //===================================================================
  // STANDARD SECTOR SPAWN HANDLING
  //===================================================================
  if ( _sector in sectors_capture ) then {
    _vehtospawn = [];
    _infsquad = "militia";
    while { count _squad1 < ( 10 * _popfactor) } do { _squad1 pushback ( militia_squad call BIS_fnc_selectRandom ) };
    if((random 100) > (66 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback (militia_vehicles call BIS_fnc_selectRandom); };
    if((random 100) > (33 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback (militia_vehicles call BIS_fnc_selectRandom); };
    _spawncivs = true;
    _building_ai_max = round ((floor (18 + (round (combat_readiness / 10 )))) * _popfactor);
    _building_range = 70;
    _iedcount = (floor (random 4)) * GRLIB_difficulty_modifier;
    if ( _iedcount > 7 ) then { _iedcount = 7 };
  };

  //===================================================================
  // MILITARY SECTOR SPAWN HANDLING
  //===================================================================
  if ( _sector in sectors_military ) then {
    _infsquad = "csat";
    _squadies_to_spawn = ([] call F_getAdaptiveSquadComp);
    _squad1 = ([] call F_getAdaptiveSquadComp);
    _squad2 = ([] call F_getAdaptiveSquadComp);
    if ( GRLIB_unitcap >= 1.5) then {
      _squad3 = ([] call F_getAdaptiveSquadComp);
    };
    if ( GRLIB_unitcap >= 2) then {
      _squad4 = ([] call F_getAdaptiveSquadComp);
    };
    _vehtospawn = [( [] call F_getAdaptiveVehicle ),( [] call F_getAdaptiveVehicle )];
    if((random 100) > (33 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
    if((random 100) > (66 / GRLIB_difficulty_modifier)) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
    _spawncivs = false;
    _building_ai_max = round ((floor (18 + (round (combat_readiness / 4 )))) * _popfactor);
    _building_range = 110;
  };

  //===================================================================
  // FACTORY SECTOR SPAWN HANDLING
  //===================================================================
  if ( _sector in sectors_factory ) then {
    _vehtospawn = [];
    _infsquad = "militia";
    _squad1 = ([] call F_getAdaptiveSquadComp);
    if ( GRLIB_unitcap >= 1.25) then {
      _squad2 = ([] call F_getAdaptiveSquadComp);
    };
    if((random 100) > 66) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
    if((random 100) > 33) then { _vehtospawn pushback (militia_vehicles call BIS_fnc_selectRandom); };
    _spawncivs = false;
    _building_ai_max = round ((floor (18 + (round (combat_readiness / 10 )))) * _popfactor);
    _building_range = 100;
    _iedcount = (floor (random 3)) * GRLIB_difficulty_modifier;
    if ( _iedcount > 5 ) then { _iedcount = 5 };
  };

  //===================================================================
  // RADIO TOWER SPAWN HANDLING
  //===================================================================
  if ( _sector in sectors_tower ) then {
    _spawncivs = false;
    _squad1 = ([] call F_getAdaptiveSquadComp);
    if ( GRLIB_unitcap >= 1.5) then {
      _squad2 = ([] call F_getAdaptiveSquadComp);
    };
    _building_ai_max = 0;
    if((random 100) > 50) then { _vehtospawn pushback ( [] call F_getAdaptiveVehicle ); };
  };

  //===================================================================
  //###################################################################
  // END OF SECTOR SPECIFIC SPAWN HANDLING
  //###################################################################
  //===================================================================

  // Adapt AI amount in Buildings to the current playercount (Unconfirmed)
  if ( _building_ai_max > 0 && GRLIB_adaptive_opfor ) then {
    _building_ai_max = round ( _building_ai_max * ([] call F_adaptiveOpforFactor));
  };

  // Start to spawn the vehicles added to the _vehtospawn Array.
  {
    _vehicle = [_sectorpos, _x] call F_libSpawnVehicle;
    [group ((crew _vehicle) select 0 ),_sectorpos] spawn add_defense_waypoints;
    _managed_units pushback _vehicle;
    { _managed_units pushback _x; } foreach (crew _vehicle);
    sleep 0.25;
  } foreach _vehtospawn;

  // Spawn AI in Buildings.
  if ( _building_ai_max > 0 ) then {
    _allbuildings = [ nearestObjects [_sectorpos, ["House"], _building_range ], { alive _x } ] call BIS_fnc_conditionalSelect;
    _buildingpositions = [];
    {
      _buildingpositions = _buildingpositions + ( [_x] call BIS_fnc_buildingPositions );
    } foreach _allbuildings;
    if ( count _buildingpositions > _minimum_building_positions ) then {
      _managed_units = _managed_units + ( [ _infsquad, _building_ai_max, _buildingpositions, _sectorpos, _sector ] call F_spawnBuildingSquad );
    };
  };

  _managed_units = _managed_units + ( [ _sectorpos ] call F_spawnMilitaryPostSquad );

  // Spawn Squads and make them patrol the sector.
  {
    if ( count _x > 0 ) then {
      _grp = [ _sector, _x ] call F_spawnRegularSquad;
      [ _grp, _sectorpos ] spawn add_defense_waypoints;
      _managed_units = _managed_units + (units _grp);
    };
  } foreach [_squad1, _squad2, _squad3, _squad4];

  // Spawn civilians in sector
  if ( _spawncivs && GRLIB_civilian_activity > 0) then {
    _managed_units = _managed_units + ( [ _sector ] call F_spawnCivilians );
  };

  // Spawn the IED's in the sector.
  [ _sector, _building_range, _iedcount ] spawn ied_manager;
  sleep 10;

  // If the sector is one of the following, add a chance for calling in enemy Reinforcements. (Requires 15% Combat readiness or higher):
  // * Factory
  // * Capture
  // * Big Town
  // * Military Base
  if ( ( _sector in sectors_factory ) || (_sector in sectors_capture ) || (_sector in sectors_bigtown ) || (_sector in sectors_military ) ) then {
    [ [ _sector ] , "reinforcements_remote_call" ] call BIS_fnc_MP;
  };

  while { !_stopit } do {
    // If Sector has been Liberated (From Opfor to Blufor)
    if ( ( [_sectorpos, _local_capture_size] call F_sectorOwnership == GRLIB_side_friendly ) && ( GRLIB_endgame == 0 ) ) then {
      if (isServer) then {
        [ _sector ] spawn sector_liberated_remote_call;
      } else {
        [ [ _sector ] , "sector_liberated_remote_call" ] call BIS_fnc_MP;
      };

      _stopit = true;

      { [_x] spawn prisonner_ai; } foreach ( (getmarkerpos _sector) nearEntities [ [ "Man" ], _local_capture_size * 1.2 ] );
      sleep 60;
      active_sectors = active_sectors - [ _sector ]; publicVariable "active_sectors";
      sleep 600;
      {
        if (_x isKindOf "Man") then {
          if ( side group _x != GRLIB_side_friendly ) then {
            deleteVehicle _x;
          };
        } else {
          [ _x ] call F_cleanOpforVehicle;
        };
      } foreach _managed_units;
    } else {
      // Sector has not been liberated yet.
      if ( ( [_sectorpos, ( ( [ _opforcount ] call F_getCorrectedSectorRange ) + 300 ), GRLIB_side_friendly ] call F_getUnitsCount ) == 0 ) then {
        _sector_despawn_tickets = _sector_despawn_tickets - 1;
      } else {
        _sector_despawn_tickets = 12;
      };

      // Despawn Tickets have reached 0 or less than 0.
      if ( _sector_despawn_tickets <= 0 ) then {
        {
          if (_x isKindOf "Man") then {
            deleteVehicle _x;
          } else {
            [ _x ] call F_cleanOpforVehicle;
          };
        } foreach _managed_units;

        _stopit = true;

        // Remove Sector from activated sectors
        active_sectors = active_sectors - [ _sector ]; publicVariable "active_sectors";
      };
    };
    sleep 5;
  };
} else {
  sleep 40;
  active_sectors = active_sectors - [ _sector ]; publicVariable "active_sectors";
};
