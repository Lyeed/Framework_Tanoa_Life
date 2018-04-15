/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_name", "_item", "_side"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_item = [_this, 1, "", [""]] call BIS_fnc_param;
_side = [_this, 2, sideUnknown, [sideUnknown]] call BIS_fnc_param;

if ((_name isEqualTo "") || (_item isEqualTo "") || (_side isEqualTo sideUnknown)) exitWith {};

switch (_side) do
{
	case east:
	{
		gServer_faction_EAST_history pushBack [_name, _item, format["%1 %2", ([] call AlysiaClient_fnc_strDate), ([] call AlysiaClient_fnc_strTime)]];
	};
	case west:
	{
		gServer_faction_WEST_history pushBack [_name, _item, format["%1 %2", ([] call AlysiaClient_fnc_strDate), ([] call AlysiaClient_fnc_strTime)]];
	};
	case independent:
	{
		gServer_faction_GUER_history pushBack [_name, _item, format["%1 %2", ([] call AlysiaClient_fnc_strDate), ([] call AlysiaClient_fnc_strTime)]];
	};
};
