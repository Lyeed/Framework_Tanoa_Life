/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

{
	if (alive _x) then
	{
		if (isNull (driver _x)) then
		{
			_pos = _x getVariable ["afk_pos", [0, 0, 0]];
			if ((_pos distance (getPos _x)) < 8) then
			{
				_count = _x getVariable ["afk_count", 0];
				if (_count >= 6) then
				{
					_storePos = switch (true) do
					{
						case (_x isKindOf "Air"): {getMarkerPos "fourriere_marker_2"};
						case (_x isKindOf "Ship"): {getMarkerPos "fourriere_marker_3"};
						default {getMarkerPos "fourriere_marker_1"};
					};

					[_x, _storePos, false] call AlysiaServer_fnc_garageVehicleStore;
					diag_log "[CLEANUP] Vehicule";
				} else {
					if (_count isEqualTo 5) then
					{
						_info = _x getVariable "info";
						if (!(isNil "_info")) then
						{
							_owner = [_info select 0] call AlysiaClient_fnc_getPlayerFromUID;
							if (!(isNull _owner)) then
							{
								[
									format
									[
											"Votre véhicule <t color='#FE9A2E'>%1</t> en <t color='#FACC2E'>%2</t> est resté inactif depuis 50 minutes.<br/>"
										+	"Si vous ne le bougez pas de plus de <t color='#01DF01'>10 mètres</t> d'ici 10 minutes, votre véhicule sera envoyé automatiquement en <t color='#AC58FA'>fourrière</t> par le serveur.<br/>"
										+	"Son inventaire ne sera <t color='#FE2E64'>pas sauvegardé</t>.",
										getText(configFile >> "CfgVehicles" >> typeof(_x) >> "displayName"),
										mapGridPosition _x
									]
								] remoteExecCall ["AlysiaClient_fnc_info", (owner _owner)];
							};
						};
					};

					_x setVariable ["afk_count", (_count + 1)];
				};
			} else {
				_x setVariable ["afk_pos", (getPos _x)];
				_x setVariable ["afk_count", 0];
			};
		} else {
			_x setVariable ["afk_pos", (getPos _x)];
			_x setVariable ["afk_count", 0];
		};
	};
} forEach ((allMissionObjects "LandVehicle") + (allMissionObjects "Air") + (allMissionObjects "Ship"));
