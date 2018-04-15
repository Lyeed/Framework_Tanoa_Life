/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_bill", "_action"];

_bill = missionNamespace getVariable "refuel_bill";
if (isNil "_bill") exitWith {
	["Vous n'avez pas de facture d'essence à regler."] call AlysiaClient_fnc_error;
};

_action =
[
	format
	[
		"Votre facture d'essence s'élève à <t color='#8cff9b'>%1</t>$.<br/><br/>Désirez-vous payer maintenant ?",
		[_bill] call AlysiaClient_fnc_numberText
	],
	"Station service",
	"Oui",
	"Non"
] call BIS_fnc_guiMessage;
if (_action) then
{
	private "_paid";
	_action =
	[
		"Voulez vous payer par carte ou en espèce ?",
		"Station service",
		"Carte bleue",
		"Espèce"
	] call BIS_fnc_guiMessage;
	if (_action) then
	{
		if (_bill > g_atm) exitWith
		{
			["Vous n'avez pas assez d'argent dans votre compte en banque pour payer votre plein."] call AlysiaClient_fnc_error;
			_paid = false;
		};
		[false, _bill] call AlysiaClient_fnc_handleATM;
		_paid = true;
	} else {
		if (_bill > g_cash) exitWith
		{
			["Vous n'avez pas assez d'argent sur vous pour payer votre plein."] call AlysiaClient_fnc_error;
			_paid = false;
		};
		[false, _bill] call AlysiaClient_fnc_handleCash;
		_paid = true;
	};

	if (_paid) then
	{
		missionNamespace setVariable ["refuel_bill", nil];
		playSound "buy";
		if (missionNamespace getVariable ["refuel_prevent", false]) then
		{
			_veh = missionNamespace getVariable ["refuel_vehicle", objNull];

			{
				[
					format
					[
						"Le véhicule de type <t color='#DF7401'>%1</t> est finalement revenu pour payer sa facture d'essence s'élevant à <t color='#8cff9b'>%2</t>$.La plaque du véhicule est %3.",
						getText(configFile >> "CfgVehicles" >> typeOf(_veh) >> "displayName"),
						_bill,
						(_veh getVariable "info") select 2
					], "GOUV", false
				] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", [configName _x] call AlysiaClient_fnc_strToSide];
			} forEach ("getNumber(_x >> 'phone' >> 'receive_fuel_alert') isEqualTo 1" configClasses (missionConfigFile >> "ALYSIA_FACTIONS"));
			missionNamespace setVariable ["refuel_prevent", false];
		};
	};
};
