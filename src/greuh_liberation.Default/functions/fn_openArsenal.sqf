_isFull = true;

if (_isFull) then {
  ["Open",true] spawn BIS_fnc_arsenal;
} else {
  ["Open",false] spawn BIS_fnc_arsenal;
};