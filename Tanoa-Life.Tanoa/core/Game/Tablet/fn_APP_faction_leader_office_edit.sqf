/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target_uid", "_sel_edit", "_target_object", "_sel_member", "_rank_actual"];

_sel_member = lbCurSel 8736;
if (_sel_member isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de membre."] call AlysiaClient_fnc_error;
};

_sel_edit = lbCurSel 8737;
if (_sel_member isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de grade."] call AlysiaClient_fnc_error;
};

_target_uid = lbData[8736, _sel_member];
if (_target_uid isEqualTo (getplayerUID player)) exitWith {
	["Vous ne pouvez pas effectuer une action sur vous même."] call AlysiaClient_fnc_error;
};

_rank_actual = player getVariable ["rank", 0];
if (_sel_edit > _rank_actual) exitWith {
	["Vous ne pouvez pas nommer quelqu'un plus gradé que vous."] call AlysiaClient_fnc_error;
};
if (_rank_actual < (lbValue[8736, _sel_member])) exitWith {
	["Vous ne pouvez pas changer le grade de quelqu'un de plus gradé que vous."] call AlysiaClient_fnc_error;
};

[_target_uid, _sel_edit, playerSide] remoteExec ["AlysiaServer_fnc_factionMemberModify", 2];

[

	format
	[
		"Changement de grade effectué<br/><br/>Nouveau grade : <t color='#01DF3A'>%1</t>.",
		[playerSide, _sel_edit] call AlysiaClient_fnc_rankToStr
	]
] call AlysiaClient_fnc_info;

_target_object = [_target_uid] call AlysiaClient_fnc_getPlayerFromUID;
if (!(isNull _target_object)) then
{
	[
		format
		[
			"Le %1 %2 a changé votre grade<br/><br/>Nouveau grade : <t color='#01DF3A'>%3</t>.",
			[playerSide, _rank_actual] call AlysiaClient_fnc_rankToStr,
			player getVariable "realname",
			(lbText [8737, _sel_edit])
		]
	] remoteExecCall ["AlysiaClient_fnc_info", _target_object];
	_target_object setVariable ["rank", _sel_edit, true];
	lbSetValue [_sel_member, _sel_edit];
};

lbSetCurSel [8736, -1];
lbSetCurSel [8737, -1];
