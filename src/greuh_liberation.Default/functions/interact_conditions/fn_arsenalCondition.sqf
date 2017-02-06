if !(isNull objectParent player) exitWith {false};

private _objects = nearestObjects [player, [FOB_typename,FOB_box_typename,Arsenal_typename], 100];
(count _objects > 0 && build_confirmed == 0)
