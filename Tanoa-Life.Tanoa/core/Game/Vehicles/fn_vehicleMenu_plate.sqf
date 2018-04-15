/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_display", "_immatriculation", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_info = _target getVariable "info";

createDialog "RscDisplayDefaultText";

disableSerialization;
_display = findDisplay 68000;

(_display displayCtrl 68002) ctrlSetText "Alysia_Client_Texture\Data\vehicle\background.jpg";
(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Immatriculation</t>";

if ((getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_target) >> "disableOwnerInfos") isEqualTo 0) && !(isNil "_info")) then {
    _immatriculation = _info select 2;
} else {
	_immatriculation = "Inconnu";
};

(_display displayCtrl 68001) ctrlSetStructuredText parseText format
[
	"<t align='left'>Immatriculation</t><t align='right'>%1</t><br/>",
	_immatriculation
];

while {!(isNull _display)} do
{
	if (
		(isNull _target) ||
		!(alive _target) ||
		(player distance _target) > ((((boundingBox _target) select 1) select 0) + 2.5) ||
		(player getVariable ["restrained", false]) ||
		(player getVariable ["surrender", false])
	) exitWith {closeDialog 0};
	uiSleep 0.5;
};
