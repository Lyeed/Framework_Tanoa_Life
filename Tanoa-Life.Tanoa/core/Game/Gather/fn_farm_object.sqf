/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_config", "_target", "_tool", "_sounds", "_license"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_config = missionConfigFile >> "ALYSIA_FARMING_OBJECT" >> typeOf(_target);
if (!(isClass _config)) exitWith {};

_tool = getText(_config >> "tool");
if ((_tool != "") && ((currentWeapon player) != _tool)) exitWith
{
	[
		format
		[
			"Vous n'avez pas le bon outil.<br/>Vous avez besoin de <t color='#FF8000'>%1</t> pour commencer la récolte.",
			getText(configFile >> "CfgWeapons" >> getText(_config >> "tool") >> "displayName")
		]
	] call AlysiaClient_fnc_error;
};

_license = getText(_config >> "license");
if ((_license != "") && {!([_license] call AlysiaClient_fnc_hasLicense)}) then
{
	[
		format
		[
			"Vous ne possédez pas <t color='#FF8000'>%1</t>.<br/>" +
			"La récolte reste possible mais vous êtes dans l'<t color='#FF0000'>illégalité</t>.",
			[_license] call AlysiaClient_fnc_licenseGetName
		]
	] call AlysiaClient_fnc_info;
};

if (g_action_inUse) exitWith {};

_sounds = getArray(_config >> "sounds");
g_interrupted = false;
g_action_inUse = true;

while {(g_action_inUse && !g_interrupted)} do
{
	if (
			!(alive player) ||
			(player getVariable ["is_coma", false]) ||
			((vehicle player) != player) ||
			((speed player) > 1) ||
			(player getVariable ["restrained", false]) ||
			(player getVariable ["surrender", false]) ||
			((_tool != "") && ((currentWeapon player) != _tool))
	) exitWith {titleText["* Récolte annulée *", "PLAIN DOWN"]};

	if (_tool isEqualTo "") then
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		uiSleep 1.5;
	} else {
		player playActionNow "Skyline_SwingAnim_Outils";
		uiSleep 0.25;
	};

	if (!g_action_inUse || g_interrupted) exitWith {};

	if (count(_sounds) > 0) then {
		playSound (_sounds call BIS_fnc_selectRandom);
	};

	private "_space";
	_space = true;
	_times = (_target getVariable ["farming", 0]) + 1;
	if (_times >= getNumber(_config >> "times")) then
	{

		{
			private "_amount";
			_amount = 0;

			if ((_x select 2) isEqualTo 1) then {
				_amount = [(_x select 0), round(random(_x select 1)) + 1, g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
			} else {
				_amount = [(_x select 0), (_x select 1), g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
			};

			if ((_amount isEqualTo 0) && (_forEachIndex isEqualTo 0)) exitWith {_space = false};
			[true, (_x select 0), _amount] call AlysiaClient_fnc_handleInv;
		} forEach getArray(_config >> "receive");
		_target setVariable ["farming", 0];
	} else {
		_target setVariable ["farming", _times];
	};

	if (!_space) exitWith {["Votre inventaire est plein"] call AlysiaClient_fnc_info};
	uiSleep 1.3;
};

g_action_inUse = false;
