# Mission Specific gameplay mechanics
This document explains various concepts and gameplay mechanics specific to this mission.

## Reinforcement System
This refers to the Enemy reinforcements assisting a Sector that is currently being attacked by BLUFOR troops.

* When a sector is active, reinforcements are called when 15% of the initial defenders have been killed,
* The only exception is large towns, reinforcements are called as soon as the sector is active,
* The time it takes for reinforcements to answer the call is determined by the following ruleset:

```cpp
(
  (
    (
      (
        (markerpos _nearestower) distance (markerpos _targetsector)
      ) / 1000
    ) ^ 1.66
  ) * 150
) / GRLIB_difficulty_modifier;
```
Depending on the distance to the nearest tower  (csat controlled), on normal difficulty, that means:

* 250 meters -> 15 seconds
* 500 meters -> 47 seconds
* 1km -> 2 minutes 30 seconds
* 2km -> 8 minutes
* 3km -> 15 minutes
* 4km -> 24 minutes

For each active sector, reinforcements can only be called once, unless the sector deactivates/reactivates again. All patrols will answer the call for the next 30 minutes.

## Counter attacks (Battlegroups)
Sometimes a battlegroup will pop on the nearest possible position from the sector you are attacking, taking into account your territory and your forces (they won't ever spawn within visual range, or into blufor controlled territory). Then they will attack the nearest blufor sector from their starting position, which might not be the one you're at, depending on where they spawned and where the front line is. They will stay until their target is captured, then go to the next nearest one, and repeat until they are destroyed.

(sometimes they will assault your FOB if is near. you will not be able to build reinforcements until the attack is fended off)

## Surrendering Enemies
Enemy Units will surrender when they have less than 3 people alive,

or when the BLUFOR has overwhelming forces (more than 85% of everyone in the sector, excluding civilians). So technically if you solo a town you will have 2 guys surrender to you.

you can capture these as Prisoners of war and interrogate them to gain intel that is required to start Secondary Missions.

## Alert Level (OPFOR Readiness)
OPFOR Readiness refers to the amount of resistance by the main OPFOR Forces you encounter. The higher the value, the stronger assets they will use.

When you begin the campaign, hostile forces will only be composed of the garrisons inside military bases. However as you become more threatening by liberating more and more sectors, the OPFOR Forces will start calling in more reinforcements, men and equipment to counter you.

To limit OPFOR's operational capabilities, you will have to fulfill secondary objectives that will consist of destroying their logistics bases. This is not required to win the campaign, but if you ignore the alert level for too long, you're in for quite a lot of trouble.

**Alert level**
when your alert level nears 90-100% you will be countered by Enemy jets, attack choppers, Battle tank squadrons, Transport choppers filled with enemies!

## Sector Activation

Because of performance limitations we can not have all enemy AI up on the whole map all the time. so they only spawn in when needed. Technically these are the spawn/sector activation rules

* Sectors activate with any number of blufor units in the radius
* Sector activation time depends on the number of units (more units = quicker), min 5 seconds, max 60 seconds
* Sector activation radius is 1250m , deactivation radius is 1500m
* Sector ownership rules will react to 1 BLUFOR unit and 3 OPFOR units
* Sector activation and capture rules will ignore units above 350meters Altitude

## Savegame handling
Every 60 seconds your progress is saved. but only vehicles withing 250 meters of friendly FOB's are saved. So server restarts will cleanup all further vehicles).

The Savegame is stored within the <profile>.vars.Arma3Profile File.

This means, if the mission is performing badly, you can bring all the vehicles and Objects you want to save back to base, and restart the mission.
