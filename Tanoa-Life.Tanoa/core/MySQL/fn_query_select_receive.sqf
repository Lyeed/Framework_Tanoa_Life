/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isDedicated) exitWith {};

_basic = [_this, 0, [], [[]]] call BIS_fnc_param;

if ((_basic isEqualTo []) || {!((getPlayerUID player) isEqualTo (_basic select 0))}) exitWith
{
	["Une erreur est survenue lors du chargement de vos données. Veuillez vous reconnecter ou contacter un administrateur si le problème persiste"] spawn AlysiaClient_fnc_errorExit;
	false;
};
if (!((_basic select 1) isEqualTo "") && !((_basic select 1) isEqualTo profileName)) exitWith
{
	[format["Vous n'êtes pas autorisé à changer d'identité. Votre pseudo actuel [%1] ne correspond pas à celui que vous aviez lors de votre inscription [%2].", profileName, (_basic select 1)]] spawn AlysiaClient_fnc_errorExit;
	false;
};
if ((face player) != (_basic select 37)) exitWith
{
	[format["Vous n'êtes pas autorisé à changer de visage. Votre visage actuel [%1] ne correspond pas à celui que vous aviez lors de votre inscription [%2].", (face player), (_basic select 37)]] spawn AlysiaClient_fnc_errorExit;
	false;
};
if (
		(str(player) isEqualTo "CIV_160") &&
		(("((getText(_x >> 'uid') isEqualTo (getPlayerUID player)) && (getNumber(_x >> 'slot') isEqualTo 1))" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) isEqualTo [])
) exitWith {
	["Ce slot est réservé aux membres de l'administration."] spawn AlysiaClient_fnc_errorExit;
	false;
};

g_donator = compileFinal str(_basic select 8);
g_WESTLevel = compileFinal str(_basic select 19);
g_GUERLevel = compileFinal str(_basic select 20);
g_EASTLevel = compileFinal str(_basic select 21);
g_CIVLevel = compileFinal str(_basic select 22);

