/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_display", "_action", "_licenses_text", "_owner", "_insurance", "_immatriculation"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (_target isEqualTo (vehicle player)) then {
	_action = true;
} else {
	_action = ["Inspection de la boîte à gants", 3, _target] call AlysiaClient_fnc_showProgress;
};

if (!_action) exitWith {};

_info = _target getVariable "info";

createDialog "RscDisplayDefaultText";

disableSerialization;
_display = findDisplay 68000;

(_display displayCtrl 68002) ctrlSetText "Alysia_Client_Texture\Data\vehicle\background.jpg";
(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Boîte de gants</t>";

if ((getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_target) >> "disableOwnerInfos") isEqualTo 0) && !(isNil "_info")) then
{
    _licenses_text = "";
    {
		_licenses_text = _licenses_text + format["- %1<br/>", [_x] call AlysiaClient_fnc_licenseGetName];
    } forEach getArray(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_target) >> "licenses");

    _immatriculation = _info select 2;
    _owner = _info select 1;
    _insurance = if ((_info select 3) isEqualTo 1) then {"<t color='#8cff9b'>Oui</t>"} else {"<t color='#ff8c8c'>Non</t>"};
} else {
	_licenses_text = "Inconnu";
	_owner = "Inconnu";
	_insurance = "Inconnu";
	_immatriculation = "Inconnu";
};

(_display displayCtrl 68001) ctrlSetStructuredText parseText format
[
		"<t align='left'>Immatriculation</t><t align='right'>%1</t><br/>"
	+	"<t align='left'>Propriétaire</t><t align='right'>%2</t><br/>"
	+	"<t align='left'>Assuré</t><t align='right'>%3</t><br/>"
	+	"<t align='left'>Carburant</t><t align='right'>%4</t><br/>"
	+	"<t align='left'>Licence(s) requise(s) :</t><br/>"
	+	"<t align='left'>%5</t>",
	_immatriculation,
	_owner,
	_insurance,
	getText(missionConfigFile >> "ALYSIA_FUEL" >> getText(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_target) >> "fuel") >> "name"),
	_licenses_text
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
