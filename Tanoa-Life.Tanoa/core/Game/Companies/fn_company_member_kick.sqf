/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_uid", "_member", "_info"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_uid = [_this, 1, "", [""]] call BIS_fnc_param;

if ((isNull _company) || (_uid isEqualTo "")) exitWith {};

_info = _company getVariable "company_info";
if (isNil "_info") exitWith {};

if ([_company, false, _uid] call AlysiaClient_fnc_company_member_handle) then
{
	[format["<t color='#045FB4'>%1</t> a été renvoyé de l'entreprise.", (([_company, _uid] call AlysiaClient_fnc_company_member_data) select 1)]] call AlysiaClient_fnc_info;
	_member = [_uid] call AlysiaClient_fnc_getPlayerFromUID;
	if (!(isNull _member)) then {[player] remoteExecCall ["AlysiaClient_fnc_company_member_leave", _member]};
} else {
	["Impossible de renvoyer la personne de l'entreprise. Elle n'en fait peut être déjà plus parti."] call AlysiaClient_fnc_info;
};
