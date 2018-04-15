/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_station", "_maxDistance", "_bill"];
_veh = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_station = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_maxDistance = [_this, 2, 0, [0]] call BIS_fnc_param;

waitUntil {!(_veh getVariable ["refuel_inUse", false]) && ((isNil {missionNamespace getVariable "refuel_bill"}) || ((_veh distance _station) > (_maxDistance * 3)))};

_bill = missionNamespace getVariable "refuel_bill";
if (!(isNil "_bill")) then
{
	{
		[
			format
			[
				"Un véhicule de type <t color='#DF7401'>%1</t> est parti sans payer sa facture d'essence s'élevant à <t color='#8cff9b'>%2</t>$.La plaque du véhicule est %3 et sa position est %4.",
				getText(configFile >> "CfgVehicles" >> typeOf(_veh) >> "displayName"),
				_bill,
				if (getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_veh) >> "disableOwnerInfos") isEqualTo 0) then {(_veh getVariable "info") select 2} else {"inconnue"},
				mapGridPosition _station
			], "GOUV", false
		] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", [configName _x] call AlysiaClient_fnc_strToSide];
	} forEach ("getNumber(_x >> 'phone' >> 'receive_fuel_alert') isEqualTo 1" configClasses (missionConfigFile >> "ALYSIA_FACTIONS"));
	[format["Vous êtes parti sans payer votre facture d'essence s'élevant à <t color='#8cff9b'>%1</t>$.<br/>Votre véhicule a été <t color='#DF0101'>signalé</t>.", [_bill] call AlysiaClient_fnc_numberText]] call AlysiaClient_fnc_info;
	missionNamespace setVariable ["refuel_prevent", true];
};
