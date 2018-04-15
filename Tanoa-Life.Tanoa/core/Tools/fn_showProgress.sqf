/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_text", "_time", "_ui", "_progress", "_ctrl_text", "_cP", "_inc", "_ret_status", "_curVeh", "_ret_reason", "_anim", "_sound", "_distanceMax", "_object_define"];
_text = [_this, 0, "", [""]] call BIS_fnc_param;
_time = [_this, 1, 0, [0]] call BIS_fnc_param;
_object = [_this, 2, objNull, [objNull]] call BIS_fnc_param;
_sound = [_this, 3, "", [""]] call BIS_fnc_param;
_anim = [_this, 4, "", [""]] call BIS_fnc_param;

if (g_action_inUse) exitWith {false};

5 cutRsc ["RscTitleProgress","PLAIN"];

disableSerialization;
_ui = uiNameSpace getVariable ["RscTitleProgress", displayNull];
if (isNull _ui) exitWith {false};

g_interrupted = false;
g_action_inUse = true;

_ret_status = false;
_ret_reason = "Inconnu";

_curVeh = vehicle player;
_cP = 0;
_inc = 1 / _time * 0.1;

_ctrl_progress = _ui displayCtrl 38201;
_ctrl_progress progressSetPosition 0;

_ctrl_text = _ui displayCtrl 38202;
_ctrl_text ctrlSetText _text;

if (_sound != "") then {
	playSound _sound;
};

if (isNull _object) then
{
	_distanceMax = 0;
	_object_define = false;
} else {
	_distanceMax = (player distance _object) + 1.5;
	_object_define = true;
};

while {g_action_inUse} do
{
	if (_cP >= 1) exitWith {_ret_status = true};

	if ((player getVariable ["is_coma", false]) || !(alive player)) exitWith {_ret_reason = "Vous êtes dans le coma"};
	if (g_interrupted) exitWith {_ret_reason = "Vous avez interrompu l'action"};
	if (player getVariable ["restrained", false]) exitWith {_ret_reason = "Vous êtes menotté"};
	if (player getVariable ["surrender", false]) exitWith {_ret_reason = "Vous avez les mains sur la tête"};
	if (_object_define && {isNull _object}) exitWith {_ret_reason = "Vous êtes trop loin"};
	if (_object_define && {(player distance _object) > _distanceMax}) exitWith {_ret_reason = "Vous êtes trop loin"};
	if (_curVeh != (vehicle player)) exitWith {_ret_reason = "Vous êtes entré ou sorti de votre véhicule"};

	if ((_anim != "") && ((vehicle player) isEqualTo player)) then
	{
		if ((animationState player) != _anim) then
		{
			[player, _anim] remoteExecCall ["switchMove", -2];
			player playMove _anim;
		};
	};

	_ctrl_progress progressSetPosition _cP;
	_ctrl_text ctrlSetText format["%1 (%2%3) (%4s)", _text, floor(_cP * 100), "%", floor(_time)];

	uiSleep 0.1;

	_cP = _cP + _inc;
	_time = _time - 0.1;
};

if ((_anim != "") && ((vehicle player) isEqualTo player)) then {
	[player, ""] remoteExecCall ["switchMove", -2];
};

if (!_ret_status) then
{
	_ctrl_progress progressSetPosition 0;
	_ctrl_text ctrlSetText format["Annulé (%1)", _ret_reason];
	uiSleep 1.5;
};

g_action_inUse = false;
5 cutText ["", "PLAIN"];

_ret_status;
