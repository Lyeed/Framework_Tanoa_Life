/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_edit", "_bad"];

_edit = ctrlText 101004;

if (_edit != (uiNamespace getVariable "g_display_edit_default")) then
{
	if (([_edit] call CBA_fnc_strLen) <= (uiNamespace getVariable "g_display_edit_CMa")) then
	{
		if (([_edit] call CBA_fnc_strLen) >= (uiNamespace getVariable "g_display_edit_CMi")) then
		{
			_bad = [_edit, (uiNamespace getVariable "g_display_edit_allowed")] call AlysiaClient_fnc_TextAllowed;
			if (_bad isEqualTo "") then
			{
				missionNamespace setVariable ["g_display_edit_ret", _edit];
				closeDialog 0;
			} else {
				[format["Vous utilisez un caractère interdit (<t color='#FF8000'>%1</t>).", _bad]] call AlysiaClient_fnc_error;
			};
		} else {
			[format["Vous devez entrer au moins <t color='#FF8000'>%1</t> caractères.", (uiNamespace getVariable "g_display_edit_CMi")]] call AlysiaClient_fnc_error;
		};
	} else {
		[format["Vous ne pouvez pas dépasser <t color='#FF8000'>%1</t> caractères.", (uiNamespace getVariable "g_display_edit_CMa")]] call AlysiaClient_fnc_error;
	};
} else {
	["La valeur entrée est identique à celle par défaut."] call AlysiaClient_fnc_error;
};
