/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_firstname", "_lastName", "_birth", "_sexe", "_action", "_bad", "_displayError"];
_displayError =
{
	((findDisplay 1500) displayCtrl 1508) ctrlSetStructuredText parseText format["<t align='center' color='#DF0101'>%1</t>", _this];
	playSound "addItemFailed";
};

_firstname = ctrlText 1501;
if (_firstname isEqualTo "") exitWith {
	"Vous n'avez pas entré de prénom pour votre personnage" call _displayError;
};

_bad = [_firstname, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzéè-à "] call AlysiaClient_fnc_TextAllowed;
if (_bad != "") exitWith {
	["Vous utilisez un caractère interdit dans le prénom de votre personnage (%1)", _bad] call _displayError;
};
if (((toArray(_firstname) select 0) < 65) || ((toArray(_firstname) select 0) > 90)) exitWith {
	"Le prénom de votre personnage doit commencer par une majuscule" call _displayError;
};

_lastName = ctrlText 1502;
if (_lastName isEqualTo "") exitWith {
	"Vous n'avez pas entré de nom de famille pour votre personnage" call _displayError;
};

_bad = [_lastName, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzéè- "] call AlysiaClient_fnc_TextAllowed;
if (_bad != "") exitWith {
	format["Vous utilisez un caractère interdit dans le nom de famille de votre personnage (%1)", _bad] call _displayError;
};
if (((toArray(_lastName) select 0) < 65) || ((toArray(_lastName) select 0) > 90)) exitWith {
	"Le nom de famille de votre personnage doit commencer par une majuscule" call _displayError;
};
if (format["%1 %2", _firstname, _lastName] != profileName) exitWith {
	"Le prénom et le nom entrés ne correspondent pas à votre nom de profil ArmA 3" call _displayError;
};

_birth = [lbValue[1510, (lbCurSel 1510)], lbValue[1509, (lbCurSel 1509)], lbValue[1503, (lbCurSel 1503)]];

_sexe = lbText[1505, (lbCurSel 1505)];
if (_sexe isEqualTo "") exitWith {
	"Vous n'avez pas sélectionné le sexe de votre personnage" call _displayError;
};

_action =
[
	format
	[
		"Êtes-vous sûr des informations entrées ? Une fois validées vous devrez <t color='#FF4000'>changer d'identité</t> pour pouvoir les modifier<br/><br/><t align='left'>Sexe</t><t align='right'>%5</t><br/><t align='left'>Prénom</t><t align='right'>%1</t><br/><t align='left'>Nom</t><t align='right'>%2</t><br/><t align='left'>Âge</t><t align='right'>%3</t><br/><t align='left'>Origine</t><t align='right'>%4</t>",
		_firstname,
		_lastName,
		(_birth call AlysiaClient_fnc_age),
		(lbText[1504, (lbCurSel 1504)]),
		_sexe
	],
	"Validation",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	g_firstName = _firstname;
	g_lastName = _lastName;
	g_birth = _birth;
	g_nationality = lbData[1504, (lbCurSel 1504)];
	g_sexe = _sexe;
	closeDialog 0;
};
