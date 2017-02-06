class Extended_DisplayLoad_EventHandlers {
  class RscDisplayArsenal {
    FPARMA_ARSENAL_LIMITATION = "if (!isNil 'FPC_fnc_overrideArsenal') then {_this call FPC_fnc_overrideArsenal};";
  };
};

class Extended_DisplayUnload_EventHandlers {
  class RscDisplayArsenal {
    FPARMA_SAVE_GEAR = "profileNamespace setVariable [format ['%1_fpcGear', GRLIB_save_key], getUnitLoadout player]; saveProfileNamespace";
  };
};
