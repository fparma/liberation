
_vehicle_array_list = [
  ["B_Quadbike_01_F", 0, 0, 1],
  ["B_G_Offroad_01_F", 0, 0, 3],
  ["B_G_Offroad_01_armed_F", 0, 10, 3],
  ["CUP_B_LR_Transport_GB_W", 0, 0, 3],
  ["B_Truck_01_transport_F", 0, 0, 5],
  ["B_Truck_01_covered_F", 0, 0, 5],
  ["CUP_B_HMMWV_Unarmed_USMC", 0, 0, 5],
  ["CUP_B_HMMWV_M1114_USMC", 0, 5, 5],
  ["CUP_B_HMMWV_M2_USMC", 0, 10, 5],
  ["CUP_B_HMMWV_MK19_USMC", 0, 20, 5],
  ["CUP_B_HMMWV_SOV_USA", 0, 25, 3],
  ["CUP_B_HMMWV_TOW_USMC", 0, 40, 5],
  ["CUP_B_HMMWV_Avenger_USMC", 0, 50, 5],
  ["B_MRAP_01_F", 0, 0, 20],
  ["B_MRAP_01_hmg_F", 0, 20, 20],
  ["B_MRAP_01_gmg_F", 0, 30, 20],
  ["CUP_B_RG31_M2_OD_USMC", 0, 10, 15],
  ["CUP_B_RG31_M2_GC_USMC", 0, 10, 25],
  ["CUP_B_Dingo_GER_Wdl", 0, 20, 15],
  ["CUP_B_Dingo_GL_GER_Wdl", 0, 30, 15],
  ["CUP_B_Ridgback_GMG_GB_W", 0, 20, 20],
  ["CUP_B_Ridgback_HMG_GB_W", 0, 10, 20],
  ["CUP_B_Mastiff_GMG_GB_W", 0, 20, 30]
];

_resultArray = [];

{
  _vehicle = _x select 0;
  _manpower = _x select 1;
  _ammo = _x select 2;
  _obj = _vehicle createVehicle [0,0,0];

  _armor_number = getNumber (configFile >> "CfgVehicles" >> _vehicle >> "armor");

  _slots_1 = _obj emptyPositions "Commander";
  _slots_2 = _obj emptyPositions "Driver";
  _slots_3 = _obj emptyPositions "Gunner";
  _slots_4 = _obj emptyPositions "Cargo";
  _slots = _slots_1 + _slots_2 + _slots_3 + _slots_4;

  _calculated = (ceil (_armor_number / 10)) + _slots;
  _resultString = format["Armor: %1, Slots: %2, Calculated Armor: %3", _armor_number, _slots, _calculated];
  _resultArray pushBack [_vehicle, _manpower, _ammo, _calculated];

  deleteVehicle _obj;
} forEach light_vehicles_extension;

copyToClipboard str _resultArray;
