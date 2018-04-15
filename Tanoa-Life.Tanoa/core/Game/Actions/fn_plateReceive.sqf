/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_number", "_owner"];
_number = [_this, 0, "", [""]] call BIS_fnc_param;

if (missionNamespace getVariable ["central_inUse", false]) exitWith {
	["Vous avez déjà une demande en cours."] call AlysiaClient_fnc_error;
};
if (_number isEqualTo "") exitWith {
	["Vous n'avez pas précisé d'immatriculation à chercher."] call AlysiaClient_fnc_error;
};

["Demande reçue.<br/>Veuillez patienter pendant que nous traitons vos informations.", "CENTRAL"] call AlysiaClient_fnc_phone_message_receive;
missionNamespace setVariable ["central_inUse", true];

{
	_info = _x getVariable "info";
	if (!(isNil "_info")) then
	{
		if ((_info select 2) isEqualTo parseNumber(_number)) then {
			_owner = _info select 1;
		};
	};
} forEach vehicles;

uiSleep(10 + random(30));

if (isNil "_owner") then {
	["Nous ne pouvons pas donner suite à votre <t color='#FF8000'>demande d'immatriculation</t>.<br/>Aucun véhicule ne correspond aux informations fournies.", "CENTRAL"] call AlysiaClient_fnc_phone_message_receive;
} else {
	[format["Résultat de votre <t color='#FF8000'>demande d'immatriculation</t> : %1.", _owner], "CENTRAL"] call AlysiaClient_fnc_phone_message_receive;
};

missionNamespace setVariable ["central_inUse", false];
