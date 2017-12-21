<#exec true <#include arsenal/main.h>>

[ player, [<#ARSENAL_WHITELIST_WEAPONS>], true] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_MAGAZINES>], true] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_BACKPACKS>], true] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_ITEMS_CATEGORY>], true] call ace_arsenal_fnc_addVirtualItems;