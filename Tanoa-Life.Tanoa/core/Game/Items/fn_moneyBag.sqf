/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_action"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

if (!(isNull g_company) && {(((g_company getVariable 'company_info') select 2) isEqualTo 'money_transfer')}) then {
	[_object] spawn AlysiaClient_fnc_moneyBagHandle;
} else {
	_action =
	[
		"En ramassant ce sac, vous le transformerez en <t color='#DF0101'>argent sale</t>",
		"Validation",
		"Valider",
		"Annuler"
	] call BIS_fnc_guiMessage;
	if (_action) then
	{
		if (isNull _object) then {
			["Impossible de trouver le sac. Quelqu'un l'a surement ramasser avant vous."] call AlysiaClient_fnc_error;
		} else {
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			uiSleep(random(2) + 0.50);
			if (isNull _object) then {
				["Cible invalide."] call AlysiaClient_fnc_error;
			} else {
				deleteVehicle _object;
				[true, "illegal_money", 10000] call AlysiaClient_fnc_handleInv;
			};
		};
	};
};

g_action_inUse = false;
