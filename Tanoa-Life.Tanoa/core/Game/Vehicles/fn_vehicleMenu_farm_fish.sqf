/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_vehicle";
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {};

if (_vehicle getVariable ["fishing", false]) exitWith
{
	_vehicle setVariable ["fishing", false];
	["Pêche annulée."] call AlysiaClient_fnc_info;
};

if (([(_vehicle getVariable ["Trunk", []]), "fishingpoles"] call AlysiaClient_fnc_itemTrunk) isEqualTo 0) exitWith {
	["Vous devez avoir un filet de pêche dans le coffre du bateau."] call AlysiaClient_fnc_error;
};

_vehicle setVariable ["fishing", true];
_vehicle setVariable ["trunk_in_use_ID", "FISHING", true];
_lastPos = getPos _vehicle;

["Déploiement du filet de pêche..."] call AlysiaClient_fnc_info;
uiSleep 2;

while {(_vehicle getVariable ["fishing", false])} do
{
	scopeName "loop";

	if ((_vehicle distance (getMarkerPos "fish_1")) > 100) exitWith {
		[format["Pêche annulée<br/>Trop loin de %1.", (markerText "fish_1")]] call AlysiaClient_fnc_error;
	};
	if ((driver _vehicle) != player) exitWith {
		["Pêche annulée<br/>Vous devez rester à la place de conducteur."] call AlysiaClient_fnc_error;
	};
	if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "FISHING") exitWith {
		["Pêche terminée<br/>Quelqu'un fouille le coffre."] call AlysiaClient_fnc_error;
	};

	if (((getPos _vehicle) distance _lastPos) > 1) then
	{
		if (random(100) <= 4) then
		{
			if ([false, _vehicle, "Trunk", "fishingpoles", 1, false] call AlysiaClient_fnc_handleTrunk) then
			{
				if (([(_vehicle getVariable ["Trunk", []]), "fishingpoles"] call AlysiaClient_fnc_itemTrunk) isEqualTo 0) then
				{
					["Pêche annulée<br/>Le filet s'est fissuré et vous n'en avez pas d'autre dans le coffre du bateau"] call AlysiaClient_fnc_error;
					breakOut "loop";
				};
			};
		} else {
			_fish = ["bulot", "anchois", "bar", "daurade", "maquereau", "merlu", "sardine"] call BIS_fnc_selectRandom;
			if (!([true, _vehicle, "Trunk", _fish, 1, false] call AlysiaClient_fnc_handleTrunk)) then
			{
				["Pêche annulée<br/>L'inventaire du véhicule est plein."] call AlysiaClient_fnc_error;
				breakOut "loop";
			};
		};
	};

	_lastPos = getPos _vehicle;

	uiSleep 3;
};

_vehicle setVariable ["Trunk", (_vehicle getVariable ["Trunk", []]), true];

if ((_vehicle getVariable ["trunk_in_use_ID", ""]) isEqualTo "FISHING") then {
	_vehicle setVariable ["trunk_in_use_ID", "", true];
};

_vehicle setVariable ["fishing", false];
