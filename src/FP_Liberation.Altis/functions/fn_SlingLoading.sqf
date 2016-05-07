ASL_Advanced_Sling_Loading_Install = {

// Prevent advanced sling loading from installing twice
if(!isNil "ASL_ROPE_INIT") exitWith {};
ASL_ROPE_INIT = true;

ASL_Rope_Get_Lift_Capability = {
  params ["_vehicle"];
  private ["_slingLoadMaxCargoMass"];
  _slingLoadMaxCargoMass = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "slingLoadMaxCargoMass");
  if(_slingLoadMaxCargoMass <= 0) then {
    _slingLoadMaxCargoMass = 4000;
  };
  _slingLoadMaxCargoMass;
};

ASL_Get_Sling_Load_Points = {
  params ["_vehicle"];
  private ["_slingLoadPointsArray","_cornerPoints","_rearCenterPoint","_vehicleUnitVectorUp"];
  private ["_slingLoadPoints","_modelPoint","_modelPointASL","_surfaceIntersectStartASL","_surfaceIntersectEndASL","_surfaces","_intersectionASL","_intersectionObject"];
  _slingLoadPointsArray = [];
  _cornerPoints = [_vehicle] call ASL_Get_Corner_Points;
  _frontCenterPoint = (((_cornerPoints select 2) vectorDiff (_cornerPoints select 3)) vectorMultiply 0.5) vectorAdd (_cornerPoints select 3);
  _rearCenterPoint = (((_cornerPoints select 0) vectorDiff (_cornerPoints select 1)) vectorMultiply 0.5) vectorAdd (_cornerPoints select 1);
  _rearCenterPoint = ((_frontCenterPoint vectorDiff _rearCenterPoint) vectorMultiply 0.2) vectorAdd _rearCenterPoint;
  _frontCenterPoint = ((_rearCenterPoint vectorDiff _frontCenterPoint) vectorMultiply 0.2) vectorAdd _frontCenterPoint;
  _middleCenterPoint = ((_frontCenterPoint vectorDiff _rearCenterPoint) vectorMultiply 0.5) vectorAdd _rearCenterPoint;
  _vehicleUnitVectorUp = vectorNormalized (vectorUp _vehicle);

  _slingLoadPoints = [];
  {
    _modelPoint = _x;
    _modelPointASL = AGLToASL (_vehicle modelToWorldVisual _modelPoint);
    _surfaceIntersectStartASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply 5 );
    _surfaceIntersectEndASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply -5 );
    _surfaces = lineIntersectsSurfaces [_surfaceIntersectStartASL, _surfaceIntersectEndASL, objNull, objNull, false, 100];
    _intersectionASL = [];
    {
      _intersectionObject = _x select 2;
      if(_intersectionObject == _vehicle) exitWith {
        _intersectionASL = _x select 0;
      };
    } forEach _surfaces;
    if(count _intersectionASL > 0) then {
      _slingLoadPoints pushBack (_vehicle worldToModelVisual (ASLToAGL _intersectionASL));
    } else {
      _slingLoadPoints pushBack [];
    };
  } forEach [_frontCenterPoint, _middleCenterPoint, _rearCenterPoint];

  if(count (_slingLoadPoints select 1) > 0) then {
    _slingLoadPointsArray pushBack [_slingLoadPoints select 1];
    if(count (_slingLoadPoints select 0) > 0 && count (_slingLoadPoints select 2) > 0 ) then {
      if( ((_slingLoadPoints select 0) distance (_slingLoadPoints select 2)) > 3 ) then {
        _slingLoadPointsArray pushBack [_slingLoadPoints select 0,_slingLoadPoints select 2];
        if( ((_slingLoadPoints select 0) distance (_slingLoadPoints select 1)) > 3 ) then {
          _slingLoadPointsArray pushBack [_slingLoadPoints select 0,_slingLoadPoints select 1,_slingLoadPoints select 2];
        };
      };
    };
  };
  _slingLoadPointsArray;
};

ASL_Rope_Set_Mass = {
  private ["_obj","_mass"];
  _obj = [_this,0] call BIS_fnc_param;
  _mass = [_this,1] call BIS_fnc_param;
  _obj setMass _mass;
};

ASL_Rope_Adjust_Mass = {
  params ["_obj","_heli",["_ropes",[]]];
  private ["_mass","_lift","_originalMass","_heavyLiftMinLift"];
  _lift = [_heli] call ASL_Rope_Get_Lift_Capability;
  _originalMass = getMass _obj;
  _heavyLiftMinLift = missionNamespace getVariable ["ASL_HEAVY_LIFTING_MIN_LIFT_OVERRIDE",5000];
  if( _originalMass >= ((_lift)*0.8) && _lift >= _heavyLiftMinLift ) then {
    private ["_originalMassSet","_ends","_endDistance","_ropeLength"];
    _originalMassSet = (getMass _obj) == _originalMass;
    while { _obj in (ropeAttachedObjects _heli) && _originalMassSet } do {
      {
        _ends = ropeEndPosition _x;
        _endDistance = (_ends select 0) distance (_ends select 1);
        _ropeLength = ropeLength _x;
        if((_ropeLength - 2) <= _endDistance && ((position _heli) select 2) > 0 ) then {
          [[_obj, ((_lift)*0.8)],"ASL_Rope_Set_Mass",_obj,true] call ASL_RemoteExec;
          _originalMassSet = false;
        };
      } forEach _ropes;
      sleep 0.1;
    };
    while { _obj in (ropeAttachedObjects _heli) } do {
      sleep 0.5;
    };
    [[_obj, _originalMass],"ASL_Rope_Set_Mass",_obj,true] call ASL_RemoteExec;
  };
};


