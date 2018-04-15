/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_display"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

if (!(_target getVariable ["restrained", false]) && !(_target getVariable ["surrender", false])) exitWith {
	["La cible doit avoir les mains sur la tête ou être menottée pour pouvoir effecter un test ADN."] call AlysiaClient_fnc_error;
};

if (!([false, "adn", 1] call AlysiaClient_fnc_handleInv)) exitWith {
	["Vous n'avez pas de test ADN."] call AlysiaClient_fnc_error;
};

if (!(["Test ADN", 30, _target] call AlysiaClient_fnc_showProgress)) exitWith {};

if (!(_target getVariable ["restrained", false]) && !(_target getVariable ["surrender", false])) exitWith {
	["La cible doit avoir les mains sur la tête ou être menottée pour pouvoir effecter un test ADN."] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayDefaultText";

disableSerialization;
_display = findDisplay 68000;
if (isNull _display) exitWith {};

(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Résultat ADN</t>";
(_display displayCtrl 68001) ctrlSetStructuredText parseText format
[
	"<t align='left'>Résultat</t><t align='right'>%1</t>",
	[(getPlayerUID _target)] call AlysiaClient_fnc_adn_get
];
