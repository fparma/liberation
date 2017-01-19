<#exec true <#include arsenal/main.h>>

[ missionNamespace, [<#ARSENAL_WHITELIST_WEAPONS>], true] call BIS_fnc_addVirtualWeaponCargo;
[ missionNamespace, [<#ARSENAL_WHITELIST_MAGAZINES>], true] call BIS_fnc_addVirtualMagazineCargo;
[ missionNamespace, [<#ARSENAL_WHITELIST_BACKPACKS>], true] call BIS_fnc_addVirtualBackpackCargo;
[ missionNamespace, [<#ARSENAL_WHITELIST_ITEMS_CATEGORY>], true] call BIS_fnc_addVirtualItemCargo;