//Filename should match the number below (e.g arsenal1.sqf)
//[0] Main - Vanilla NATO vs CSAT (WIP)
//[1] RHSUSAF - RHS USAF vs RHS AFRF 
<#exec true <#include arsenal/rhsusaf.h>>

[ player, [<#ARSENAL_WHITELIST_WEAPONS>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_MAGAZINES>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_BACKPACKS>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_ITEMS_CATEGORY>], false] call ace_arsenal_fnc_addVirtualItems;