
_vehicle_array_list = [
["CUP_B_FV432_Bulldog_GB_W",0,5,46],
["CUP_B_M113_USA",0,10,24],
["CUP_B_M1126_ICV_M2_Woodland",0,20,36],
["CUP_B_M1126_ICV_M2_Woodland_Slat",0,20,41],
["CUP_B_M1126_ICV_MK19_Woodland",0,30,36],
["CUP_B_M1126_ICV_MK19_Woodland_Slat",0,30,41],
["CUP_B_M1128_MGS_Woodland",0,125,28],
["CUP_B_M1135_ATGMV_Woodland",0,80,28],
["CUP_B_MCV80_GB_W",0,55,40],
["CUP_B_MCV80_GB_W_SLAT",0,55,50],
["CUP_B_LAV25_USMC",0,45,24],
["CUP_B_AAV_USMC",0,50,43],
["CUP_B_M2A3Bradley_USA_W",0,85,59],
["CUP_B_M6LineBacker_USA_W",0,85,53],
["CUP_B_M270_HE_USA",0,200,19],
["CUP_B_M1A1_Woodland_USMC",0,165,88],
["CUP_B_M1A2_TUSK_MG_USMC",0,170,103]
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

  if (_obj isKindOf "Wheeled_APC" || _obj isKindOf "Tank" || _obj isKindOf "Air") then {
    _calculated = (floor ((getMass _obj) / 800) + _calculated);
  };

  _resultArray pushBack [_vehicle, _manpower, _ammo, _calculated];

  deleteVehicle _obj;
} forEach _vehicle_array_list;

copyToClipboard str _resultArray;
