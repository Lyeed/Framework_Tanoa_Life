/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_old_idcs", "_new_idcs", "_display", "_old_ctrls", "_new_ctrls", "_minValue", "_maxValue", "_handleValue", "_old_app", "_new_app", "_old_background_ctrl", "_new_background_ctrl", "_old_background_img", "_new_background_img"];
_old_idcs = [_this, 0, [], [[]]] call BIS_fnc_param;
_new_idcs = [_this, 1, [], [[]]] call BIS_fnc_param;
_new_app = [_this, 2, "", [""]] call BIS_fnc_param;
_old_app = [_this, 3, "", [""]] call BIS_fnc_param;

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

if (_old_app isEqualTo "") exitWith
{
	private "_loading_ctrl";
	ctrlSetText[7502, getText(missionConfigFile >> "RscDisplayTablet" >> "controls" >> format["%1_BACKGROUND", _new_app])];
	_loading_ctrl = _display displayCtrl 7506;
	if (!(isNull _loading_ctrl)) then
	{
		while {((ctrlFade _loading_ctrl) < 1)} do
		{
			_loading_ctrl ctrlSetFade ((ctrlFade _loading_ctrl) + 0.05);
			_loading_ctrl ctrlCommit 0;
			uiSleep 0.05;
		};
	};

	ctrlShow[7501, true];

	{
		ctrlShow[_x, true];
	} forEach _new_idcs;
};

if ((_old_app isEqualTo _new_app) || !(profileNamespace getVariable ["ALYSIA_tablet_animation", true])) exitWith
{
	{
		ctrlShow[_x, false];
	} forEach _old_idcs;

	{
		ctrlShow[_x, true];
	} forEach _new_idcs;

	(_display displayCtrl 7502) ctrlSetText getText(missionConfigFile >> "RscDisplayTablet" >> "controls" >> format["%1_BACKGROUND", _new_app]);
};

_handleValue = ctrlPosition (_display displayCtrl 7501);
_minValue = _handleValue select 0;
_maxValue = _minValue + (_handleValue select 2);

_new_ctrls = [];
{
	_ctrl = _display displayCtrl _x;
	_new_ctrls pushBack [_ctrl, (ctrlPosition _ctrl) select 0];
	_ctrl ctrlSetPosition [_maxValue, (ctrlPosition _ctrl) select 1];
	_ctrl ctrlCommit 0;
} forEach _new_idcs;

_old_ctrls = [];
{
	_ctrl = _display displayCtrl _x;
	_old_ctrls pushBack [_ctrl, (ctrlPosition _ctrl) select 0];
} forEach _old_idcs;

_old_background_img = getText(missionConfigFile >> "RscDisplayTablet" >> "controls" >> format["%1_BACKGROUND", _old_app]);
_new_background_img = getText(missionConfigFile >> "RscDisplayTablet" >> "controls" >> format["%1_BACKGROUND", _new_app]);
_new_background_ctrl = _display displayCtrl 7502;
if (_old_background_img != _new_background_img) then
{
	_new_background_ctrl ctrlSetText _new_background_img;
	_new_background_ctrl ctrlSetFade 1;
	_new_background_ctrl ctrlCommit 0;

	_old_background_ctrl = _display ctrlCreate ["RscPicture", 7506];
	_old_background_ctrl ctrlSetText _old_background_img;
	_old_background_ctrl ctrlSetPosition (ctrlPosition _new_background_ctrl);
	_old_background_ctrl ctrlCommit 0;
};

while {!(isNull _display) && (!(_new_ctrls isEqualTo []) || !(_old_ctrls isEqualTo []) || ((ctrlFade _new_background_ctrl) > 0))} do
{

	{
		_ctrl = _x select 0;
		_position_global = ctrlPosition _ctrl;

		_position_x = (_position_global select 0) - 0.05;
		if (_position_x <= _minValue) then
		{
			_old_ctrls deleteAt _forEachIndex;
			_ctrl ctrlShow false;
			_position_x = _x select 1;
		};

		_ctrl ctrlSetPosition [_position_x, _position_global select 1];
		_ctrl ctrlCommit 0;
	} forEach _old_ctrls;

	{
		_ctrl = _x select 0;
		_default_x = _x select 1;
		_position_global = ctrlPosition _ctrl;

		_position_x = (_position_global select 0) - 0.05;
		if (_position_x <= _default_x) then
		{
			_new_ctrls deleteAt _forEachIndex;
			_position_x = _default_x;
		};

		_ctrl ctrlSetPosition [_position_x, _position_global select 1];
		_ctrl ctrlCommit 0;

		if ((_position_x + (_position_global select 2)) > _maxValue) then {
			_ctrl ctrlShow false;
		} else {
			_ctrl ctrlShow true;
		};
	} forEach _new_ctrls;

	if (_old_background_img != _new_background_img) then
	{
		if ((ctrlFade _old_background_ctrl) < 1) then
		{
			_old_background_ctrl ctrlSetFade ((ctrlFade _old_background_ctrl) + 0.05);
			_old_background_ctrl ctrlCommit 0;
		};

		if ((ctrlFade _new_background_ctrl) > 0) then
		{
			_new_background_ctrl ctrlSetFade ((ctrlFade _new_background_ctrl) - 0.05);
			_new_background_ctrl ctrlCommit 0;
		};
	};

	uiSleep 0.05;
};

if (_old_background_img != _new_background_img) then
{
	ctrlDelete _old_background_ctrl;
};
