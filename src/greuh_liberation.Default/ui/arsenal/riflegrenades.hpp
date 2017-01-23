//
// missionConfigFile >> "fpc_arsenal_riflegrenades"

#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class fpc_arsenal_riflegrenades {
	idd = 80501;
	movingEnable = false;
	class controls {
    class IGUIBack_2200: IGUIBack
    {
    	idc = 2200;
    	x = 0 * GUI_GRID_W + GUI_GRID_X;
    	y = 0 * GUI_GRID_H + GUI_GRID_Y;
    	w = 40 * GUI_GRID_W;
    	h = 25 * GUI_GRID_H;
    	colorBackground[] = {0.16,0.16,0.16,0.5};
      colorBorder[] = {0,0,0,0.5};
      borderSize = 0.5;
    };
    class RscPicture_1200: RscPicture
    {
    	idc = 1200;
    	text = "\r3f_armes\Data\Icons\R3F_Munitions_ac58_x_ca.paa";
    	x = 1 * GUI_GRID_W + GUI_GRID_X;
    	y = 1 * GUI_GRID_H + GUI_GRID_Y;
    	w = 6 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscPicture_1201: RscPicture
    {
    	idc = 1201;
    	text = "\r3f_armes\Data\Icons\R3F_Munitions_apav40_x_ca.paa";
    	x = 1 * GUI_GRID_W + GUI_GRID_X;
    	y = 7 * GUI_GRID_H + GUI_GRID_Y;
    	w = 6 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscPicture_1202: RscPicture
    {
    	idc = 1202;
    	text = "\r3f_armes\Data\Icons\R3F_Munitions_ecl40_x_ca.paa";
    	x = 1 * GUI_GRID_W + GUI_GRID_X;
    	y = 13 * GUI_GRID_H + GUI_GRID_Y;
    	w = 6 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscPicture_1203: RscPicture
    {
    	idc = 1203;
    	text = "\r3f_armes\Data\Icons\R3F_Munitions_fum40_x_ca.paa";
    	x = 1 * GUI_GRID_W + GUI_GRID_X;
    	y = 19 * GUI_GRID_H + GUI_GRID_Y;
    	w = 6 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscText_1000: RscStructuredText
    {
    	idc = 1000;
    	text = "AC 58 (Anti Tank Riflegrenade)<br /><br />The AC 58 (Anti-Char, 58 mm) is an anti-armour rifle grenade used by the French Army."; //--- ToDo: Localize;
    	x = 8 * GUI_GRID_W + GUI_GRID_X;
    	y = 1 * GUI_GRID_H + GUI_GRID_Y;
    	w = 20 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
      class Attributes {
        align = "left";
        valign = "top";
      };
    };
    class RscText_1001: RscStructuredText
    {
    	idc = 1001;
    	text = "APAV 40 (High Explosive Riflegrenade)<br /><br />The APAV 40 (""Anti-Personnel/Anti-Véhicule, 40mm"") is a 40 mm anti-personnel rifle grenade used by the French Army."; //--- ToDo: Localize;
    	x = 8 * GUI_GRID_W + GUI_GRID_X;
    	y = 7 * GUI_GRID_H + GUI_GRID_Y;
    	w = 20 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscText_1002: RscStructuredText
    {
    	idc = 1002;
    	text = "ECL 40 (Illumination Riflegrenade)<br /><br />The ECL 40 is an Illumination type rifle grenade which deploys a white flare upon firing."; //--- ToDo: Localize;
    	x = 8 * GUI_GRID_W + GUI_GRID_X;
    	y = 13 * GUI_GRID_H + GUI_GRID_Y;
    	w = 20 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscText_1003: RscStructuredText
    {
    	idc = 1003;
    	text = "FUM 40 (White Smoke Riflegrenade)<br /><br />The FUM 40 is a Smoke rifle grenade which deploys white smoke upon firing."; //--- ToDo: Localize;
    	x = 8 * GUI_GRID_W + GUI_GRID_X;
    	y = 19 * GUI_GRID_H + GUI_GRID_Y;
    	w = 20 * GUI_GRID_W;
    	h = 5 * GUI_GRID_H;
      colorBackground[] = {0,0,0,0.5};
    };
    class RscButton_1600: RscButton
    {
    	idc = 1600;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 1 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1601: RscButton
    {
    	idc = 1601;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 7 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1602: RscButton
    {
    	idc = 1602;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 13 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1603: RscButton
    {
    	idc = 1603;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 19 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1604: RscButton
    {
    	idc = 1604;
    	text = "Add to Vest"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 4 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1605: RscButton
    {
    	idc = 1605;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 10 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1606: RscButton
    {
    	idc = 1606;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 16 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
    class RscButton_1607: RscButton
    {
    	idc = 1607;
    	text = "Add to Backpack"; //--- ToDo: Localize;
    	x = 29 * GUI_GRID_W + GUI_GRID_X;
    	y = 22 * GUI_GRID_H + GUI_GRID_Y;
    	w = 10 * GUI_GRID_W;
    	h = 2 * GUI_GRID_H;
    };
	};
};