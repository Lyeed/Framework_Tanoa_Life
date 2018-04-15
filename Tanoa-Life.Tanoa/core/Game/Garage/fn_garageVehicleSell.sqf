/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_data", "_price", "_action"];

_index = lbValue[2802, (lbCurSel 2802)];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_data = g_garage_vehicles select _index;
if (isNil "_data") exitWith {
	["Impossible de récupérer le véhicule à vendre."] call AlysiaClient_fnc_error;
};

_price = ([_data select 0] call AlysiaClient_fnc_fetchVehInfo) select 19;
_action =
[
	format["Vous êtes sur le point de <t color='#DF0101'>vendre</t> votre véhicule pour <t color='#8cff9b'>%1</t>$.", [_price] call AlysiaClient_fnc_numberText],
	"Vente",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	if (g_action_inUse) exitWith {
		["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
	};

	g_action_inUse = true;

	uiSleep(random(2) + 0.5);

	if ((time - g_action_delay) < 2) exitWith {
		["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
	};
	g_action_delay = time;

	if ((g_garage_vehicles select _index) isEqualTo _data) then
	{
		playSound "buy";
		[true, _price, "Vente garage"] call AlysiaClient_fnc_handleATM;
		g_garage_vehicles deleteAt _index;
		[[nil, nil, (_data select 1), (_data select 2)], false] remoteExec ["AlysiaServer_fnc_vehicleDelete", 2];
	};

	g_action_inUse = false;

	waitUntil
	{
		closeDialog 0;
		!dialog
	};

	[g_garage_vehicles] call AlysiaClient_fnc_garageOpen;
};