/*
 Constructs an array of all active rope indexes and position labels (e.g. [[rope index,"Front"],[rope index,"Rear"]])
 for a specified vehicle
*/
ASL_Get_Active_Ropes = {
  params ["_vehicle"];
  private ["_activeRopes","_existingRopes","_ropeLabelSets","_ropeIndex","_totalExistingRopes","_ropeLabels"];
  _activeRopes = [];
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  _ropeLabelSets = [["Center"],["Front","Rear"],["Front","Center","Rear"]];
  _ropeIndex = 0;
  _totalExistingRopes = count _existingRopes;
  {
    if(count _x > 0) then {
      _ropeLabels = _ropeLabelSets select (_totalExistingRopes - 1);
      _activeRopes pushBack [_ropeIndex,_ropeLabels select _ropeIndex];
    };
    _ropeIndex = _ropeIndex + 1;
  } forEach _existingRopes;
  _activeRopes;
};

/*
 Constructs an array of all inactive rope indexes and position labels (e.g. [[rope index,"Front"],[rope index,"Rear"]])
 for a specified vehicle
*/
ASL_Get_Inactive_Ropes = {
  params ["_vehicle"];
  private ["_inactiveRopes","_existingRopes","_ropeLabelSets","_ropeIndex","_totalExistingRopes","_ropeLabels"];
  _inactiveRopes = [];
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  _ropeLabelSets = [["Center"],["Front","Rear"],["Front","Center","Rear"]];
  _ropeIndex = 0;
  _totalExistingRopes = count _existingRopes;
  {
    if(count _x == 0) then {
      _ropeLabels = _ropeLabelSets select (_totalExistingRopes - 1);
      _inactiveRopes pushBack [_ropeIndex,_ropeLabels select _ropeIndex];
    };
    _ropeIndex = _ropeIndex + 1;
  } forEach _existingRopes;
  _inactiveRopes;
};

ASL_Get_Active_Ropes_With_Cargo = {
  params ["_vehicle"];
  private ["_activeRopesWithCargo","_existingCargo","_activeRopes","_cargo"];
  _activeRopesWithCargo = [];
  _existingCargo = _vehicle getVariable ["ASL_Cargo",[]];
  _activeRopes = _this call ASL_Get_Active_Ropes;
  {
    _cargo = _existingCargo select (_x select 0);
    if(!isNull _cargo) then {
      _activeRopesWithCargo pushBack _x;
    };
  } forEach _activeRopes;
  _activeRopesWithCargo;
};

ASL_Get_Active_Ropes_Without_Cargo = {
  params ["_vehicle"];
  private ["_activeRopesWithoutCargo","_existingCargo","_activeRopes","_cargo"];
  _activeRopesWithoutCargo = [];
  _existingCargo = _vehicle getVariable ["ASL_Cargo",[]];
  _activeRopes = _this call ASL_Get_Active_Ropes;
  {
    _cargo = _existingCargo select (_x select 0);
    if(isNull _cargo) then {
      _activeRopesWithoutCargo pushBack _x;
    };
  } forEach _activeRopes;
  _activeRopesWithoutCargo;
};

ASL_Get_Ropes = {
  params ["_vehicle","_ropeIndex"];
  private ["_allRopes","_selectedRopes"];
  _selectedRopes = [];
  _allRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if(count _allRopes > _ropeIndex) then {
    _selectedRopes = _allRopes select _ropeIndex;
  };
  _selectedRopes;
};


ASL_Get_Ropes_Count = {
  params ["_vehicle"];
  count (_vehicle getVariable ["ASL_Ropes",[]]);
};

ASL_Get_Cargo = {
  params ["_vehicle","_ropeIndex"];
  private ["_allCargo","_selectedCargo"];
  _selectedCargo = objNull;
  _allCargo = _vehicle getVariable ["ASL_Cargo",[]];
  if(count _allCargo > _ropeIndex) then {
    _selectedCargo = _allCargo select _ropeIndex;
  };
  _selectedCargo;
};

ASL_Get_Ropes_And_Cargo = {
  params ["_vehicle","_ropeIndex"];
  private ["_selectedCargo","_selectedRopes"];
  _selectedCargo = (_this call ASL_Get_Cargo);
  _selectedRopes = (_this call ASL_Get_Ropes);
  [_selectedRopes, _selectedCargo];
};

ASL_Show_Select_Ropes_Menu = {
  params ["_title", "_functionName","_ropesIndexAndLabelArray",["_ropesLabel","Ropes"]];
  ASL_Show_Select_Ropes_Menu_Array = [[_title,false]];
  {
    ASL_Show_Select_Ropes_Menu_Array pushBack [ (_x select 1) + " " + _ropesLabel, [0], "", -5, [["expression", "["+(str (_x select 0))+"] call " + _functionName]], "1", "1"];
  } forEach _ropesIndexAndLabelArray;
  ASL_Show_Select_Ropes_Menu_Array pushBack ["All " + _ropesLabel, [0], "", -5, [["expression", "{ [_x] call " + _functionName + " } forEach [0,1,2];"]], "1", "1"];
  showCommandingMenu "";
  showCommandingMenu "#USER:ASL_Show_Select_Ropes_Menu_Array";
};

