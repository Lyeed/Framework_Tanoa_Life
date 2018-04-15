/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_type", "_requireTarget", "_enoughText", "_maxAmount", "_itemsCheck", "_config"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;
_maxAmount = [_this, 1, 0, [0]] call BIS_fnc_param;
_target = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if (g_action_inUse) exitWith {
	["Vous avez l'air occupé<br>Revenez plus tard"] call AlysiaClient_fnc_error;
};
if ((player getVariable ["restrained", false]) || (player getVariable ["surrender", false])) exitWith {
	["Vous ne pouvez pas traiter lorsque vous êtes menotté ou avez les mains sur la tête"] call AlysiaClient_fnc_error;
};
if (!(alive player) || (player getVariable ["is_coma", false])) exitWith {
	["Vous devez être vivant pour traiter"] call AlysiaClient_fnc_error;
};
if ((vehicle player) != player) exitWith {
	["Vous devez être à pied pour traiter"] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_PROCESS" >> _type;
_requireTarget = isClass(_config >> "target");
if (_requireTarget && (isNull _target)) exitWith {
	["Le traitement à besoin d'émaner d'une entité"] call AlysiaClient_fnc_error;
};
if (_requireTarget && ((player distance _target) > 5)) exitWith {
	["Vous êtes trop loin pour débuter le traitement"] call AlysiaClient_fnc_error;
};

_enoughText = "";
{
	private "_varAmount";
	_varAmount = [(_x select 0)] call AlysiaClient_fnc_itemCount;
	if (floor(_varAmount / (_x select 1)) < _maxAmount) then {
		_enoughText = _enoughText + format["%1x %2<br/>", (((_x select 1) * _maxAmount) - (_varAmount * _maxAmount)), ([(_x select 0)] call AlysiaClient_fnc_itemGetName)];
	};
} forEach getArray(_config >> "require" >> "items_virtual");
if (_enoughText != "") exitWith {
	[format["Vous n'avez pas tous les élements requis<br/><br/>Vous avez besoin de<br/>%1<br/>en plus pour commencer à traiter</t>", _enoughText]] call AlysiaClient_fnc_error;
};

if (_requireTarget) then
{
	[getText(_config >> "target" >> "smoke_type"), _target] spawn
	{
		if ((_this select 0) != "") then
		{
			private "_smoke";
			_smoke = objNull;
			waitUntil {g_action_inUse};
			while {g_action_inUse} do
			{
				if (isNull _smoke) then {
					_smoke = createVehicle [(_this select 0), (getPos (_this select 1)), [], 0, "CAN_COLLIDE"];
				};

				uiSleep 0.3;
			};
			if (!(isNull _smoke)) then {
				deleteVehicle _smoke;
			};
		};
	};
};

if (!([
	getText(_config >> "name"),
	(getNumber(_config >> "time_per_item") * _maxAmount) + getNumber(_config >> "time_default"),
	_target,
	getText(_config >> "sound")
] call AlysiaClient_fnc_showProgress)) exitWith {};

_itemsCheck = true;
{
	if (!([false, (_x select 0), ((_x select 1) * _maxAmount)] call AlysiaClient_fnc_handleInv)) exitWith {
		_itemsCheck = false;
	};
} forEach getArray(_config >> "require" >> "items_virtual");
if (!_itemsCheck) exitWith {
	["Vous devez garder les matériaux sur vous pendant toute la durée du traitement"] call AlysiaClient_fnc_error;
};

{
	[true, (_x select 0), ((_x select 1) * _maxAmount)] call AlysiaClient_fnc_handleInv;
} forEach getArray(_config >> "receive" >> "items_virtual");

{
	for "_i" from 1 to _maxAmount do
	{
		[_x, true, true] call AlysiaClient_fnc_handleItem;
	};
} forEach getArray(_config >> "receive" >> "items_arma");

if (getNumber(_config >> "receive" >> "money") > 0) then {
	[true, (getNumber(_config >> "receive" >> "money") * _maxAmount)] call AlysiaClient_fnc_handleCash;
};

["Traitement <t color='#3ADF00'>terminé</t>"] call AlysiaClient_fnc_info;
