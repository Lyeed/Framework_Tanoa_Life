/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_config", "_count"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {
	["Impossible de trouver les informations concernant le type d'objet à supprimer."] call AlysiaClient_fnc_error;
};
if ((time - g_action_delay) < 1) exitWith {};

if ((vehicle player) != player) exitWith {
	["Action impossible en véhicule."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "remove";
if (!isClass(_config)) exitWith {
	["Impossible de supprimer cet objet."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

if (getNumber(_config >> "all") isEqualTo 1) then {
	_count = [_item] call AlysiaClient_fnc_itemCount;
} else {
	_count = 1;
};

if ([false, _item, _count] call AlysiaClient_fnc_handleInv) then
{
	g_action_delay = time;
	if (getNumber(_config >> "disableSuitcase") isEqualTo 0) then
	{
		private "_suit";
		_suit = (nearestObjects [player, ["Skyline_Alysia_Boite_01_F"], 3.2]) select 0;
		if (isNil "_suit") then
		{
			_suit = createVehicle ["Skyline_Alysia_Boite_01_F", (player modelToWorld [0, 2, 0]), [], 0, "CAN_COLLIDE"];
			_suit setVariable ["items", [[_item, _count]], true];
			["Vous avez crée une <t color='#FF8000'>valise</t>. Vous pouvez accéder à son <t color='#01DF3A'>inventaire</t> avec votre touche WINDOWS. Une valise reste <t color='#DF0101'>10 minutes</t> avant de se faire supprimer par le serveur."] call AlysiaClient_fnc_info;
			[true] call AlysiaClient_fnc_temporyInventory_update;
		} else {
			if ((_suit getVariable ["trunk_in_use_ID", ""]) isEqualTo "") then
			{
				if ([true, _suit, "items", _item, _count, true] call AlysiaClient_fnc_handleTrunk) then {
					[true] call AlysiaClient_fnc_temporyInventory_update;
				} else {
					["Impossible de stocker cet objet dans la valise la plus proche : il n'y a pas assez de place. Ecartez-vous pour déposer une nouvelle valide ou faites de la place dedans."] call AlysiaClient_fnc_error;
					[true, _item, _count] call AlysiaClient_fnc_handleInv;
				};
			} else {
				["La valise la plus proche est en train d'être fouillée. Ecartez-vous pour déposer une nouvelle valise ou attendez que la fouille soit finie pour la remplir."] call AlysiaClient_fnc_error;
				[true, _item, _count] call AlysiaClient_fnc_handleInv;
			};
		};
	};
} else {
	["Impossible de récupérer l'objet dans votre inventaire."] call AlysiaClient_fnc_error;
};

g_action_inUse = false;
