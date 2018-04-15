/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_action"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};

_action = switch (true) do
{
	case (player getVariable ["is_coma", false]): {true};
	case ((player getVariable ["surrender", false]) || (player getVariable ["restrained", false])):
	{
		["Quelqu'un cherche votre porte-feuille dans vos affaires."] call AlysiaClient_fnc_info;
		true;
	};
	default
	{
		_ret = [
			"<t align='center'><img size='4' image='Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_wallet.paa'/></t><br/><br/><br/>" +
			"<t color='#FF8000'>Quelqu'un</t> souhaite accéder à votre <t color='#74DF00'>porte-feuille</t>.<br/><br/>" +
			"Cela lui donnera un visuel sur <t color='#58ACFA'>vos licences</t> ainsi que <t color='#58ACFA'>votre passeport</t>.<br/><br/>" +
			"Acceptez-vous ?",
			"Porte-feuille",
			"Accepter",
			"Refuser"
		] call BIS_fnc_guiMessage;
		if (_ret) then {
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		};
		_ret;
	};
};

if (_action) then
{
	_item = getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "identity_item");
	if ((_item isEqualTo "") || (_item in (magazines player))) then
	{
		_licenses = [];

		{
			if (str(side _from) in getArray(missionConfigFile >> "ALYSIA_LICENSES" >> _x >> "factions" >> str(playerSide) >> "search_shown")) then {
				_licenses pushBack _x;
			};
		} forEach ([] call AlysiaClient_fnc_getLicenses);

		[player, _licenses, [g_firstName, g_lastName, g_birth, g_nationality, g_sexe]] remoteExec ["AlysiaClient_fnc_wallet_return", _from];
	} else {
		[format[
			"Vous n'avez pas l'objet nécessaire pour prouver <t color='#FF8000'>votre identité</t>.<br/><br/>Requis : %1<br/><br/>La demande a été <t color='#DF0101'>refusée</t>.",
			(([_item] call AlysiaClient_fnc_fetchCfgDetails) select 1)
		]] call AlysiaClient_fnc_error;
		["Votre demande a été <t color='#DF0101'>refusée</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
	};
} else {
	["Votre demande a été <t color='#DF0101'>refusée</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
