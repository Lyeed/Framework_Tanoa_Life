/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_side", "_config", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 3, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {
	["Aucun type précisé."] call AlysiaClient_fnc_error;
};
if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_SHOPS_VIRTUAL" >> _type;
if (!isClass(_config)) exitWith {
	[format["Impossible de trouver les informations concernant le magasin<br/><t align='center' color='#FF8000'>%1</t>", _type]] call AlysiaClient_fnc_error;
};

_side = getText(_config >> "side");
if ((_side != "") && (str(playerSide) != _side)) exitWith
{
	[format[
		"Votre faction <t color='#04B404'>%1</t> n'est pas autorisé à acheter ici.<br/>Ce magasin <t color='#2EFE9A'>%2</t> est <t color='#FF0000'>réservé</t>.",
		([playerSide] call AlysiaClient_fnc_sideToStr),
		getText(_config >> "name")
	]] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayShopVirtual";

ctrlShow[2414, false];
ctrlShow[2415, false];
ctrlShow[2416, false];
ctrlShow[2417, false];
ctrlShow[2418, false];
ctrlShow[2407, false];
ctrlShow[2408, false];
ctrlShow[2409, false];
ctrlShow[2410, false];

((findDisplay 2400) displayCtrl 2401) ctrlSetStructuredText parseText format["<t align='center' size='2'>%1</t>", getText(_config >> "name")];

(findDisplay 2400) displayAddEventHandler ["KeyDown", "if (((_this select 1) isEqualTo 1) && g_shop_active) then {true}"];

g_interaction_target = _target;
g_shop_active = true;
g_shop_type = _type;
g_shop_tmp_buy = [];
g_shop_tmp_sell = [];
if (count(getArray(_config >> "buy")) >= count(getArray(_config >> "sell"))) then {
	[0] call AlysiaClient_fnc_shop_virtual_update_mod;
} else {
	[1] call AlysiaClient_fnc_shop_virtual_update_mod;
	g_shop_active = false;
	for "_i" from 0 to (lbsize 2405) do {
		[1, true, _i] call AlysiaClient_fnc_shop_virtual_add;
	};
	g_shop_active = true;
};

[] call AlysiaClient_fnc_shop_virtual_update_basket;

g_shop_active = false;

waitUntil {
	uiSleep 0.5;
	(!g_shop_active && (isNull (findDisplay 2400)))
};

{
	[true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
} forEach g_shop_tmp_sell;
