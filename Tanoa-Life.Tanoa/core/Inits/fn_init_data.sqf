/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

// ======== ROLEPLAY INFO ===========
g_firstName = _this select 2;
g_lastName = _this select 3;
g_birth = _this select 4;
g_nationality = _this select 5;
g_sexe = _this select 6;

// ======== DYNAMIC MARKERS ===========
{
	if (((getMarkerPos (_x select 0)) distance (_x select 1)) < 10) then
	{
		g_dynamic_markers pushBack _x;
		(_x select 0) setMarkerAlphaLocal 1;
	};
} forEach (_this select 7);

// ======== MEDICAL ===========
player allowDamage true;
[(_this select 9), (_this select 10), (_this select 11)] spawn
{
	waitUntil {(missionNamespace getVariable ["g_connected", false])};
	if (_this select 2) then {
		[] spawn AlysiaClient_fnc_handleComa;
	} else {
		[((4000 - (_this select 0)) * -1)] call AlysiaClient_fnc_handleBlood;
		[(_this select 1)] call AlysiaClient_fnc_handleBleed;
	};
};
g_is_alive = _this select 15;
g_deseases = (_this select 16) select 0;
g_medecine = (_this select 16) select 1;
g_vaccins = (_this select 16) select 2;
g_hunger = _this select 17;
g_thirst = _this select 18;

// ======== JAIL ===========
if ((_this select 23) isEqualTo "") then {
	g_arrest_Escape = _this select 28;
} else {
	g_arrest_Prison = call compile (_this select 23);
	g_arrest_Cellule = _this select 24;
	g_arrest_Time = _this select 25;
	g_arrest_Caution = _this select 26;
	g_arrest_Reason = _this select 27;
	g_arrest_Gear = _this select 29;
};

if (g_arrest_Time > 0) then
{
	if (g_arrest_Time isEqualTo -1) then {
		g_arrest_Escape = true;
	} else {
		player setVariable ["arrested", true, true];
	};
};

// ======== PHONE ===========
if ((_this select 30) != "") then {
	player setVariable ["number", (_this select 30), true];
};
g_phone_contacts = _this select 31;
[g_phone_messages, (_this select 32)] call BIS_fnc_arrayPushStack;
g_phone_forfait = _this select 33;
g_phone_blacklist = _this select 34;
{
	_config = missionConfigFile >> "ALYSIA_SHOP_APPLICATIONS" >> _x;
	if (isClass(_config)) then
	{
		if (str(playerSide) in getArray(_config >> "sides")) then
		{
			g_apps pushBack _x;
		};
	};
} forEach (_this select 35);
// g_choice = _this select 36;
[(_this select 38)] call AlysiaClient_fnc_handleAlcool;
if ((_this select 39) isEqualTo 1) then {
	player setVariable ["bullet_check", true, true];
};
g_phone_annuaire = _this select 40;

// ======== LICENSES ===========
{
	_config = missionConfigFile >> "ALYSIA_LICENSES" >> _x;
	if (isClass(_config)) then
	{
		if (isClass(_config >> "factions" >> str(playerSide))) then
		{
			_condition = getText(_config >> "factions" >> str(playerSide) >> "condition");
			if ((_condition isEqualTo "") || ((_condition != "") && {call compile _condition})) then
			{
				missionNamespace setVariable [format["license_%1", _x], true];
			};
		};
	};
} forEach (_this select 41);

// ======== MONEY ===========
g_cash = _this select 42;
g_atm = _this select 43;

// ======== INVENTORY ARMA ===========
[(_this select 45)] call AlysiaClient_fnc_loadGear;

// ======== INVENTORY VIRTUAL ===========
g_maxWeight = 100;
_inv = _this select 44;
_tmp = profileNamespace getVariable "temp_inventory";
if (count(_inv) > 0) then
{
	{
	    [true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
	} forEach _inv;
	if (!(isNil "_tmp")) then
	{
	 	if (!(_inv isEqualTo _tmp)) then
	 	{
			[profileName, getPlayerUID player, _inv, _tmp] remoteExecCall ["AlysiaServer_fnc_logTemporyInventory", 2];
			[true] call AlysiaClient_fnc_temporyInventory_reset;
	 	};
	};
};
g_maxWeight = 24;
// ======== SIDE ===========
switch (playerSide) do
{
	case west:
	{
		if ((call g_WESTLevel) > 0) then {player setVariable ["rank", (call g_WESTLevel), true]};
	};
	case east:
	{
		if ((call g_EASTLevel) > 0) then {player setVariable ["rank", (call g_EASTLevel), true]};
	};
	case civilian:
	{
		if ((call g_CIVLevel) > 0) then {player setVariable ["rank", (call g_CIVLevel), true]};
	};
	case independent:
	{
		if ((call g_GUERLevel) > 0) then {player setVariable ["rank", (call g_GUERLevel), true]};
	};
};

g_nextPay = time + (getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "salary" >> "timer") * 60);

if (isClass(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait)) then
{
	if (!(str(playerSide) in getArray(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "sides"))) then
	{
		["lite"] call AlysiaClient_fnc_phone_forfait_change;
	};
};

true;
