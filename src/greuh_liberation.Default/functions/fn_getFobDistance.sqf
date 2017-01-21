_nearfob = [] call F_getNearestFob;
_fobdistance = 9999;
if ( count _nearfob == 3 ) then {
  _fobdistance = player distance _nearfob;
};
_fobdistance