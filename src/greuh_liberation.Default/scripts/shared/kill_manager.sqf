params [ "_unit", "_killer" ];
private [ "_nearby_bigtown" ];

if ( isServer ) then {

	please_recalculate = true;

	if ( isNil "infantry_weight" ) then { infantry_weight = 33 };
	if ( isNil "armor_weight" ) then { armor_weight = 33 };
	if ( isNil "air_weight" ) then { air_weight = 33 };

	if ( side _killer == GRLIB_side_friendly ) then {

		_nearby_bigtown = [ sectors_bigtown, { (!(_x in blufor_sectors)) && ( _unit distance (markerpos _x) < 250 ) } ] call BIS_fnc_conditionalSelect;
		if ( count _nearby_bigtown > 0 ) then {
			combat_readiness = combat_readiness + (0.5 * GRLIB_difficulty_modifier);
			if ( combat_readiness > 100.0 && GRLIB_difficulty_modifier < 2 ) then { combat_readiness = 100.0 };
		};

		if ( _killer isKindOf "Man" ) then {
			infantry_weight = infantry_weight + 1;
			armor_weight = armor_weight - 0.66;
			air_weight = air_weight - 0.66;
		} else {
			if ( (typeof (vehicle _killer) ) in land_vehicles_classnames ) then {
				infantry_weight = infantry_weight - 0.66;
				armor_weight = armor_weight + 1;
				air_weight = air_weight - 0.66;
			};
			if ( (typeof (vehicle _killer) ) in air_vehicles_classnames ) then {
				infantry_weight = infantry_weight - 0.66;
				armor_weight = armor_weight - 0.66;
				air_weight = air_weight + 1;
			};
		};

		if ( infantry_weight > 100 ) then { infantry_weight = 100 };
		if ( armor_weight > 100 ) then { armor_weight = 100 };
		if ( air_weight > 100 ) then { air_weight = 100 };
		if ( infantry_weight < 0 ) then { infantry_weight = 0 };
		if ( armor_weight < 0 ) then { armor_weight = 0 };
		if ( air_weight < 0 ) then { air_weight = 0 };
	};

	if ( _unit isKindOf "Man" ) then {
		if ( side (group _unit) == GRLIB_side_civilian ) then {
			if ( isPlayer _killer ) then {
				if ( GRLIB_civ_penalties ) then {
					resources_ammo = resources_ammo - GRLIB_civ_killing_penalty;
					[ [ name _unit, GRLIB_civ_killing_penalty, _killer ] , "remote_call_civ_penalty" ] call BIS_fnc_MP;
				};
			};
		};
	} else {
		if ( typeof _unit in all_hostile_classnames ) then {
			if ( isplayer _killer ) then {
				if ( GRLIB_ammo_bounties ) then {
					private [ "_bounty" ];

					_bounty = 10;
					if ( _unit isKindOf "Air" ) then {
						_bounty = 40;
					};

					if ( _unit isKindOf "Tank" ) then {
						_bounty = 20;
					};

					resources_ammo = resources_ammo + _bounty;
					[ [ typeOf _unit, _bounty, _killer ] , "remote_call_ammo_bounty" ] call BIS_fnc_MP;
				};

			};
		};
	};
};