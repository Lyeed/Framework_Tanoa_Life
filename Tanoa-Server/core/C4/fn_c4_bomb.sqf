/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_vehicle", "_time"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_time = [_this, 1, 0, [0]] call BIS_fnc_param;

if (isNull _object) exitWith {};

uiSleep _time;

"R_80mm_HE" createVehicle (getPosATL _object);

_vehicle = attachedTo _object;
if (!(isNull _vehicle)) then
{
	detach _object;
	switch typeOf(_vehicle) do
	{
		case "shounka_a3_brinks_noir":
		{
			_count = [(_vehicle getVariable ["Trunk", []]), "money_transfer"] call AlysiaClient_fnc_itemTrunk;
			if (_count > 0) then
			{
				for "_i" from 1 to _count do
				{
					_position = (getPos _vehicle) findEmptyPosition [0, 20, "Land_Suitcase_F"];
					if (!(_position isEqualTo [])) then
					{
						_bag = "Land_Suitcase_F" createVehicle _position;
						_bag setVariable ["money_bank", true, true];
					};
				};
			};
			_vehicle setVariable ["Trunk", [], true];
		};
		case "Bank_Sahrani_N":
		{
			_vehicle animate ["Vault_Door", 1];
			[_vehicle, "bankAlarm"] call AlysiaClient_fnc_globalSay3d;

			[
				"Alerte !<br/>La porte de <t color='#FF8000'>la salle des coffres</t> de la banque vient d'imploser.<br/>Les braqueurs vont s'emparer de l'argent, sauvez le contribuable !",
				"BANQUE"
			] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", west];
		};
		case "Bank_Sahrani_S":
		{
			_vehicle animate ["Vault_Door", 1];
			[_vehicle, "bankAlarm"] call AlysiaClient_fnc_globalSay3d;

			[
				"Alerte !<br/>La porte de <t color='#FF8000'>la salle des coffres</t> de la banque vient d'imploser.<br/>Les braqueurs vont s'emparer de l'argent, notre Leader vous ordonne de les arrêter !",
				"BANQUE"
			] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", east];
		};
	};
};

deleteVehicle _object;
