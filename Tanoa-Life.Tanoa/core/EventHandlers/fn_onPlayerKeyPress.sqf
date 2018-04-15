/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (
	(_this in (actionKeys "PersonView")) && ((
		g_firstCombatActive &&
		((vehicle player) isKindOf "Man")
	) || (
		!((vehicle player) isKindOf "Man") &&
		(getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(vehicle player) >> "forceFirstPersonView") isEqualTo 1)
	))
) exitWith {true};

if (
	(_this in (actionKeys "MiniMap")) ||
	(_this in (actionKeys "MiniMapToggle")) ||
	(_this in (actionKeys "Diary")) ||
	(_this in (actionKeys "SelectAll")) ||
	(_this in (actionKeys "ForceCommandingMode")) ||
	(_this in (actionKeys "TacticalView")) ||
	(_this in (actionKeys "Tasks"))
) exitWith {true};

if (
		(
			(player getVariable ["surrender", false]) ||
			(player getVariable ["restrained", false]) ||
			((animationState player) isEqualTo "incapacitated")
		) &&
		!(_this isEqualTo (((["Alysia", "actionSurrender"] call CBA_fnc_getKeybind) select 5) select 0)) &&
		!(_this isEqualTo (((["Alysia", "actionSilent"] call CBA_fnc_getKeybind) select 5) select 0)) &&
		!(_this isEqualTo (((["TFAR", "ChangeSpeakingVolume"] call CBA_fnc_getKeybind) select 5) select 0))
) exitWith {true};

if (
		((missionNamespace getVariable ["calling", false]) || ((headgear player) isEqualTo "mgsr_headbag")) &&
		{(
			(_this isEqualTo (((["TFAR", "OpenSWRadioMenu"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWTransmit"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWTransmitAlt"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWTransmitAdditional"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel1"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel2"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel3"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel4"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel5"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel6"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel7"] call CBA_fnc_getKeybind) select 5) select 0)) ||
			(_this isEqualTo (((["TFAR", "SWChannel8"] call CBA_fnc_getKeybind) select 5) select 0))
		)}
) exitWith {true};

if (
		(player getVariable ["is_coma", false]) ||
		!(alive player)
) exitWith {true};

if (
		(_this in (actionKeys "Fire")) &&
		g_staff_god
) exitWith {true};

if (g_action_inUse) exitWith
{
	if ((_this in [17, 40, 31, 32]) && !g_interrupted) then {
		g_interrupted = true;
	};
	true;
};

if (g_staff_spec && (_this isEqualTo 1)) exitWith
{
	[] call AlysiaClient_fnc_APP_staff_spec_OFF;
	true;
};

if (_this in (actionKeys "ShowMap")) then {[] spawn AlysiaEvent_fnc_onPlayerMapOpen};

false;
