/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_action"];
_from = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if ((isNull _from) || (playerSide != civilian)) exitWith {};
if (!g_connected) exitWith {};

_action =
[
	format
	[
		"Le %1 <t color='#31B404'>%2</t> vous invite à rejoindre sa faction : %3.<br/><br/>Acceptez-vous de vous engager ?</t>",
		[side _from, (_from getVariable ["rank", 0])] call AlysiaClient_fnc_rankToStr,
		_from getVariable "realname",
		[side _from, true] call AlysiaClient_fnc_sideToStr
	],
	"Recrutement",
	"Accepter",
	"Refuser"
] call BIS_fnc_guiMessage;
if (_action) then
{
	private "_actual";
	_actual = 0;
	{
		if (((_x getVariable ["house_owner", ["", ""]]) select 0) isEqualTo (getPlayerUID player)) then {_actual = _actual + 1};
	} forEach g_houses;
	if (_actual isEqualTo 0) then
	{
		if (isNull g_company) then
		{
			g_dynamic_markers = [];
			["Vous avez <t color='#01DF01'>accepté</t> l'invitation<br/>Vous pouvez d'ores et déjà vous reconnecter dans votre nouvelle faction."] call AlysiaClient_fnc_info;
			[format["%1 a <t color='#01DF01'>accepté</t> votre invitation", player getVariable "realname"]] remoteExecCall ["AlysiaClient_fnc_info", _from];
			[(getPlayerUID player), 1, (side _from)] remoteExec ["AlysiaServer_fnc_factionMemberModify", 2];
		} else {
			["Vous ne pouvez pas changer de faction alors que vous êtes employé ou directeur d'une entreprise."] call AlysiaClient_fnc_error;
		};
	} else {
		["Vous ne pouvez pas changer de faction alors que vous possédez des bâtiments."] call AlysiaClient_fnc_error;
	};
} else {
	["Vous avez <t color='#DF0101'>refusé</t> l'invitation."] call AlysiaClient_fnc_info;
	(format["%1 a <t color='#01DF01'>refusé</t> votre invitation.", player getVariable "realname"]) remoteExecCall ["AlysiaClient_fnc_info", _from];
};
