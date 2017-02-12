class Params {

  class EnvironmentSettings {
    title = "== ENVIRONMENT SETTINGS ==";
    values[] = {""};
    texts[] = {""};
    default = "";
  };
  class DayTime {
    title = "Time of Day Override:";
    values[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 };
    texts[] = { "No Override", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00", "07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00" };
    default = 0;
  };
  class DayDuration {
    title = "Day duration (hours):";
    values[] = { 48, 24, 16, 12, 9.6, 8, 6.8, 6, 4.8, 4, 3, 2.4, 2, 1.6, 1, 0.66, 0.5, 0.375, 0.25};
    texts[] = { "0.5", "1", "1.5", "2", "2.5", "3","3.5","4","5","6","8","10","12","15","24","36","48","64","96"};
    default = 4;
  };
  class StartingWeather {
   title = "Starting Weather:";
   values[] = {0,1,2,3,4};
   texts[] = {"Clear","Overcast","Rain","Fog","Random"};
   default = 4;
  };

  class Spacer_MissionOptions {
    title = "";
    values[] = {""};
    texts[] = {""};
    default = "";
  };
  class MissionOptions {
    title = "== MISSION OPTIONS ==";
    values[] = {""};
    texts[] = {""};
    default = "";
  };

  class ArsenalLimitation {
    title = "Arsenal Limitation";
    values[] = {1, 0};
    texts[] = {"Yes", "No"};
    default = 1;
  };
  class Unitcap {
    title = $STR_PARAMS_UNITCAP;
    values[] = {0.5,0.75,1,1.25,1.5,2};
    texts[] = {$STR_PARAMS_UNITCAP1,$STR_PARAMS_UNITCAP2,$STR_PARAMS_UNITCAP3,$STR_PARAMS_UNITCAP4,$STR_PARAMS_UNITCAP5,$STR_PARAMS_UNITCAP6};
    default = 1;
  };
  class Difficulty {
    title = $STR_PARAMS_DIFFICULTY;
    values[] = { 0.5, 0.75, 1, 1.25, 1.5, 2, 4, 10 };
    texts[] = { $STR_PARAMS_DIFFICULTY1, $STR_PARAMS_DIFFICULTY2, $STR_PARAMS_DIFFICULTY3, $STR_PARAMS_DIFFICULTY4, $STR_PARAMS_DIFFICULTY5, $STR_PARAMS_DIFFICULTY6, $STR_PARAMS_DIFFICULTY7, $STR_PARAMS_DIFFICULTY8 };
    default = 1;
  };
  class Aggressivity{
    title = $STR_AGGRESSIVITY_PARAM;
    values[] = {0.25,0.5,1,2,4};
    texts[] = {$STR_AGGRESSIVITY_PARAM0, $STR_AGGRESSIVITY_PARAM1,$STR_AGGRESSIVITY_PARAM2,$STR_AGGRESSIVITY_PARAM3,$STR_AGGRESSIVITY_PARAM4};
    default = 1;
  };
  class AdaptToPlayercount{
    title = $STR_PARAM_ADAPT_TO_PLAYERCOUNT;
    values[] = {1,0};
    texts[] = {$STR_PARAMS_ENABLED,$STR_PARAMS_DISABLED};
    default = 1;
  };
  class ResourcesMultiplier {
    title = $STR_PARAMS_RESOURCESMULTIPLIER;
    values[] = { 0.25, 0.5, 0.75, 1, 1.25, 1.5, 2, 3, 5, 10, 20, 50 };
    texts[] = { "x0.25", "x0.5", "x0.75", "x1", "x1.25","x1.5","x2","x3","x5","x10","x20","x50" };
    default = 1;
  };
  class Spacer1 {
    title = "";
    values[] = {""};
    texts[] = {""};
    default = "";
  };
  class Civilians {
    title = $STR_PARAMS_CIVILIANS;
    values[] = {0,0.5,1,2};
    texts[] = {$STR_PARAMS_CIVILIANS1,$STR_PARAMS_CIVILIANS2,$STR_PARAMS_CIVILIANS3,$STR_PARAMS_CIVILIANS4};
    default = 1;
  };
  class PassiveIncome {
    title = $STR_PARAM_PASSIVE_INCOME;
    values[] = {1,0};
    texts[] = { $STR_PARAMS_ENABLED, $STR_PARAMS_DISABLED };
    default = 0;
  };
  class AmmoBounties {
    title = $STR_AMMO_BOUNTIES;
    values[] = {1,0};
    texts[] = { $STR_PARAMS_ENABLED, $STR_PARAMS_DISABLED };
    default = 1;
  };
  class CivPenalties {
    title = $STR_CIV_PENALTIES;
    values[] = {1,0};
    texts[] = { $STR_PARAMS_ENABLED, $STR_PARAMS_DISABLED };
    default = 1;
  };
  class BluforDefenders {
    title = $STR_PARAM_BLUFOR_DEFENDERS;
    values[] = {1,0};
    texts[] = { $STR_PARAMS_ENABLED, $STR_PARAMS_DISABLED };
    default = 1;
  };
  class MaximumFobs {
    title = $STR_PARAM_FOBS_COUNT;
    values[] = {3,5,7,10,15,20,26};
    texts[] = {3,5,7,10,15,20,26};
    default = 26;
  };
  class MaxSquadSize {
    title = $STR_PARAM_SQUAD_SIZE;
    values[] = {0,1,2,4,6,8,10,12,16,20,24,30,36};
    texts[] = {0,1,2,4,6,8,10,12,16,20,24,30,36};
    default = 16;
  };
  class Space2 {
    title = "";
    values[] = {""};
    texts[] = {""};
    default = "";
  };
  class TechnicalOptions {
    title = $STR_PARAMS_TECHNICALOPTIONS;
    values[] = {""};
    texts[] = {""};
    default = "";
  };
  class Permissions {
    title = $STR_PERMISSIONS_PARAM;
    values[] = {1,0};
    texts[] = { $STR_PARAMS_ENABLED, $STR_PARAMS_DISABLED };
    default = 1;
  };
  class CleanupVehicles {
    title = $STR_CLEANUP_PARAM;
    values[] = { 0,1,2,4 };
    texts[] = { $STR_PARAMS_DISABLED, $STR_CLEANUP_PARAM1, $STR_CLEANUP_PARAM2, $STR_CLEANUP_PARAM3 };
    default = 0;
  };
  class FirstFob {
    title = $STR_PARAMS_FIRSTFOB;
    values[] = { 1, 0 };
    texts[] = { $STR_YES, $STR_NO };
    default = 0;
  };
};
