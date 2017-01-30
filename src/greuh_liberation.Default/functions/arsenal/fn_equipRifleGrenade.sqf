params [
  ["_slotid", 2],
  ["_classname", "R3F_APAV40"]
];

switch (_slotid) do {
  case 0: { player addItemToUniform _classname;};
  case 1: { player addItemToVest _classname;};
  case 2: { player addItemToBackpack _classname;};
};