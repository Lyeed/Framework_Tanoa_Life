/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_marker", "_item"];
_marker = [_this, 0, "", [""]] call BIS_fnc_param;

if (_marker isEqualTo "") exitWith {};
if ((player distance (getMarkerPos _marker)) <= 20) then
{
	_item = getText(missionConfigFile >> "ALYSIA_DYN_MARKERS" >> _marker >> "destroy_item");
	if ((_item isEqualTo "") || (([_item] call AlysiaClient_fnc_itemCount) > 0)) then
	{
		if ([format["Vous êtes sur le point de détruire <t color='#74DF00'>%1</t><br/>.", (markerText _marker)], "Validation", "Valider", "Annuler"] call BIS_fnc_guiMessage) then
		{
			if ((player distance (getMarkerPos _marker)) < 20) then
			{
				if (_item != "") then {[false, _item, 1] call AlysiaClient_fnc_handleInv};
				(format[
					"%1 %2 a détruit %3.",
					([(side player), (player getVariable ["rank", 0])] call AlysiaClient_fnc_rankToStr),
					(player getVariable ["realname", profileName]),
					(markerText _marker)
				]) remoteExecCall ["systemChat", playerSide];
				[_marker] remoteExec ["AlysiaServer_fnc_dynamicMarkers_update", 2];
			} else {
				["Vous êtes trop loin."] call AlysiaClient_fnc_error;
			};
		};
	} else {
		[format["Vous avez besoin de <t color='#FF8000'>%1</t> pour détruire <t color='#DF0101'>%2</t>.", [_item] call AlysiaClient_fnc_itemGetName, (markerText _marker)]] call AlysiaClient_fnc_error;
	};
};
