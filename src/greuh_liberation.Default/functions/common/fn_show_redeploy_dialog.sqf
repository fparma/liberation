fullmap = 0;
_old_fullmap = 0;
_basenamestr = "Staging Zone";

waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "blufor_sectors" };
waitUntil { !isNil "save_is_loaded" };

_dialog = createDialog "liberation_deploy";
deploy = 0;
_oldsel = -999;

showCinemaBorder false;
camUseNVG false;
respawn_camera = "camera" camCreate (getposASLW base_chimera);
respawn_object = "Sign_Arrow_Blue_F" createVehicleLocal (getposASLW base_chimera);
respawn_object hideObject true;
respawn_camera camSetTarget respawn_object;
respawn_camera cameraEffect ["internal","back"];
respawn_camera camcommit 0;

waitUntil { dialog };

((findDisplay 5201) displayCtrl 201) ctrlAddEventHandler [ "mouseButtonDblClick" , { deploy = 1; } ];

_standard_map_pos = ctrlPosition ((findDisplay 5201) displayCtrl 251);
_frame_pos = ctrlPosition ((findDisplay 5201) displayCtrl 198);

while { dialog && alive player && deploy == 0} do {
  choiceslist = [ [ _basenamestr, getpos base_chimera ] ];

  {
    choiceslist pushBack [format [ "FOB %1 - %2", (military_alphabet select _forEachIndex),mapGridPosition _x], _x];
  } forEach GRLIB_all_fobs;

  {
    private _mRespawn = _x;
    if ({_mRespawn distance (_x select 1) < 200} count choiceslist isEqualTo 0) then {
      choiceslist pushBack [format [ "%1 - %2", localize "STR_RESPAWN_TRUCK", mapGridPosition _x], getPos _x];
    };
  } forEach (call F_getMobileRespawns);

  lbClear 201;
  {
    lbAdd [201, (_x select 0)];
  } foreach choiceslist;

  if ( lbCurSel 201 == -1 ) then {
     lbSetCurSel [201,0];
  };

  if ( lbCurSel 201 != _oldsel ) then {
    _oldsel = lbCurSel 201;
    _objectpos = [0,0,0];
    if ( dialog ) then {
      _objectpos = ((choiceslist select _oldsel) select 1);
    };
    if ( surfaceIsWater _objectpos) then {
      respawn_object setposasl [_objectpos select 0, _objectpos select 1, 15];
    } else {
      respawn_object setpos ((choiceslist select _oldsel) select 1);
    };
    _startdist = 120;
    _enddist = 120;
    _alti = 35;

    "spawn_marker" setMarkerPosLocal (getpos respawn_object);
    ctrlMapAnimClear ((findDisplay 5201) displayCtrl 251);
    private _transition_map_pos = getpos respawn_object;
    private _fullscreen_map_offset = 4000;
    if(fullmap % 2 == 1) then {
      _transition_map_pos = [(_transition_map_pos select 0) - _fullscreen_map_offset,  (_transition_map_pos select 1) + (_fullscreen_map_offset * 0.75), 0];
    };
    ((findDisplay 5201) displayCtrl 251) ctrlMapAnimAdd [0, 0.3,_transition_map_pos];
    ctrlMapAnimCommit ((findDisplay 5201) displayCtrl 251);

    respawn_camera camSetPos [(getpos respawn_object select 0) - 70, (getpos respawn_object select 1) + _startdist, (getpos respawn_object select 2) + _alti];
    respawn_camera camcommit 0;
    respawn_camera camSetPos [(getpos respawn_object select 0) - 70, (getpos respawn_object select 1) - _enddist, (getpos respawn_object select 2) + _alti];
    respawn_camera camcommit 90;
  };

  if ( _old_fullmap != fullmap ) then {
    _old_fullmap = fullmap;
    if ( fullmap % 2 == 1 ) then {
      ((findDisplay 5201) displayCtrl 251) ctrlSetPosition [ (_frame_pos select 0) + (_frame_pos select 2), (_frame_pos select 1), (0.6 * safezoneW), (_frame_pos select 3)];
    } else {
      ((findDisplay 5201) displayCtrl 251) ctrlSetPosition _standard_map_pos;
    };
    ((findDisplay 5201) displayCtrl 251) ctrlCommit 0.2;
    _oldsel = -1;
  };

  uiSleep 0.1;
};

if (dialog && deploy == 1) then {
  private _pos = (choiceslist select (lbCurSel 201)) select 1;
  private _empty = _pos findEmptyPosition [0, 50, "CAManBase"];
  player setPos ([_empty, _pos] select (_empty isEqualTo []));
};

respawn_camera cameraEffect ["Terminate","back"];
camDestroy respawn_camera;
deleteVehicle respawn_object;
camUseNVG false;
"spawn_marker" setMarkerPosLocal markers_reset;

if (dialog) then {
  closeDialog 0;
};