# Editing Factions
This documents how to go about editing the units or vehicles used by the mission.

## File System

This mission uses several files to create the playable faction presets available for choice within the parameter menu.

The core scripts are contained within the \grueh_liberation.Default\ folder, and map specific files are placed within each map folder.

The arsenal and classname folders inside \src\greuh_liberation.Default\meta\ define the units and vehicles for each particular preset.

For example, the main.h file in each folder belongs to the default NATO vs CSAT preset.

The \arsenal\main.h file controls the items available from within the virtual arsenal only if Limited Arsenal is enabled.

The \classname\main.h file controls the units available to purchase as the blufor faction, and the units spawned for the opposing faction.

When the mission is built, these files are compiled into an arsenal and a classname sqf file located in the zfactions\ folder. For example, main.h becomes arsenal0.sqf and classname0.sqf.
These are selected via parameter at the mission screen. 
When the parameter for this is chosen (NATO vs CSAT), these two files (arsenal0.sqf and classname0.sqf in this case) are loaded.


## Editing a Preset

Editing the arsenal .h file allows you to change the options available in the limited arsenal for that preset.
Editing the classname .h file allows you to add or remove available units and vehicles.

You do not need to edit any other files other than these to modify an existing preset.

The current default preset (main.h) contains only vanilla content, and should be left free of addon content to ensure that a version of this mission can always be played incase of modpack changes.


## Creating a Preset

If you want to make significant changes the units available to either faction, this is best done via an entirely new preset. 
This way your faction changes will be available to select in mission parameters, and the existing preset is still available.

Note that save files are handled on a per map and faction basis. This means that a Altis NATO save is different from an Altis RHSUSAF save.

To do this, make a new copy of the main.h file with an appropriate name in both the arsenal and classname folders, and fill as desired.
The arsenal .h file is only required if you want to make use of a Limited Arsenal.

After this, open up the /ui/mission_params.hpp file and edit the SelectedFaction class to add a new parameter option with appropriate text.

Finally, create a new copy of the arsenal and classname sqf file within the /src/factions/ folder, incrementing the number at the end of the file name by 1.
For example, arsenal1.sqf -> arsenal2.sqf

Open up the two new files, and edit the following line <#exec true <#include arsenal/main.h>> to refer to your new .h files. 
If you did not make a new arsenal .h file for this preset, you still need to make a new copy of arsenal0.sqf, but you can leave this to refer to the default arsenal/main.h.
