#include "\A3\Ui_f\hpp\defineResinclDesign.inc"
#define ID_RIFLEGRENADE 909080

[{
  params ["_display"];
  disableSerialization;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONSAVE) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONLOAD) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONEXPORT) ctrlShow false;
  (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONIMPORT) ctrlShow false;
  private _BUTTONRANDOM = (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_BUTTONRANDOM);
  _BUTTONRANDOM ctrlShow false;

  // Riflegrenade handling (Replaces Random Loadout button spot)
  private _BTN_RIFLEGRENADE = _display ctrlCreate ["RscButton", ID_RIFLEGRENADE, (_display displayCtrl IDC_RSCDISPLAYARSENAL_CONTROLSBAR_CONTROLBAR)];
  _BTN_RIFLEGRENADE ctrlSetPosition (ctrlPosition _BUTTONRANDOM);
  _BTN_RIFLEGRENADE ctrlSetScale (ctrlScale _BUTTONRANDOM);
  _BTN_RIFLEGRENADE ctrlSetEventHandler ["buttonclick", "createDialog ""fpc_arsenal_riflegrenades"""];
  _BTN_RIFLEGRENADE ctrlSetText ("Riflegrenade Menu");
  _BTN_RIFLEGRENADE ctrlCommit 0;
}, _this] call CBA_fnc_execNextFrame;
