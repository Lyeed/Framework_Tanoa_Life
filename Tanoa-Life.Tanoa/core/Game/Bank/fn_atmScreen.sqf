/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_action", "_target", "_display", "_title", "_balance", "_btnL1", "_btnL2", "_btnL3", "_btnL4", "_btnR1", "_btnR2", "_btnR3", "_btnR4", "_txtL1", "_txtL2", "_txtL3", "_txtL4", "_txtR1", "_txtR2", "_txtR3", "_txtR4", "_edit"];
_action = [_this, 0, "", [""]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

disableSerialization;
_display = findDisplay 15000;
if (isNull _display) then
{
	createDialog "RscDisplayATM";
	_display = findDisplay 15000;
};

g_interaction_target = _target;

_title = _display displayCtrl 15001;
_balance = _display displayCtrl 15002;
_btnL1 = _display displayCtrl 15003;
_btnL2 = _display displayCtrl 15004;
_btnL3 = _display displayCtrl 15005;
_btnL4 = _display displayCtrl 15006;
_btnR1 = _display displayCtrl 15007;
_btnR2 = _display displayCtrl 15008;
_btnR3 = _display displayCtrl 15009;
_btnR4 = _display displayCtrl 15010;
_txtL1 = _display displayCtrl 15011;
_txtL2 = _display displayCtrl 15012;
_txtL3 = _display displayCtrl 15013;
_txtL4 = _display displayCtrl 15014;
_txtR1 = _display displayCtrl 15015;
_txtR2 = _display displayCtrl 15016;
_txtR3 = _display displayCtrl 15017;
_txtR4 = _display displayCtrl 15018;
_edit = _display displayCtrl 15019;

{
	_x ctrlShow false;
} forEach ([_btnR1, _btnR2, _btnR3, _btnR4, _btnL1, _btnL2, _btnL3, _btnL4, _txtR1, _txtR2, _txtR3, _txtR4, _txtL1, _txtL2, _txtL3, _txtL4, _edit]);

switch (_action) do
{
	case "home":
	{
		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Distributeur</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Solde </t><t align='center' size='1.2'><t color='#74DF00'>%1</t>$</t>", [g_atm] call AlysiaClient_fnc_numberText];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retrait</t>";
		_btnL1 buttonSetAction "[""withdraw"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Dépôt</t>";
		_btnR1 buttonSetAction "[""deposit"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		_config_atm = missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target);
		if (getNumber(_config_atm >> "company") isEqualTo 1) then
		{
			if (!(isNull g_company)) then
			{
				_info = g_company getVariable ["company_info", []];
				if (!(g_company getVariable ['construction', false])) then
				{
					if ((_info select 1) isEqualTo (getPlayerUID player)) then
					{
						_txtL2 ctrlSetStructuredText parseText "<t align='left'>Entreprise</t>";
						_btnL2 buttonSetAction "[""home_company"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
						_btnL2 ctrlShow true;
						_txtL2 ctrlShow true;
					};
				};
			};
		};

		if (getNumber(_config_atm >> "money_faction") isEqualTo 1) then
		{
			_config_bank_faction = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "bank_faction";
			if (isClass(_config_bank_faction)) then
			{
				if ((player getVariable ["rank", 0]) >= getNumber(_config_bank_faction >> "rank")) then
				{
					_txtL4 ctrlSetStructuredText parseText "<t align='left'>Faction</t>";
					_btnL4 buttonSetAction "[""home_faction"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
					_btnL4 ctrlShow true;
					_txtL4 ctrlShow true;
				};
			};
		};

		if (getNumber(_config_atm >> "launder_transfer") isEqualTo 1) then
		{
			if ((["illegal_money"] call AlysiaClient_fnc_itemCount) > 0) then
			{
				_config_launder = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "launder_transfer";
				if (isClass(_config_launder)) then
				{
					if ((player getVariable ["rank", 0]) >= getNumber(_config_launder >> "rank")) then
					{
						_txtL3 ctrlSetStructuredText parseText "<t align='left'>Saisie</t>";
						_btnL3 buttonSetAction "[] spawn AlysiaClient_fnc_launder_reverse";
						_btnL3 ctrlShow true;
						_txtL3 ctrlShow true;
					};
				};
			};
		};
	};

	case "withdraw":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Retrait</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retirer</t>";
		_btnL1 buttonSetAction "[""withdraw"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if (g_atm >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max");
		} else {
			if (g_atm <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min");
			} else {
				_value = g_atm;
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};

	case "deposit":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Dépôt</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Déposer</t>";
		_btnL1 buttonSetAction "[""deposit"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if (g_cash >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max");
		} else {
			if (g_cash <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min");
			} else {
				_value = g_cash;
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};

	case "home_faction":
	{
		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Distributeur Faction</t>";

		_balance ctrlSetStructuredText parseText format
		[
			"<t align ='left' size='1.2'>Solde </t><t align='center' size='1.2'><t color='#74DF00'>%1</t>$</t>",
			[[playerSide] call AlysiaClient_fnc_atmFactionGet] call AlysiaClient_fnc_numberText
		];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retrait</t>";
		_btnL1 buttonSetAction "[""withdraw_faction"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_txtL1 ctrlShow true;
		_btnL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Dépôt</t>";
		_btnR1 buttonSetAction "[""deposit_faction"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		_txtL4 ctrlSetStructuredText parseText "<t align='left'>Retour</t>";
		_btnL4 buttonSetAction "[""home"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnL4 ctrlShow true;
		_txtL4 ctrlShow true;
	};
	case "withdraw_faction":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Retrait</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retirer</t>";
		_btnL1 buttonSetAction "[""withdraw_faction"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home_faction"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if (([playerSide] call AlysiaClient_fnc_atmFactionGet) >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max");
		} else {
			if (([playerSide] call AlysiaClient_fnc_atmFactionGet) <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min");
			} else {
				_value = ([playerSide] call AlysiaClient_fnc_atmFactionGet);
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};
	case "deposit_faction":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Dépôt</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Déposer</t>";
		_btnL1 buttonSetAction "[""deposit_faction"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home_faction"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if (g_cash >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max");
		} else {
			if (g_cash <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min");
			} else {
				_value = g_cash;
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};

	case "home_company":
	{
		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Distributeur Entreprise</t>";

		_balance ctrlSetStructuredText parseText format
		[
			"<t align ='left' size='1.2'>Solde </t><t align='center' size='1.2'><t color='#74DF00'>%1</t>$</t>",
			[(g_company getVariable ["company_bank", 0])] call AlysiaClient_fnc_numberText
		];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retrait</t>";
		_btnL1 buttonSetAction "[""withdraw_company"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_txtL1 ctrlShow true;
		_btnL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Dépôt</t>";
		_btnR1 buttonSetAction "[""deposit_company"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		_txtL4 ctrlSetStructuredText parseText "<t align='left'>Retour</t>";
		_btnL4 buttonSetAction "[""home"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnL4 ctrlShow true;
		_txtL4 ctrlShow true;
	};
	case "withdraw_company":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Retrait Entreprise</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Retirer</t>";
		_btnL1 buttonSetAction "[""withdraw_company"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home_company"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if ((g_company getVariable ["company_bank", 0]) >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_max");
		} else {
			if ((g_company getVariable ["company_bank", 0]) <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "withdraw_min");
			} else {
				_value = (g_company getVariable ["company_bank", 0]);
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};
	case "deposit_company":
	{
		private "_value";

		_title ctrlSetStructuredText parseText "<t align='center' size='1.5'>Dépôt Entreprise</t>";
		_balance ctrlSetStructuredText parseText format["<t align ='left' size='1.2'>Montant</t>"];

		_txtL1 ctrlSetStructuredText parseText "<t align='left'>Déposer</t>";
		_btnL1 buttonSetAction "[""deposit_company"", g_interaction_target] call AlysiaClient_fnc_atmAction";
		_btnL1 ctrlShow true;
		_txtL1 ctrlShow true;

		_txtR1 ctrlSetStructuredText parseText "<t align='right'>Retour</t>";
		_btnR1 buttonSetAction "[""home_company"", g_interaction_target] call AlysiaClient_fnc_atmScreen";
		_btnR1 ctrlShow true;
		_txtR1 ctrlShow true;

		_txtR4 ctrlSetStructuredText parseText "<t align='right'>Récupérer Carte</t>";
		_btnR4 buttonSetAction "closeDialog 0";
		_btnR4 ctrlShow true;
		_txtR4 ctrlShow true;

		if (g_cash >= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max")) then {
			_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_max");
		} else {
			if (g_cash <= getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min")) then {
				_value = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(g_interaction_target) >> "deposit_min");
			} else {
				_value = g_cash;
			};
		};
		_edit ctrlSetText ([_value] call AlysiaClient_fnc_powerRemove);
		_edit ctrlShow true;
	};

	default {["Action non reconnue"] call AlysiaClient_fnc_error};
};
