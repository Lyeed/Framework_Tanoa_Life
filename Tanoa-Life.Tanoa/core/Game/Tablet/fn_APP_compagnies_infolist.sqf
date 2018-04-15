/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 94702;
lbClear _list;

{
	_index = _list lbAdd format["%1 - Prix : %2$ - Licence : %3", getText(_x >> "name"), [getNumber(_x >> "price")] call AlysiaClient_fnc_numberText, [getText(_x >> "license")] call AlysiaClient_fnc_licenseGetName];
	_list lbSetPicture [_index, getText(_x >> "image")];
	_list lbSetTooltip [_index, _list lbText _index];
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_COMPANIES_TYPES"));
if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
} else {
	lbSort [_list, "ASC"];
};
