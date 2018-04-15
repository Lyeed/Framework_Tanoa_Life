/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_forfait", "_price"];

_sel = lbCurSel 8110;
if (_sel isEqualTo -1) exitWith {};

_forfait = lbData[8110, _sel];
if (_forfait isEqualTo g_phone_forfait) exitWith {
	["Vous possedez déjà ce forfait."] call AlysiaClient_fnc_error;
};

_price = getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> _forfait >> "bill");
if (g_atm < _price) exitWith {
	["Vous n'avez pas assez d'argent."] call AlysiaClient_fnc_error;
};

[_forfait] call AlysiaClient_fnc_phone_forfait_change;
[false, _price, "Forfait téléphonique"] call AlysiaClient_fnc_handleATM;
playSound "buy";
["STORE_FORFAIT"] spawn AlysiaClient_fnc_tabletApp;
