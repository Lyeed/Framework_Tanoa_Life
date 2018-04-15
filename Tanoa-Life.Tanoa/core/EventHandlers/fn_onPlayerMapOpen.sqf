/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_id";

waitUntil {visibleMap};

_id = (findDisplay 12) displayaddEventHandler ["KeyDown", {((_this select 1) isEqualTo 29)}];

if ((vehicle player) isEqualTo player) then {
	player playAction "Gear";
};

if (g_staff_markers) then
{
	[] spawn
	{
		private "_markers";
		_markers = [];
		while {visibleMap} do
		{
			{
				_name = _x getVariable "realname";
				_marker = format["%1_admin_marker", (getPlayerUID _x)];
				if (!(isNil "_name")) then
				{
					if (_marker in _markers) then {
						_marker setMarkerPosLocal (getPos _x);
					} else {
						_new = createMarkerLocal [_marker, (getPos _x)];
						_new setMarkerColorLocal ([side _x, true] call BIS_fnc_sideColor);
						_new setMarkerShapeLocal "ICON";
						_new setMarkerTypeLocal "Mil_dot";
						_new setMarkerTextLocal _name;
						_markers pushBack _new;
					};
				} else {
					if (_marker in _markers) then
					{
						_markers deleteAt (_markers find _marker);
						deleteMarkerLocal _marker;
					};
				};
			} forEach allPlayers;

			uiSleep 1;
		};

		{
			deleteMarkerLocal _x;
		} forEach _markers;
	};
} else {
	_factionMarkers = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "map_factions_markers";
	if (isClass _factionMarkers) then
	{
		[getArray(_factionMarkers >> "shown")] spawn
		{
			private["_markers", "_factions"];
			_markers = [];

			_factions = [];
			{
				_factions pushBackUnique ([_x] call AlysiaClient_fnc_strToSide);
			} forEach ([_this, 0, [], [[]]] call BIS_fnc_param);

			while {visibleMap} do
			{
				{
					_marker = format["map_%1_faction", (getPlayerUID _x)];
					_name = _x getVariable "realname";
					if (((side _x) in _factions) && ("ItemGPS" in (assignedItems _x)) && !(isNil "_name") && !(isObjectHidden _x)) then
					{
						if (_marker in _markers) then {
							_marker setMarkerPosLocal (getPos _x);
						} else {
							_new = createMarkerLocal [_marker, (getPos _x)];
							_new setMarkerColorLocal ([side _x, true] call BIS_fnc_sideColor);
							_new setMarkerShapeLocal "ICON";
							_new setMarkerTypeLocal "Mil_dot";
							_new setMarkerTextLocal format["%1. %2", [side _x, (_x getVariable ["rank", 0]), true] call AlysiaClient_fnc_rankToStr, _name];
							_markers pushBack _new;
						};
					} else {
						if (_marker in _markers) then
						{
							_markers deleteAt (_markers find _marker);
							deleteMarkerLocal _marker;
						};
					};
				} forEach allPlayers;

				uiSleep 1;
			};

			{
				deleteMarkerLocal _x;
			} forEach _markers;
		};
	};

	if (isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "map_coma_markers")) then
	{
		[] spawn
		{
			private "_markers";
			_markers = [];
			while {visibleMap} do
			{
				{
					_name = _x getVariable "realname";
					if ((_x getVariable ["medic_request", false]) && !(isObjectHidden _x) && !(isNil "_name")) then
					{
						_marker = format["%1_dead_marker", (getPlayerUID _x)];
						if (_marker in _markers) then {
							_marker setMarkerPosLocal (getPos _x);
						} else {
							_new = createMarkerLocal [_marker, (getPos _x)];
							_new setMarkerShapeLocal "ICON";
							_new setMarkerColorLocal "ColorRed";
							_new setMarkerTypeLocal "loc_Hospital";
							_new setMarkerTextLocal "SOS: blessé";
							_markers pushBack _new;
						};
					} else {
						_marker = format["%1_dead_marker", (getPlayerUID _x)];
						if (_marker in _markers) then
						{
							_markers deleteAt (_markers find _marker);
							deleteMarkerLocal _marker;
						};
					};
				} forEach allPlayers;
				uiSleep 1;
			};

			{
				deleteMarkerLocal _x;
			} forEach _markers;
		};
	};
};

while {visibleMap} do
{
	waitUntil {!visibleMap || !(isNull (uiNamespace getVariable ["RscDisplayInsertMarker", displayNull]))};
	if (!(isNull (uiNamespace getVariable ["RscDisplayInsertMarker", displayNull]))) then
	{
		(uiNamespace getVariable ["RscDisplayInsertMarker", displayNull]) closeDisplay 0;
	};
};

(findDisplay 12) displayRemoveEventHandler ["KeyDown", _id];
