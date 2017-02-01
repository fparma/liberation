if (!isServer) exitWith {};

params [ "_price_a", "_typename", "_localtype" ];

if ( _price_a > 0 ) then {
  resources_ammo = resources_ammo - _price_a;
  please_recalculate = true;
};
