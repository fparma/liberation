#include "\A3\Ui_f\hpp\defineResinclDesign.inc"

[{
  params ["_display"];
  disableSerialization;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONSAVE) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONLOAD) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONEXPORT) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONIMPORT) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONRANDOM) ctrlShow false;
}, _this] call CBA_fnc_execNextFrame;