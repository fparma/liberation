{ _x allowDamage false; (vehicle _x) allowDamage false; } foreach allPlayers;
GRLIB_endgame = 1;
sleep 20;

[] call compileFinal preprocessFileLineNumbers "scripts\client\ui\end_screen.sqf";