private _objects = nearestObjects [player, [FOB_typename,FOB_box_typename,Arsenal_typename], 50];
if ((count _objects) > 0) then {true} else {false};