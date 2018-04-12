removeHeadgear player;
removeAllContainers player;
removeAllItems player;
removeAllWeapons player;
removeAllAssignedItems player;


private _gear = profileNamespace getVariable (format ["%1_fpcGear", GRLIB_save_key]);
if (isNil "_gear") then {
  player forceAddUniform "FP_Uniform_klmk";
  player addHeadgear "CUP_H_SLA_Helmet";
  player addVest "CUP_V_O_SLA_Flak_Vest02";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
} else {
  if (isNil "fpc_firstload") then {
    {
      private _container = _gear select _x;
      if !(_container isEqualTo []) then {
        _container params ["","_itemsArray"];
        {
          _x params ["_itemClassname"];
          // Handle Unique ACRE radios
          if ((getNumber (configFile >> "CfgWeapons" >> _itemClassname >> "acre_isUnique")) > 0) then {
            diag_log format ["replacing %1 ", _x];
            _x set [0, getText (configFile >> "CfgWeapons" >> _itemClassname >> "acre_baseClass")];
          };
        } forEach _itemsArray;
      };
    } forEach [3,4,5]; // Uniform, Vest, Backpack
  };


  player setUnitLoadout [_gear, true];
};

fpc_firstload = false;
[] spawn FPC_fnc_show_redeploy_dialog;

// Set Player as Engineer
player setVariable["ACE_IsEngineer", 1];