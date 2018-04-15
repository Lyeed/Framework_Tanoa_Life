/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_money", "_receive", "_action"];
_money = ["illegal_money"] call AlysiaClient_fnc_itemCount;

if (_money isEqualTo 0) exitWith {
	["Vous n'avez pas d'argent sale."] call AlysiaClient_fnc_error;
};

_receive = round(_money * 0.5);
_action =
[
	format
	[
		"Vous avez <t color='#8cff9b'>%1</t>$ d'argent sale.<br/>Transférer l'argent à la banque permettra de débloquer <t color='#8cff9b'>%2</t>$ dans le compte de votre faction.",
		[_money] call AlysiaClient_fnc_numberText,
		[_receive] call AlysiaClient_fnc_numberText
	],
	"Transfert d'argent sale",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	closeDialog 0;
	if ([false, "illegal_money", _money] call AlysiaClient_fnc_handleInv) then
	{
		[format["<t color='#8cff9b'>%1</t>$ ont été transféré sur le compte de votre faction."], "buy"] call AlysiaClient_fnc_info;
		[playerSide, true, _receive, (getPlayerUID player)] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2];
	} else {
		["Impossible de trouver l'argent sale dans votre inventaire."] call AlysiaClient_fnc_error;
	};
};
