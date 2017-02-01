class IGUIBack {
  type = 0;
  idc = 124;
  style = 128;
  text = "";
  colorText[] = {0,0,0,0};
  font = "RobotoCondensed";
  sizeEx = 0;
  shadow = 0;
  x = 0.1;
  y = 0.1;
  w = 0.1;
  h = 0.1;
  colorbackground[] = {
    "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
    "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
    "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
    "(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
  };
};

class RscPicture {
  deletable = 0;
  fade = 0;
  access = 0;
  type = 0;
  idc = -1;
  style = 48;
  colorBackground[] = {0,0,0,0};
  colorText[] = {1,1,1,1};
  font = "TahomaB";
  sizeEx = 0;
  lineSpacing = 0;
  text = "";
  fixedWidth = 0;
  shadow = 0;
  x = 0;
  y = 0;
  w = 0.2;
  h = 0.15;
  tooltipColorText[] = {1,1,1,1};
  tooltipColorBox[] = {1,1,1,1};
  tooltipColorShade[] = {0,0,0,0.65};
};

class RscStructuredText {
  deletable = 0;
  fade = 0;
  access = 0;
  type = 13;
  idc = -1;
  style = 0;
  colorText[] = {1,1,1,1};
  class Attributes {
    font = "RobotoCondensed";
    color = "#ffffff";
    colorLink = "#D09B43";
    align = "left";
    shadow = 1;
  };
  x = 0;
  y = 0;
  h = 0.035;
  w = 0.1;
  text = "";
  size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  shadow = 1;
};

class RscText {
  deletable = 0;
  fade = 0;
  access = 0;
  type = 0;
  idc = -1;
  colorBackground[] = {0,0,0,0};
  colorText[] = {1,1,1,1};
  text = "";
  fixedWidth = 0;
  x = 0;
  y = 0;
  h = 0.037;
  w = 0.3;
  style = 0;
  shadow = 1;
  colorShadow[] = {0,0,0,0.5};
  font = "RobotoCondensed";
  SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  linespacing = 1;
  tooltipColorText[] = {1,1,1,1};
  tooltipColorBox[] = {1,1,1,1};
  tooltipColorShade[] = {0,0,0,0.65};
};

class RscButton {
  deletable = 0;
  fade = 0;
  access = 0;
  type = 1;
  text = "";
  colorText[] = {1,1,1,1};
  colorDisabled[] = {1,1,1,0.25};
  colorBackground[] = {0,0,0,0.5};
  colorBackgroundDisabled[] = {0,0,0,0.5};
  colorBackgroundActive[] = {0,0,0,1};
  colorFocused[] = {0,0,0,1};
  colorShadow[] = {0,0,0,0};
  colorBorder[] = {0,0,0,1};
  soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
  soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
  soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
  soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
  idc = -1;
  style = 2;
  x = 0;
  y = 0;
  w = 0.095589;
  h = 0.039216;
  shadow = 2;
  font = "RobotoCondensed";
  sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  url = "";
  offsetX = 0;
  offsetY = 0;
  offsetPressedX = 0;
  offsetPressedY = 0;
  borderSize = 0;
};