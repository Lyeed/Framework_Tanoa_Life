/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_company", "_info", "_action"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_company = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _company) || (isNull _from)) exitWith {};

_info = _company getVariable "company_info";
if (isNil "_info") exitWith {};

if (!(isNull g_company)) exitWith
{
	[format["<t color='#FFBF00'>%1</t> est déjà membre d'une entreprise.", (player getVariable "realname")]] remoteExecCall ["AlysiaClient_fnc_info", _from];
	[format["<t color='#FFBF00'>%1</t> a essayé de vous embaucher dans son entreprise mais vous avez refusé automatiquement car vous travaillez déjà pour le compte d'une entreprise.", (_from getVariable "realname")]] call AlysiaClient_fnc_info;
};

if (!(['medical'] call AlysiaClient_fnc_hasLicense)) exitWith
{
	[format["<t color='#FFBF00'>%1</t> ne possède pas de certificat médical.", (player getVariable "realname")]] remoteExecCall ["AlysiaClient_fnc_info", _from];
	[format["<t color='#FFBF00'>%1</t> a essayé de vous embaucher dans son entreprise mais vous avez refusé automatiquement car vous n'avez pas de certificat médical.", (_from getVariable "realname")]] call AlysiaClient_fnc_info;
};

_action =
[
	format["<t color='#045FB4'>%1</t> vous propose de rejoindre son entreprise : <t color='#74DF00'>%2</t>.", (_info select 4), (_info select 0)],
	"Offre d'embauche",
	"Accepter",
	"Refuser"
] call BIS_fnc_guiMessage;
if (_action) then
{
	[_company] call AlysiaClient_fnc_company_member_join;
	["Votre offre d'embauche a été <t color='#3ADF00'>acceptée</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
} else {
	["Votre offre d'embauche a été <t color='#DF0101'>refusée</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
