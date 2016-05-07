
_vehicle_array_list = [
["B_Heli_Light_01_F",0,0,15],
["B_Heli_Light_01_armed_F",0,70,25],
["CUP_I_UH1H_TK_GUE",0,10,25],
["CUP_B_UH1Y_GUNSHIP_USMC",0,70,35],
["CUP_B_UH60L_Unarmed_FFV_US",0,0,35],
["CUP_B_UH60L_FFV_US",0,30,35],
["CUP_B_SA330_Puma_HC2_BAF",0,0,70],
["CUP_B_AW159_Cannon_RN_Grey",0,60,50],
["CUP_B_AW159_Hellfire_RN_Grey",0,160,130],
["CUP_B_AW159_Unarmed_GB",0,0,40],
["CUP_B_Merlin_HC3A_GB_Armed",0,5,80],
["CUP_B_MV22_USMC_RAMPGUN",0,5,100],
["CUP_B_AH64D_USA",0,240,140],
["B_Heli_Attack_01_F",0,120,170],
["CUP_B_AV8B_GBU12_USMC",0,200,200],
["CUP_B_F35B_AA_USMC",0,130,200],
["CUP_B_CH53E_USMC",0,0,100],
["O_Heli_Transport_04_black_F",0,0,110],
["CUP_B_C130J_USMC",0,0,130]
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

  if (_obj isKindOf "Wheeled_APC" || _obj isKindOf "Tank") then {
    _calculated = (floor ((getMass _obj) / 800) + _calculated);
  };
  if (_obj isKindOf "Air") then {
    _calculated = (floor ((getMass _obj) / 200) + _calculated);
  };

  _resultArray pushBack [_vehicle, _manpower, _ammo, _calculated];

  deleteVehicle _obj;
} forEach _vehicle_array_list;

copyToClipboard str _resultArray;
