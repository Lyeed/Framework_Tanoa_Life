/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_price_add", "_price_remove", "_add_to_gouv"];

_price_add = 0;
_price_remove = 0;
_add_to_gouv = 0;

if (!(player getVariable ["arrested", false])) then
{
	private["_amount", "_taxe", "_price", "_config"];
	_config = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "salary";
	if (isClass(_config)) then
	{
		_amount = getNumber(_config >> "amount");
		if (_amount > 0) then
		{
			if (getNumber(_config >> "apply_rank") isEqualTo 1) then {
				_amount = _amount * (player getVariable ["rank", 0]);
			};

			[true, _amount, getText(_config >> "name")] call AlysiaClient_fnc_handleATM;
			_price_add = _price_add + _amount;

			if (gServer_tax_salary_multiplier > 0) then
			{
				_price = _amount * gServer_tax_salary_multiplier;
				_add_to_gouv = _add_to_gouv + _price;
				_price_remove = _price_remove + _price;
				[false, _price, "Cotisation salariale"] call AlysiaClient_fnc_handleATM;
			};
		};
	};
};

if (!isNull(g_company) && !(g_company getVariable ['construction', false])) then
{
	private["_info", "_price_employees", "_price_building"];
	_info = g_company getVariable "company_info";

	_price_employees = getNumber(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> (_info select 2) >> "salary");
	if (_price_employees > 0) then
	{
		if ((_info select 1) isEqualTo (getPlayerUID player)) then
		{
			private "_price";
			_price = 0;

			{
				if (_x != (getPlayerUID player)) then
				{
					_unit = [_x] call AlysiaClient_fnc_getPlayerFromUID;
					if (!isNull(_unit)) then {
						_price = _price + _price_employees;
					};
				};
			} forEach ((g_company getVariable "company_members") select 0);
			if (_price > 0) then
			{
				_price_remove = _price_remove + _price;
				if (!([false, _price, "Salaires des employés"] call AlysiaClient_fnc_handleATM)) then
				{
					["Vous n'avez pas assez d'argent pour payer les salaires de vos employés. Régularisez votre situation dans les plus brefs délais ou les autorités passeront !", "BANQUE"] call AlysiaClient_fnc_phone_message_receive;
					[format["%1 n'a pas suffisamment d'argent pour payer le salaire de ses employés.", player getVariable "realname"], "BANQUE", false] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", east];
				};
			};

			if (gServer_tax_companies_employee_multiplier > 0) then
			{
				_price = _price_employees * gServer_tax_companies_employee_multiplier;
				_price_remove = _price_remove + _price;
				if ([false, _price, "Taxe salariale"] call AlysiaClient_fnc_handleATM) then {
					_add_to_gouv = _add_to_gouv + _price;
				} else {
					["Vous n'avez pas assez d'argent pour payer votre taxe salariale. Régularisez votre situation dans les plus brefs délais ou les autorités passeront !", "BANQUE"] call AlysiaClient_fnc_phone_message_receive;
					[format["%1 n'a pas suffisamment d'argent pour payer sa taxe salariale.", player getVariable "realname"], "BANQUE", false] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", east];
				};
			};
		} else {
			[true, _price_employees, format["Salaire (%1)", _info select 0]] call AlysiaClient_fnc_handleATM;
			_price_add = _price_add + _price_employees;
		};
	};

	_price_building = getNumber(missionConfigFile >> "ALYSIA_COMPANIES_BUILDINGS" >> typeOf(g_company) >> "taxe");
	if ((_price_building > 0) && (gServer_tax_companies_building_multiplier > 0)) then
	{
		_price_building = _price_building * gServer_tax_companies_building_multiplier;
		_price_remove = _price_remove + _price_building;
		if ([false, _price_building, "Taxe foncière (entreprise)"] call AlysiaClient_fnc_handleATM) then {
			_add_to_gouv = _add_to_gouv + _price_building;
		} else {
			["Vous n'avez pas assez d'argent pour payer votre taxe foncière. Régularisez votre situation dans les plus brefs délais ou les autorités passeront !", "BANQUE"] call AlysiaClient_fnc_phone_message_receive;
			[format["%1 n'a pas suffisamment d'argent pour payer sa taxe foncière.", player getVariable "realname"], "BANQUE", false] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", east];
		};
	};
};

if (count(g_houses) > 0) then
{
	if (gServer_tax_house_multiplier > 0) then
	{
		private "_price";
		_price = 0;

		{
			if (((_x getVariable ["house_owner", ["", ""]]) select 0) isEqualTo (getPlayerUID player)) then {
				_price = _price + (getNumber(missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_x) >> "price") * gServer_tax_house_multiplier);
			};
		} forEach g_houses;

		_add_to_gouv = _add_to_gouv + _price;
		_price_remove = _price_remove + _price;
		if (!([false, _price, "Taxe foncière (maison/stockage/garage)"] call AlysiaClient_fnc_handleATM)) then
		{
			["Vous n'avez pas assez d'argent pour payer votre taxe d'habitation. Régularisez votre situation dans les plus brefs délais ou les autorités passeront !", "BANQUE"] call AlysiaClient_fnc_phone_message_receive;
			[format["%1 n'a pas suffisamment d'argent pour payer sa taxe d'habitation.", (player getVariable ["realname", profileName])], "BANQUE", false] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", east];
		};
	};
};

_config_phone = missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait;
if (isClass(_config_phone)) then
{
	private "_price";
	_price = getNumber(_config_phone >> "bill");
	if (_price > 0) then
	{
		if (!([false, _price, "Forfait téléphonique"] call AlysiaClient_fnc_handleATM)) then
		{
			["Vous n'avez plus assez d'argent dans votre compte en banque pour payer votre forfait téléphonique.<br/>Vous avez été rétrogradé au forfait lite.", "FORFAIT"] call AlysiaClient_fnc_phone_message_receive;
			["lite"] call AlysiaClient_fnc_phone_forfait_change;
		};
		_price_remove = _price_remove + _price;
	};
};

if (_add_to_gouv > 0) then {
	[east, true, _add_to_gouv, (getPlayerUID player)] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2];
};

if (profileNamespace getVariable ["ALYSIA_phone_salary", true]) then
{
	[
		format
		[
				"Vous avez reçu votre salaire et vos factures<br/>"
			+	"+ <t color='#8cff9b'>%1</t>$<br/>"
			+	"- <t color='#ff8c8c'>%2</t>$<br/>"
			+	"Pour plus d'informations rendez-vous dans l'application <t color='#00FF80'>solde</t> de votre tablette",
			[_price_add] call AlysiaClient_fnc_numberText,
			[_price_remove] call AlysiaClient_fnc_numberText
		],
		"BANQUE"
	] call AlysiaClient_fnc_phone_message_receive;
};
