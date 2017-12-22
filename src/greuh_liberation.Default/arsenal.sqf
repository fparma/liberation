<#exec true <#include arsenal/main.h>>

[ player, [<#ARSENAL_WHITELIST_WEAPONS>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_MAGAZINES>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_BACKPACKS>], false] call ace_arsenal_fnc_addVirtualItems;
[ player, [<#ARSENAL_WHITELIST_ITEMS_CATEGORY>], false] call ace_arsenal_fnc_addVirtualItems;