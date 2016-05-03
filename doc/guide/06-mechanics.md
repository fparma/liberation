# Mechanics
## Reinforcements
Well here comes the complete ruleset:

* When a sector is active, reinforcements are called when 15% of the initial defenders have been killed,

* The only exception is large towns, reinforcements are called as soon as the sector is active,

* The time it takes for reinforcements to answer the call is determined by this:

```sqf
_reinforcements_time = (((((markerpos _nearestower) distance (markerpos _targetsector)) / 1000) ^ 1.66 ) * 150) / GRLIB_difficulty_modifier;
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
sometimes a battlegroup will pop on the nearest possible position from the sector you are attacking, taking into account your territory and your forces (they won't ever spawn within visual range, or into blufor controlled territory). Then they will attack the nearest blufor sector from their starting position, which might not be the one you're at, depending on where they spawned and where the front line is. They will stay until their target is captured, then go to the next nearest one, and repeat until they are destroyed.

(sometimes they will assault your FOB if is near. you will not be able to build reinforcements until the attack is fended off)

![a](http://vignette3.wikia.nocookie.net/greuh-liberation/images/c/ca/2015-10-03_13_06_20-2015-10-03_00007-2.png/revision/latest/scale-to-width-down/350?cb=20151003110710)

## Surrendering enemies
Baddies will surrender when they have less than 3 people alive,

or when the BLUFOR has overwhelming forces (more than 85% of everyone in the sector, excluding civilians). So technically if you solo a town you will have 2 guys surrender to you.

you can capture these as Prisoners of war and interrogate them to progress on [04-secondary-objectives.md](04-secondary-objectives.md)

## Alert level
The CSAT won't let you liberate all of its brand new territory without reacting. When you begin the campaign, hostile forces will only be composed of the garrisons inside military bases. However as you become more threatening by liberating more and more sectors, the CSAT will start calling in more reinforcements, men and equipment to counter you.

To limit the CSAT's operational capabilities, you will have to fulfill [04-secondary-objectives.md](04-secondary-objectives.md) that will consist of destroying their logistics bases. This is not required to win the campaign, but if you ignore the alert level for too long, you're in for quite a lot of trouble.

![a](http://vignette4.wikia.nocookie.net/greuh-liberation/images/5/5c/Alert_level.png/revision/latest?cb=20150922204446)

when your alert level nears 90-100% you will be countered by Enemy jets, attack choppers, Battle tank squadrons, Transport choppers filled with enemies!

## Sector activation
Because of performance limitations we can not have all enemy AI up on the whole map all the time. so they only spawn in when needed. Technically these are the spawn/sector activation rules

* Sectors activate with any number of blufor units in the radius
* Sector activation time depends on the number of units (more units = quicker), min 5 seconds, max 60 seconds
* Sector activation radius is 1250m , deactivation radius is 1500m
* Sector ownership rules will react to 1 BLUFOR unit and 3 OPFOR units
* Sector activation and capture rules will ignore units above 350meters Altitude

## Save Game
Every 60 seconds your progress is saved. but only vehicles withing 250 meters of friendly FOB's are saved. So server restarts will cleanup all further vehicles). (see Server Admin for the location of the savegame file)