/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private ["_config_prison", "_display"];

if (!(player getVariable ["arrested", false]) || (isNull g_arrest_Prison) || (g_arrest_Cellule isEqualTo "")) exitWith {};
if (!(isNull (uiNameSpace getVariable ["RscTitleArrest", displayNull]))) exitWith {};

("prisonLayer" call BIS_fnc_rscLayer) cutRsc ["RscTitleArrest", "PLAIN"];

_config_prison = missionConfigFile >> "ALYSIA_PRISONS" >> typeof(g_arrest_Prison);

disableSerialization;
_display = uiNameSpace getVariable ["RscTitleArrest", displayNull];

while {(g_arrest_Time >= 1)} do
{
	(_display displayCtrl 13500) ctrlSetStructuredText parseText format
	[
			"<t align='center' color='RobotoRegular'>"
		+	"<t size='2'>%1</t><br/><br/>"
		+	"<t size='1.2'>Raison(s)<br/>"
		+	"%2<br/><br/>"
		+	"Temps restant<br/>"
		+	"%3<br/><br/>"
		+	"Caution<br/>"
		+	"%4</t></t>",
		getText(_config_prison >> "name"),
		g_arrest_Reason,
		[g_arrest_Time, "M:SS"] call CBA_fnc_formatElapsedTime,
		if (g_arrest_Caution isEqualTo 0) then {"Aucune"} else {[g_arrest_Caution] call AlysiaClient_fnc_numberText}
	];

	if ((player distance g_arrest_Prison) > getNumber(_config_prison >> "escape_distance")) exitWith
	{
		g_arrest_Escape = true;
		player setVariable ["arrested", false, true];
	};

	g_arrest_Time = g_arrest_Time - 1;
	uiSleep 1;
};

("prisonLayer" call BIS_fnc_rscLayer) cutText ["", "BLACK IN", 5, true];

if (g_arrest_Escape) then
{
	[g_arrest_Prison, "prison_escape"] call AlysiaClient_fnc_globalSay3d;

	{
		[
			format
			[
				"<t color='#FFBF00'>%1</t> vient de s'échapper de <t color='#2E9AFE'>%2</t> alors qu'il lui restait <t color='#01DF3A'>%3 minutes</t> d'emprisonnement. Il a été vu pour la dernière fois en %4.<br/>Crimes:<br/>-%5",
				(player getVariable ["realname", profileName]),
				getText(_config_prison >> "name"),
				[g_arrest_Time, "M:SS"] call CBA_fnc_formatElapsedTime,
				(mapGridPosition player),
				g_arrest_Reason
			], "PRISON"
		] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", ([_x] call AlysiaClient_fnc_strToSide)];
	} forEach getArray(_config_prison >> "sides");

	[
		[
			["En cavale", "<t align = 'center' size = '1'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strDate), "<t align = 'center' size = '0.7'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strTime), "<t align = 'center' size = '0.7'>%1</t>"], ["", ""], ["", ""]
		]
	] spawn BIS_fnc_typeText;
} else {

	[] call AlysiaClient_fnc_stripDownPlayer;

	[true, (g_arrest_Gear select 0)] call AlysiaClient_fnc_handleCash;
	[(g_arrest_Gear select 1)] call AlysiaClient_fnc_loadGear;

	{
		[true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
	} forEach (g_arrest_Gear select 2);

	player setPosATL getArray(_config_prison >> "exit");

	[
		[
			["Vous êtes libre", "<t align = 'center' size = '1'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strDate), "<t align = 'center' size = '0.7'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strTime), "<t align = 'center' size = '0.7'>%1</t>"], ["", ""], ["", ""]
		]
	] spawn BIS_fnc_typeText;
};

g_arrest_Prison = objNull;
g_arrest_Cellule = 0;
g_arrest_Caution = 0;
g_arrest_Reason = "";
g_arrest_Gear = [];
[3] call AlysiaDB_fnc_query_update_partial;

player setVariable ["arrested", false, true];
