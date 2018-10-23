//####################################
// WEAPONS
//####################################
<#define ARSENAL_WHITELIST_WEAPONS|
<#include arsenal/ace-weapons-common.h>
""
>

//####################################
// MAGAZINES / GRENADES / EXPLOSIVES
//####################################
<#define ARSENAL_WHITELIST_MAGAZINES|
"",
>

//####################################
// UNIFORMS
//####################################
<#define ARSENAL_WHITELIST_UNIFORMS|
"",>

//####################################
// VESTS
//####################################
<#define ARSENAL_WHITELIST_VESTS|
"",>

//####################################
// BACKPACKS
//####################################
<#define ARSENAL_WHITELIST_BACKPACKS|
<#include arsenal/ace-backpacks-common.h>
"">

//####################################
// HELMETS
//####################################
<#define ARSENAL_WHITELIST_HELMETS|
"",>

//####################################
// MASKS
//####################################
<#define ARSENAL_WHITELIST_MASKS|
"",>

//####################################
// NIGHTVISION
//####################################
<#define ARSENAL_WHITELIST_NV|
<#include arsenal/vanilla-nightvision-common.h>
<#include arsenal/ace-nightvision-common.h>
"",>

//####################################
// BINOCULARS
//####################################
<#define ARSENAL_WHITELIST_BINOC|
<#include arsenal/vanilla-binocs-common.h>  // Import the Standard Vanilla Binoculars
<#include arsenal/ace-binocs-common.h>>     // Import the ACE Binoculars

//####################################
// MISC ITEMS
//####################################
<#define ARSENAL_WHITELIST_ITEMS|
<#include arsenal/vanilla-items-common.h>   // Import the vanilla Items
<#include arsenal/ace-items-common.h>       // Import the common ACE Items
<#include arsenal/acre-items-common.h>>     // Import the ACRE Radios

//####################################
// ACCESSORIES
//####################################
<#define ARSENAL_WHITELIST_ACCS|
"">

<#define ARSENAL_WHITELIST_ITEMS_CATEGORY|
<#ARSENAL_WHITELIST_UNIFORMS>
<#ARSENAL_WHITELIST_VESTS>
<#ARSENAL_WHITELIST_HELMETS>
<#ARSENAL_WHITELIST_MASKS>
<#ARSENAL_WHITELIST_NV>
<#ARSENAL_WHITELIST_BINOC>
<#ARSENAL_WHITELIST_ITEMS>
<#ARSENAL_WHITELIST_ACCS>>