_allowed = switch (playerSide) do
{
	case civilian:
	{
		if (((call g_EASTLevel) > 0) || ((call g_WESTLevel) > 0) || ((call g_GUERLevel) > 0)) exitWith
		{
			["Vous n'êtes pas autorisé à changer de faction"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
/*
		if ((str(player) in ["CIV_71","CIV_72","CIV_73","CIV_74","CIV_75","CIV_76","CIV_77","CIV_78","CIV_79","CIV_80","CIV_81","CIV_82","CIV_83","CIV_84","CIV_85","CIV_86","CIV_87","CIV_88","CIV_89","CIV_90","CIV_91","CIV_92","CIV_93","CIV_94","CIV_95","CIV_96","CIV_97","CIV_98","CIV_99","CIV_100"]) && ((call g_donator) isEqualTo 0)) exitWith
		{
			["Ce slot est réservé aux donateurs"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
*/
		true;
	};
	case west:
	{
		if ((call g_WESTLevel) isEqualTo 0) exitWith
		{
			[format["Ce slot est réservé aux membres de la faction : %1", [west] call AlysiaClient_fnc_sideToStr]] spawn AlysiaClient_fnc_errorExit;
			false;
		};

		if (((call g_EASTLevel) > 0) || ((call g_CIVLevel) > 0) || ((call g_GUERLevel) > 0)) exitWith
		{
			["Vous n'êtes pas autorisé à changer de faction"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
/*
		if ((str(player) in ["WEST_16","WEST_17","WEST_18","WEST_19","WEST_20","WEST_21","WEST_22","WEST_23","WEST_24","WEST_25"]) && ((call g_donator) isEqualTo 0)) exitWith
		{
			["Ce slot est réservé aux donateurs"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
*/
		true;
	};
	case east:
	{
		if ((call g_EASTLevel) isEqualTo 0) exitWith
		{
			[format["Ce slot est réservé aux membres de la faction : %1", [east] call AlysiaClient_fnc_sideToStr]] spawn AlysiaClient_fnc_errorExit;
			false;
		};

		if (((call g_GUERLevel) > 0) || ((call g_CIVLevel) > 0) || ((call g_WESTLevel) > 0)) exitWith
		{
			["Vous n'êtes pas autorisé à changer de faction"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
/*
		if ((str(player) in ["EAST_16","EAST_17","EAST_18","EAST_19","EAST_20","EAST_21","EAST_22","EAST_23","EAST_24","EAST_25"]) && ((call g_donator) isEqualTo 0)) exitWith
		{
			["Ce slot est réservé aux donateurs"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
*/
		true;
	};
	case independent:
	{
		if ((call g_GUERLevel) isEqualTo 0) exitWith
		{
			[format["Ce slot est réservé aux membres de la faction : %1", [independent] call AlysiaClient_fnc_sideToStr]] spawn AlysiaClient_fnc_errorExit;
			false;
		};

		if (((call g_EASTLevel) > 0) || ((call g_CIVLevel) > 0) || ((call g_WESTLevel) > 0)) exitWith
		{
			["Vous n'êtes pas autorisé à changer de faction"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
/*
		if ((str(player) in ["GUER_7","GUER_8","GUER_9","GUER_10"]) && ((call g_donator) isEqualTo 0)) exitWith
		{
			["Ce slot est réservé aux donateurs"] spawn AlysiaClient_fnc_errorExit;
			false;
		};
*/
		true;
	};
	default {false};
};

if (!_allowed) exitWith {};

private "_i";
g_houses = [];
_i = 0;

{
	if (isClass(missionConfigFile >> "ALYSIA_HOUSES" >> (typeOf _x) >> "factions" >> str(playerSide))) then
	{
		_marker = createMarkerLocal [format["house_%1", _i], (getPos _x)];
		_marker setMarkerTextLocal "Chez vous";
		_marker setMarkerColorLocal "ColorWhite";
		_marker setMarkerTypeLocal "Maels_housing";
		_marker setMarkerSizeLocal [0.55, 0.55];
		g_houses pushBack _x;
		_i = _i + 1;
	};
} forEach ([_this, 1, [], [[]]] call BIS_fnc_param);

_respawn = profileNamespace getVariable "ALYSIA_house_spawn_info";
if (isNil "_respawn") then {
	g_respawn_point = objNull;
} else {
	_house = nearestObject [_respawn select 1, _respawn select 0];
	if (isNull _house) then {
		[] call AlysiaClient_fnc_house_menu_action_spawn_cancel;
	} else {
		g_respawn_point = _house;
	};
};

g_vehicles = [_this, 2, [], [[]]] call BIS_fnc_param;

{
	_message = _x select 0;
	if (_x select 1) then {_message set [0, "Numéro caché"]};
	g_phone_messages pushBack _message;
} forEach ([_this, 3, [], [[]]] call BIS_fnc_param);

{
	(configName _x) setMarkerAlphaLocal 0;
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_DYN_MARKERS"));

g_company = [_this, 4, objNull, [objNull]] call BIS_fnc_param;

g_laboratory = [_this, 5, objNull, [objNull]] call BIS_fnc_param;
if (!(isNull g_laboratory)) then
{
	if (g_laboratory getVariable ["construction", false]) then
	{
		_marker = createMarkerLocal ["laboratory", (getPosATL g_laboratory)];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "mil_box";
		_marker setMarkerSizeLocal [0.5, 0.5];
		_marker setMarkerTextLocal "Laboratoire en construction";
	} else {
		_config = ("getText(_x >> 'object') == typeOf(g_laboratory)" configClasses (missionConfigFile >> "ALYSIA_LABORATORIES")) select 0;
		_config_marker = _config >> "marker";
		if (isClass _config_marker) then
		{
			_marker = createMarkerLocal ["laboratory", (getPosATL g_laboratory)];
			_marker setMarkerShapeLocal getText(_config_marker >> "ShapeLocal");
			_marker setMarkerColorLocal getText(_config_marker >> "ColorLocal");
			_marker setMarkerTypeLocal getText(_config_marker >> "TypeLocal");
			_marker setMarkerSizeLocal getArray(_config_marker >> "SizeLocal");
			_marker setMarkerTextLocal ([configName _config] call AlysiaClient_fnc_itemGetName);
		};
	};
};

g_session_query = _basic;
true;