ASL_Extend_Ropes = {
  params ["_vehicle","_player",["_ropeIndex",0]];
  if(local _vehicle) then {
    private ["_existingRopes"];
    _existingRopes = [_vehicle,_ropeIndex] call ASL_Get_Ropes;
    if(count _existingRopes > 0) then {
      _ropeLength = ropeLength (_existingRopes select 0);
      if(_ropeLength <= 100 ) then {
        {
          ropeUnwind [_x, 3, 5, true];
        } forEach _existingRopes;
      };
    };
  } else {
    [_this,"ASL_Extend_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Extend_Ropes_Action = {
  private ["_vehicle"];
  _vehicle = vehicle ACE_player;
  if([_vehicle] call ASL_Can_Extend_Ropes) then {
    private ["_activeRopes"];
    _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
    if(count _activeRopes > 1) then {
      ACE_player setVariable ["ASL_Extend_Index_Vehicle", _vehicle];
      ["Extend Cargo Ropes","ASL_Extend_Ropes_Index_Action",_activeRopes] call ASL_Show_Select_Ropes_Menu;
    } else {
      if(count _activeRopes == 1) then {
        [_vehicle,ACE_player,(_activeRopes select 0) select 0] call ASL_Extend_Ropes;
      };
    };
  };
};

ASL_Extend_Ropes_Index_Action = {
  params ["_ropeIndex"];
  private ["_vehicle","_canDeployRopes"];
  _vehicle = ACE_player getVariable ["ASL_Extend_Index_Vehicle", objNull];
  if(_ropeIndex >= 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Extend_Ropes) then {
    [_vehicle,ACE_player,_ropeIndex] call ASL_Extend_Ropes;
  };
};

ASL_Extend_Ropes_Action_Check = {
  if(vehicle ACE_player == ACE_player) exitWith {false};
  [vehicle ACE_player] call ASL_Can_Extend_Ropes;
};

ASL_Can_Extend_Ropes = {
  params ["_vehicle"];
  private ["_existingRopes","_activeRopes"];
  if(ACE_player distance _vehicle > 10) exitWith { false };
  if!([_vehicle] call ASL_Is_Supported_Vehicle) exitWith { false };
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if((count _existingRopes) == 0) exitWith { false };
  _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
  if((count _activeRopes) == 0) exitWith { false };
  true;
};

ASL_Shorten_Ropes = {
  params ["_vehicle","_player",["_ropeIndex",0]];
  if(local _vehicle) then {
    private ["_existingRopes"];
    _existingRopes = [_vehicle,_ropeIndex] call ASL_Get_Ropes;
    if(count _existingRopes > 0) then {
      _ropeLength = ropeLength (_existingRopes select 0);
      if(_ropeLength <= 2 ) then {
        _this call ASL_Release_Cargo;
      } else {
        {
          if(_ropeLength >= 10) then {
            ropeUnwind [_x, 3, -5, true];
          } else {
            ropeUnwind [_x, 3, -1, true];
          };
        } forEach _existingRopes;
      };
    };
  } else {
    [_this,"ASL_Shorten_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Shorten_Ropes_Action = {
  private ["_vehicle"];
  _vehicle = vehicle ACE_player;
  if([_vehicle] call ASL_Can_Shorten_Ropes) then {
    private ["_activeRopes"];
    _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
    if(count _activeRopes > 1) then {
      ACE_player setVariable ["ASL_Shorten_Index_Vehicle", _vehicle];
      ["Shorten Cargo Ropes","ASL_Shorten_Ropes_Index_Action",_activeRopes] call ASL_Show_Select_Ropes_Menu;
    } else {
      if(count _activeRopes == 1) then {
        [_vehicle,ACE_player,(_activeRopes select 0) select 0] call ASL_Shorten_Ropes;
      };
    };
  };
};

ASL_Shorten_Ropes_Index_Action = {
  params ["_ropeIndex"];
  private ["_vehicle"];
  _vehicle = ACE_player getVariable ["ASL_Shorten_Index_Vehicle", objNull];
  if(_ropeIndex >= 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Shorten_Ropes) then {
    [_vehicle,ACE_player,_ropeIndex] call ASL_Shorten_Ropes;
  };
};

ASL_Shorten_Ropes_Action_Check = {
  if(vehicle ACE_player == ACE_player) exitWith {false};
  [vehicle ACE_player] call ASL_Can_Shorten_Ropes;
};

ASL_Can_Shorten_Ropes = {
  params ["_vehicle"];
  private ["_existingRopes","_activeRopes"];
  if(ACE_player distance _vehicle > 10) exitWith { false };
  if!([_vehicle] call ASL_Is_Supported_Vehicle) exitWith { false };
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if((count _existingRopes) == 0) exitWith { false };
  _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
  if((count _activeRopes) == 0) exitWith { false };
  true;
};

ASL_Release_Cargo = {
  params ["_vehicle","_player",["_ropeIndex",0]];
  if(local _vehicle) then {
    private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_allCargo"];
    _existingRopesAndCargo = [_vehicle,_ropeIndex] call ASL_Get_Ropes_And_Cargo;
    _existingRopes = _existingRopesAndCargo select 0;
    _existingCargo = _existingRopesAndCargo select 1;
    {
      _existingCargo ropeDetach _x;
    } forEach _existingRopes;
    _allCargo = _vehicle getVariable ["ASL_Cargo",[]];
    _allCargo set [_ropeIndex,objNull];
    _vehicle setVariable ["ASL_Cargo",_allCargo, true];
    _this call ASL_Retract_Ropes;
  } else {
    [_this,"ASL_Release_Cargo",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Release_Cargo_Action = {
  private ["_vehicle"];
  _vehicle = vehicle ACE_player;
  if([_vehicle] call ASL_Can_Release_Cargo) then {
    private ["_activeRopes"];
    _activeRopes = [_vehicle] call ASL_Get_Active_Ropes_With_Cargo;
    if(count _activeRopes > 1) then {
      ACE_player setVariable ["ASL_Release_Cargo_Index_Vehicle", _vehicle];
      ["Release Cargo","ASL_Release_Cargo_Index_Action",_activeRopes,"Cargo"] call ASL_Show_Select_Ropes_Menu;
    } else {
      if(count _activeRopes == 1) then {
        [_vehicle,ACE_player,(_activeRopes select 0) select 0] call ASL_Release_Cargo;
      };
    };
  };
};

ASL_Release_Cargo_Index_Action = {
  params ["_ropesIndex"];
  private ["_vehicle"];
  _vehicle = ACE_player getVariable ["ASL_Release_Cargo_Index_Vehicle", objNull];
  if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Release_Cargo) then {
    [_vehicle,ACE_player,_ropesIndex] call ASL_Release_Cargo;
  };
};

ASL_Release_Cargo_Action_Check = {
  if(vehicle ACE_player == ACE_player) exitWith {false};
  [vehicle ACE_player] call ASL_Can_Release_Cargo;
};

ASL_Can_Release_Cargo = {
  params ["_vehicle"];
  private ["_existingRopes","_activeRopes"];
  if(ACE_player distance _vehicle > 10) exitWith { false };
  if!([_vehicle] call ASL_Is_Supported_Vehicle) exitWith { false };
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if((count _existingRopes) == 0) exitWith { false };
  _activeRopes = [_vehicle] call ASL_Get_Active_Ropes_With_Cargo;
  if((count _activeRopes) == 0) exitWith { false };
  true;
};

ASL_Retract_Ropes = {
  params ["_vehicle","_player",["_ropeIndex",0]];
  if(local _vehicle) then {
    private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_allRopes","_activeRopes"];
    _existingRopesAndCargo = [_vehicle,_ropeIndex] call ASL_Get_Ropes_And_Cargo;
    _existingRopes = _existingRopesAndCargo select 0;
    _existingCargo = _existingRopesAndCargo select 1;
    if(isNull _existingCargo) then {
      _this call ASL_Drop_Ropes;
      {
        [_x,_vehicle] spawn {
          params ["_rope","_vehicle"];
          private ["_count"];
          _count = 0;
          ropeUnwind [_rope, 3, 0];
          while {(!ropeUnwound _rope) && _count < 20} do {
            sleep 1;
            _count = _count + 1;
          };
          ropeDestroy _rope;
        };
      } forEach _existingRopes;
      _allRopes = _vehicle getVariable ["ASL_Ropes",[]];
      _allRopes set [_ropeIndex,[]];
      _vehicle setVariable ["ASL_Ropes",_allRopes,true];
    };
    _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
    if(count _activeRopes == 0) then {
      _vehicle setVariable ["ASL_Ropes",nil,true];
    };
  } else {
    [_this,"ASL_Retract_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Retract_Ropes_Action = {
  private ["_vehicle","_canRetractRopes"];
  if(vehicle ACE_player == ACE_player) then {
    _vehicle = cursorTarget;
  } else {
    _vehicle = vehicle ACE_player;
  };
  if([_vehicle] call ASL_Can_Retract_Ropes) then {
    private ["_activeRopes"];
    _activeRopes = [_vehicle] call ASL_Get_Active_Ropes_Without_Cargo;
    if(count _activeRopes > 1) then {
      ACE_player setVariable ["ASL_Retract_Ropes_Index_Vehicle", _vehicle];
      ["Retract Cargo Ropes","ASL_Retract_Ropes_Index_Action",_activeRopes] call ASL_Show_Select_Ropes_Menu;
    } else {
      if(count _activeRopes == 1) then {
        [_vehicle,ACE_player,(_activeRopes select 0) select 0] call ASL_Retract_Ropes;
      };
    };
  };
};

ASL_Retract_Ropes_Index_Action = {
  params ["_ropesIndex"];
  private ["_vehicle"];
  _vehicle = ACE_player getVariable ["ASL_Retract_Ropes_Index_Vehicle", objNull];
  if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Retract_Ropes) then {
    [_vehicle,ACE_player,_ropesIndex] call ASL_Retract_Ropes;
  };
};

ASL_Retract_Ropes_Action_Check = {
  if(vehicle ACE_player == ACE_player) then {
    [cursorTarget] call ASL_Can_Retract_Ropes;
  } else {
    [vehicle ACE_player] call ASL_Can_Retract_Ropes;
  };
};

ASL_Can_Retract_Ropes = {
  params ["_vehicle"];
  private ["_existingRopes","_activeRopes"];
  if(ACE_player distance _vehicle > 30) exitWith { false };
  if!([_vehicle] call ASL_Is_Supported_Vehicle) exitWith { false };
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if((count _existingRopes) == 0) exitWith { false };
  _activeRopes = [_vehicle] call ASL_Get_Active_Ropes_Without_Cargo;
  if((count _activeRopes) == 0) exitWith { false };
  true;
};

ASL_Deploy_Ropes = {
  params ["_vehicle","_player",["_cargoCount",1],["_ropeLength",15]];
  if(local _vehicle) then {
    private ["_existingRopes","_cargoRopes","_startLength","_slingLoadPoints"];
    _slingLoadPoints = [_vehicle] call ASL_Get_Sling_Load_Points;
    _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
    if(count _existingRopes == 0) then {
      if(count _slingLoadPoints == 0) exitWith {
        [["Vehicle doesn't support cargo ropes", false],"ASL_Hint",_player] call ASL_RemoteExec;
      };
      if(count _slingLoadPoints < _cargoCount) exitWith {
        [["Vehicle doesn't support " + _cargoCount + " cargo ropes", false],"ASL_Hint",_player] call ASL_RemoteExec;
      };
      _cargoRopes = [];
      _cargo = [];
      for "_i" from 0 to (_cargoCount-1) do
      {
        _cargoRopes pushBack [];
        _cargo pushBack objNull;
      };
      _vehicle setVariable ["ASL_Ropes",_cargoRopes,true];
      _vehicle setVariable ["ASL_Cargo",_cargo,true];
      for "_i" from 0 to (_cargoCount-1) do
      {
        [_vehicle,_player,_i] call ASL_Deploy_Ropes_Index;
      };
    } else {
      [["Vehicle already has cargo ropes deployed", false],"ASL_Hint",_player] call ASL_RemoteExec;
    };
  } else {
    [_this,"ASL_Deploy_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Deploy_Ropes_Index = {
  params ["_vehicle","_player",["_ropesIndex",0],["_ropeLength",15]];
  if(local _vehicle) then {
    private ["_existingRopes","_existingRopesCount","_allRopes"];
    _existingRopes = [_vehicle,_ropesIndex] call ASL_Get_Ropes;
    _existingRopesCount = [_vehicle] call ASL_Get_Ropes_Count;
    if(count _existingRopes == 0) then {
      _slingLoadPoints = [_vehicle] call ASL_Get_Sling_Load_Points;
      _cargoRopes = [];
      _cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0];
      _cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0];
      _cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0];
      _cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0];
      {
        ropeUnwind [_x, 5, _ropeLength];
      } forEach _cargoRopes;
      _allRopes = _vehicle getVariable ["ASL_Ropes",[]];
      _allRopes set [_ropesIndex,_cargoRopes];
      _vehicle setVariable ["ASL_Ropes",_allRopes,true];
    };
  } else {
    [_this,"ASL_Deploy_Ropes_Index",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Deploy_Ropes_Action = {
  private ["_vehicle","_canDeployRopes"];
  if(vehicle ACE_player == ACE_player) then {
    _vehicle = cursorTarget;
  } else {
    _vehicle = vehicle ACE_player;
  };
  if([_vehicle] call ASL_Can_Deploy_Ropes) then {
    _inactiveRopes = [_vehicle] call ASL_Get_Inactive_Ropes;
    if(count _inactiveRopes > 0) then {
      if(count _inactiveRopes > 1) then {
        ACE_player setVariable ["ASL_Deploy_Ropes_Index_Vehicle", _vehicle];
        ["Deploy Cargo Ropes","ASL_Deploy_Ropes_Index_Action",_inactiveRopes] call ASL_Show_Select_Ropes_Menu;
      } else {
        [_vehicle,ACE_player,(_inactiveRopes select 0) select 0] call ASL_Deploy_Ropes_Index;
      };
    } else {
      _slingLoadPoints = [_vehicle] call ASL_Get_Sling_Load_Points;
      if(count _slingLoadPoints > 1) then {
        ACE_player setVariable ["ASL_Deploy_Count_Vehicle", _vehicle];
        ASL_Deploy_Ropes_Count_Menu = [
            ["Deploy Ropes",false]
        ];
        ASL_Deploy_Ropes_Count_Menu pushBack ["For Single Cargo", [0], "", -5, [["expression", "[1] call ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
        if((count _slingLoadPoints) > 1) then {
          ASL_Deploy_Ropes_Count_Menu pushBack ["For Double Cargo", [0], "", -5, [["expression", "[2] call ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
        };
        if((count _slingLoadPoints) > 2) then {
          ASL_Deploy_Ropes_Count_Menu pushBack ["For Triple Cargo", [0], "", -5, [["expression", "[3] call ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
        };
        showCommandingMenu "";
        showCommandingMenu "#USER:ASL_Deploy_Ropes_Count_Menu";
      } else {
        [_vehicle,ACE_player] call ASL_Deploy_Ropes;
      };
    };
  };
};

ASL_Deploy_Ropes_Index_Action = {
  params ["_ropesIndex"];
  private ["_vehicle"];
  _vehicle = ACE_player getVariable ["ASL_Deploy_Ropes_Index_Vehicle", objNull];
  if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Deploy_Ropes) then {
    [_vehicle,ACE_player,_ropesIndex] call ASL_Deploy_Ropes_Index;
  };
};

ASL_Deploy_Ropes_Count_Action = {
  params ["_count"];
  private ["_vehicle","_canDeployRopes"];
  _vehicle = ACE_player getVariable ["ASL_Deploy_Count_Vehicle", objNull];
  if(_count > 0 && !isNull _vehicle && [_vehicle] call ASL_Can_Deploy_Ropes) then {
    [_vehicle,ACE_player,_count] call ASL_Deploy_Ropes;
  };
};

ASL_Deploy_Ropes_Action_Check = {
  if(vehicle ACE_player == ACE_player) then {
    [cursorTarget] call ASL_Can_Deploy_Ropes;
  } else {
    [vehicle ACE_player] call ASL_Can_Deploy_Ropes;
  };
};

ASL_Can_Deploy_Ropes = {
  params ["_vehicle"];
  private ["_existingRopes","_activeRopes"];
  if(ACE_player distance _vehicle > 10) exitWith { false };
  if!([_vehicle] call ASL_Is_Supported_Vehicle) exitWith { false };
  _existingVehicle = ACE_player getVariable ["ASL_Ropes_Vehicle", []];
  if(count _existingVehicle > 0) exitWith { false };
  _existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
  if((count _existingRopes) == 0) exitWith { true };
  _activeRopes = [_vehicle] call ASL_Get_Active_Ropes;
  if((count _existingRopes) > 0 && (count _existingRopes) == (count _activeRopes)) exitWith { false };
  true;
};

ASL_Get_Corner_Points = {
  params ["_vehicle"];
  private ["_centerOfMass","_bbr","_p1","_p2","_rearCorner","_rearCorner2","_frontCorner","_frontCorner2"];
  private ["_maxWidth","_widthOffset","_maxLength","_lengthOffset","_widthFactor","_lengthFactor","_maxHeight","_heightOffset"];

  // Correct width and length factor for air
  _widthFactor = 0.5;
  _lengthFactor = 0.5;
  if(_vehicle isKindOf "Air") then {
    _widthFactor = 0.3;
  };
  if(_vehicle isKindOf "Helicopter") then {
    _widthFactor = 0.2;
    _lengthFactor = 0.45;
  };

  _centerOfMass = getCenterOfMass _vehicle;
  _bbr = boundingBoxReal _vehicle;
  _p1 = _bbr select 0;
  _p2 = _bbr select 1;
  _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
  _widthOffset = ((_maxWidth / 2) - abs ( _centerOfMass select 0 )) * _widthFactor;
  _maxLength = abs ((_p2 select 1) - (_p1 select 1));
  _lengthOffset = ((_maxLength / 2) - abs (_centerOfMass select 1 )) * _lengthFactor;
  _maxHeight = abs ((_p2 select 2) - (_p1 select 2));
  _heightOffset = _maxHeight/6;

  _rearCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
  _rearCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
  _frontCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];
  _frontCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];

  [_rearCorner,_rearCorner2,_frontCorner,_frontCorner2];
};


ASL_Attach_Ropes = {
  params ["_cargo","_player"];
  _vehicleWithIndex = _player getVariable ["ASL_Ropes_Vehicle", [objNull,0]];
  _vehicle = _vehicleWithIndex select 0;
  if(!isNull _vehicle) then {
    if(local _vehicle) then {
      private ["_ropes","_attachmentPoints","_objDistance","_ropeLength","_allCargo"];
      _ropes = [_vehicle,(_vehicleWithIndex select 1)] call ASL_Get_Ropes;
      if(count _ropes == 4) then {
        _attachmentPoints = [_cargo] call ASL_Get_Corner_Points;
        _ropeLength = (ropeLength (_ropes select 0));
        _objDistance = (_cargo distance _vehicle) + 2;
        if( _objDistance > _ropeLength ) then {
          [["The cargo ropes are too short. Move vehicle closer.", false],"ASL_Hint",_player] call ASL_RemoteExec;
        } else {
          [_vehicle,_player] call ASL_Drop_Ropes;
          [_cargo, _attachmentPoints select 0, [0,0,-1]] ropeAttachTo (_ropes select 0);
          [_cargo, _attachmentPoints select 1, [0,0,-1]] ropeAttachTo (_ropes select 1);
          [_cargo, _attachmentPoints select 2, [0,0,-1]] ropeAttachTo (_ropes select 2);
          [_cargo, _attachmentPoints select 3, [0,0,-1]] ropeAttachTo (_ropes select 3);
          _allCargo = _vehicle getVariable ["ASL_Cargo",[]];
          _allCargo set [(_vehicleWithIndex select 1),_cargo];
          _vehicle setVariable ["ASL_Cargo",_allCargo, true];
          if(missionNamespace getVariable ["ASL_HEAVY_LIFTING_ENABLED",true]) then {
            [_cargo, _vehicle, _ropes] spawn ASL_Rope_Adjust_Mass;
          };
        };
      };
    } else {
      [_this,"ASL_Attach_Ropes",_vehicle,true] call ASL_RemoteExec;
    };
  };
};

ASL_Attach_Ropes_Action = {
  private ["_vehicle","_cargo","_canBeAttached"];
  _cargo = cursorTarget;
  _vehicle = (ACE_player getVariable ["ASL_Ropes_Vehicle", [objNull,0]]) select 0;
  if([_vehicle,_cargo] call ASL_Can_Attach_Ropes) then {
    [_cargo,ACE_player] call ASL_Attach_Ropes;
  };
};

ASL_Attach_Ropes_Action_Check = {
  private ["_vehicleWithIndex","_cargo"];
  _vehicleWithIndex = ACE_player getVariable ["ASL_Ropes_Vehicle", [objNull,0]];
  _cargo = cursorTarget;
  [_vehicleWithIndex select 0,_cargo] call ASL_Can_Attach_Ropes;
};

ASL_Can_Attach_Ropes = {
  params ["_vehicle","_cargo"];
  if(!isNull _vehicle && !isNull _cargo) then {
    [_vehicle,_cargo] call ASL_Is_Supported_Cargo && vehicle ACE_player == ACE_player && ACE_player distance _cargo < 10 && _vehicle != _cargo;
  } else {
    false;
  };
};

ASL_Drop_Ropes = {
  params ["_vehicle","_player",["_ropesIndex",0]];
  if(local _vehicle) then {
    private ["_helper","_existingRopes"];
    _helper = (_player getVariable ["ASL_Ropes_Pick_Up_Helper", objNull]);
    if(!isNull _helper) then {
      _existingRopes = [_vehicle,_ropesIndex] call ASL_Get_Ropes;
      {
        _helper ropeDetach _x;
      } forEach _existingRopes;
      detach _helper;
      deleteVehicle _helper;
    };
    _player setVariable ["ASL_Ropes_Vehicle", nil,true];
    _player setVariable ["ASL_Ropes_Pick_Up_Helper", nil,true];
  } else {
    [_this,"ASL_Drop_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Drop_Ropes_Action = {
  private ["_vehicleAndIndex"];
  if([] call ASL_Can_Drop_Ropes) then {
    _vehicleAndIndex = ACE_player getVariable ["ASL_Ropes_Vehicle", []];
    if(count _vehicleAndIndex == 2) then {
      [_vehicleAndIndex select 0, ACE_player, _vehicleAndIndex select 1] call ASL_Drop_Ropes;
    };
  };
};

ASL_Drop_Ropes_Action_Check = {
  [] call ASL_Can_Drop_Ropes;
};

ASL_Can_Drop_Ropes = {
  count (ACE_player getVariable ["ASL_Ropes_Vehicle", []]) > 0 && vehicle ACE_player == ACE_player;
};

ASL_Get_Closest_Rope = {
  private ["_nearbyVehicles","_closestVehicle","_closestRopeIndex","_closestDistance"];
  private ["_vehicle","_activeRope","_ropes","_ends"];
  private ["_end1","_end2","_minEndDistance"];
  _nearbyVehicles = call ASL_Find_Nearby_Vehicles;
  _closestVehicle = objNull;
  _closestRopeIndex = 0;
  _closestDistance = -1;
  {
    _vehicle = _x;
    {
      _activeRope = _x;
      _ropes = [_vehicle,(_activeRope select 0)] call ASL_Get_Ropes;
      {
        _ends = ropeEndPosition _x;
        if(count _ends == 2) then {
          _end1 = _ends select 0;
          _end2 = _ends select 1;
          _minEndDistance = ((position ACE_player) distance _end1) min ((position ACE_player) distance _end2);
          if(_closestDistance == -1 || _closestDistance > _minEndDistance) then {
            _closestDistance = _minEndDistance;
            _closestRopeIndex = (_activeRope select 0);
            _closestVehicle = _vehicle;
          };
        };
      } forEach _ropes;
    } forEach ([_vehicle] call ASL_Get_Active_Ropes);
  } forEach _nearbyVehicles;
  [_closestVehicle,_closestRopeIndex];
};

ASL_Pickup_Ropes = {
  params ["_vehicle","_player",["_ropesIndex",0]];
  if(local _vehicle) then {
    private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_helper","_allCargo"];
    _existingRopesAndCargo = [_vehicle,_ropesIndex] call ASL_Get_Ropes_And_Cargo;
    _existingRopes = _existingRopesAndCargo select 0;
    _existingCargo = _existingRopesAndCargo select 1;
    if(!isNull _existingCargo) then {
      {
        _existingCargo ropeDetach _x;
      } forEach _existingRopes;
      _allCargo = _vehicle getVariable ["ASL_Cargo",[]];
      _allCargo set [_ropesIndex,objNull];
      _vehicle setVariable ["ASL_Cargo",_allCargo, true];
    };
    _helper = "Land_Can_V2_F" createVehicle position _player;
    {
      [_helper, [0, 0, 0], [0,0,-1]] ropeAttachTo _x;
      _helper attachTo [_player, [-0.1, 0.1, 0.15], "Pelvis"];
    } forEach _existingRopes;
    hideObject _helper;
    [[_helper],"ASL_Hide_Object_Global"] call ASL_RemoteExecServer;
    _player setVariable ["ASL_Ropes_Vehicle", [_vehicle,_ropesIndex],true];
    _player setVariable ["ASL_Ropes_Pick_Up_Helper", _helper,true];
  } else {
    [_this,"ASL_Pickup_Ropes",_vehicle,true] call ASL_RemoteExec;
  };
};

ASL_Pickup_Ropes_Action = {
  private ["_nearbyVehicles","_canPickupRopes","_closestRope"];
  _nearbyVehicles = call ASL_Find_Nearby_Vehicles;
  if([] call ASL_Can_Pickup_Ropes) then {
    _closestRope = [] call ASL_Get_Closest_Rope;
    if(!isNull (_closestRope select 0)) then {
      [(_closestRope select 0), ACE_player, (_closestRope select 1)] call ASL_Pickup_Ropes;
    };
  };
};

ASL_Pickup_Ropes_Action_Check = {
  [] call ASL_Can_Pickup_Ropes;
};

ASL_Can_Pickup_Ropes = {
  _nearbyVehicles = call ASL_Find_Nearby_Vehicles;
  count (ACE_player getVariable ["ASL_Ropes_Vehicle", []]) == 0 && (count _nearbyVehicles) > 0 && vehicle ACE_player == ACE_player;
};

ASL_SUPPORTED_VEHICLES = [
  "Helicopter"
];

ASL_Is_Supported_Vehicle = {
  params ["_vehicle","_isSupported"];
  _isSupported = false;
  if(not isNull _vehicle) then {
    {
      if(_vehicle isKindOf _x) then {
        _isSupported = true;
      };
    } forEach (missionNamespace getVariable ["ASL_SUPPORTED_VEHICLES_OVERRIDE",ASL_SUPPORTED_VEHICLES]);
  };
  _isSupported;
};

ASL_SLING_RULES = [
  ["Helicopter","CAN_SLING","All"]
];

ASL_Is_Supported_Cargo = {
  params ["_vehicle","_cargo"];
  private ["_canSling"];
  _canSling = false;
  if(not isNull _vehicle && not isNull _cargo) then {
    {
      if(_vehicle isKindOf (_x select 0)) then {
        if(_cargo isKindOf (_x select 2)) then {
          if( (toUpper (_x select 1)) == "CAN_SLING" ) then {
            _canSling = true;
          } else {
            _canSling = false;
          };
        };
      };
    } forEach (missionNamespace getVariable ["ASL_SLING_RULES_OVERRIDE",ASL_SLING_RULES]);
  };
  _canSling;
};

ASL_Hint = {
  params ["_msg",["_isSuccess",true]];
  hint _msg;
};

ASL_Hide_Object_Global = {
  params ["_obj"];
  if( _obj isKindOf "Land_Can_V2_F" ) then {
    hideObjectGlobal _obj;
  };
};

ASL_Find_Nearby_Vehicles = {
  private ["_nearVehicles","_nearVehiclesWithRopes","_vehicle","_ends","_end1","_end2"];
  _nearVehicles = [];
  {
    _nearVehicles append  (position ACE_player nearObjects [_x, 30]);
  } forEach (missionNamespace getVariable ["ASL_SUPPORTED_VEHICLES_OVERRIDE",ASL_SUPPORTED_VEHICLES]);
  _nearVehiclesWithRopes = [];
  {
    _vehicle = _x;
    {
      _ropes = _vehicle getVariable ["ASL_Ropes",[]];
      if(count _ropes > (_x select 0)) then {
        _ropes = _ropes select (_x select 0);
        {
          _ends = ropeEndPosition _x;
          if(count _ends == 2) then {
            _end1 = _ends select 0;
            _end2 = _ends select 1;
            if(((position ACE_player) distance _end1) < 5 || ((position ACE_player) distance _end2) < 5 ) then {
              _nearVehiclesWithRopes =  _nearVehiclesWithRopes + [_vehicle];
            }
          };
        } forEach _ropes;
      };
    } forEach ([_vehicle] call ASL_Get_Active_Ropes);
  } forEach _nearVehicles;
  _nearVehiclesWithRopes;
};

if (isClass(configFile >> "CfgPatches" >> "ace_main")) then {
  [] spawn {
    waitUntil { alive ACE_player };

    _FP_Slingloading_ROOT = ['FP_Slingloading_Root','Slingloading','\z\ace\addons\fastroping\UI\Icon_Waypoint.paa',{},{true}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions"], _FP_Slingloading_ROOT] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_DeployRope = ['FP_Slingloading_Deploy','Deploy Cargo Ropes','',{[] call ASL_Deploy_Ropes_Action;},{call ASL_Deploy_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_DeployRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_AttachRope = ['FP_Slingloading_Attach','Attach Cargo Ropes','',{[] call ASL_Attach_Ropes_Action;},{call ASL_Attach_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_AttachRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_DropRope = ['FP_Slingloading_Drop','Drop Cargo Ropes','',{[] call ASL_Drop_Ropes_Action;},{[] call ASL_Can_Drop_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_DropRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_PutAwayRope = ['FP_Slingloading_PutAway','Put Away Cargo Ropes','',{[] call ASL_Put_Away_Ropes_Action;},{[cursorTarget] call ASL_Can_Put_Away_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_PutAwayRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_PickUpRope = ['FP_Slingloading_Pickup','Pickup Cargo Ropes','',{[] call ASL_Pickup_Ropes_Action;},{call ASL_Can_Pickup_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_PickUpRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_ExtendRope = ['FP_Slingloading_Extend','Extend Cargo Ropes','',{[] call ASL_Extend_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Extend_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_ExtendRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_ShortenRope = ['FP_Slingloading_Shorten','Shorten Cargo Ropes','',{[] call ASL_Shorten_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Shorten_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_ShortenRope] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_ReleaseCargo = ['FP_Slingloading_Release','Release Cargo','',{[] call ASL_Release_Cargo_Action;},{[vehicle ACE_player] call ASL_Can_Release_Cargo;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_ReleaseCargo] call ace_interact_menu_fnc_addActionToObject;

    _FP_Slingloading_RetractRopes = ['FP_Slingloading_Retract','Retract Cargo Ropes','',{[] call ASL_Retract_Ropes_Action;},{[vehicle ACE_player] call ASL_Can_Retract_Ropes;}] call ace_interact_menu_fnc_createAction;
    [ACE_player, 1, ["ACE_SelfActions", "FP_Slingloading_Root"], _FP_Slingloading_RetractRopes] call ace_interact_menu_fnc_addActionToObject;
  };
};

ASL_RemoteExec = {
  params ["_params","_functionName","_target",["_isCall",false]];
  if(_isCall) then {
    _params remoteExecCall [_functionName, _target];
  } else {
    _params remoteExec [_functionName, _target];
  };
};

ASL_RemoteExecServer = {
  params ["_params","_functionName",["_isCall",false]];
  if(_isCall) then {
    _params remoteExecCall [_functionName, 2];
  } else {
    _params remoteExec [_functionName, 2];
  };
};

if(isServer) then {
  publicVariable "ASL_Advanced_Sling_Loading_Install";
  remoteExecCall ["ASL_Advanced_Sling_Loading_Install", -2,true];
};

};

if(isServer) then {
  [] call ASL_Advanced_Sling_Loading_Install;
};
