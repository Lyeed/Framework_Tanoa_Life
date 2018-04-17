/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (hasInterface) then
{
	diag_log "------------------------------------------------------------------------------------------------------";
	diag_log "---------------------------------------- Starting Client Init ----------------------------------------";
	diag_log "------------------------------------------------------------------------------------------------------";
	_timeStamp = diag_tickTime;
	_staff = !(("(getText(_x >> 'uid') isEqualTo (getPlayerUID player)) && (getNumber(_x >> 'skip_checks') isEqualTo 1)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) isEqualTo []);

	enableSaving [false, false];

	{
		_x setVariable ["BIS_noCoreConversations", true];
	} forEach allUnits;
	0 fadeRadio 0;
	0 fadeSpeech 0;
	0 fadeSound 0;
	enableSentences false;
	disableRemoteSensors true;
	showChat false;

	waitUntil {!(isNull player) && !(isNull (findDisplay 46))};
	player setVariable ["tf_globalVolume", 0];

	diag_log "<INIT> En attente de réponse du serveur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["En attente de réponse du serveur", "BLACK FADED", 999999, true];
	waitUntil {!(isNil "gServer_server_isReady") && !(isNil "gServer_mods")};
	if (!(isNil "gServer_soonReboot") && !_staff) exitWith
	{
		["Le serveur redémarre dans moins de 4 minutes, veuillez vous reconnecter après."] spawn AlysiaClient_fnc_errorExit;
	};
	setDate [gServer_year, (date select 1), (date select 2), (date select 3), (date select 4)];

	diag_log "<INIT> Vérification des mods...";
	_check = "";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Vérification de la présence des mods", "BLACK FADED", 999999, true];
	{
		if (!(isClass(configFile >> "CfgPatches" >> _x))) exitWith {_check = _x};
	} forEach gServer_mods;
	if (_check != "") exitWith
	{
		[format["Le pbo [%1] est nécessaire pour vous connecter.", _check]] spawn AlysiaClient_fnc_errorExit;
	};
	diag_log "<INIT> Mods vérifiés";

	diag_log "<INIT> Vérification de la configuration joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Vérification de la configuration", "BLACK FADED", 999999, true];
	if (((getResolution) select 5) != 0.55) exitWith
	{
		[
			"Vous devez régler la taille de votre interface sur 'Petit(e)' pour pouvoir vous connecter." +
			"L'option est disponible dans Configurer->Vidéo->Affichage->Taille d'interface." +
			"Un redémarrage de votre jeu est nécessaire après modification."
		] spawn AlysiaClient_fnc_errorExit;
	};
	if (musicVolume < 0.3) exitWith
	{
		[
			"Vous devez régler l'audio 'musique' à au moins 30% pour pouvoir vous connecter." +
			"Sans musique vous perdrez de l'immersion et risquez de rater les annonces de redémarrages du serveur."
		] spawn AlysiaClient_fnc_errorExit;
	};
	diag_log "<INIT> Configuration vérifiée";

	diag_log "<INIT> Initialisation des variables joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Initialisation des variables", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_variables;
	diag_log "<INIT> Variables initialisées";

	if (!_staff) then
	{
		diag_log "<INIT> Validation de l'extension TaskForceRadio...";
		("initLayer" call BIS_fnc_rscLayer) cutText ["Validation de l'extension TaskForceRadio", "BLACK FADED", 999999, true];
		waitUntil {!(isNil "TFAR_fnc_isTeamSpeakPluginEnabled")};
		diag_log "<INIT> Extension TaskForceRadio validée";

		diag_log "<INIT> Validation du plugin Teamspeak TaskForceRadio...";
		("initLayer" call BIS_fnc_rscLayer) cutText ["Validation du plugin Teamspeak TaskForceRadio", "BLACK FADED", 999999, true];
		waitUntil {(call TFAR_fnc_isTeamSpeakPluginEnabled)};
		diag_log "<INIT> Plugin Teamspeak TaskForceRadio validé";

		diag_log "<INIT> Validation de présence sur le Teamspeak ...";
		("initLayer" call BIS_fnc_rscLayer) cutText ["Validation de présence sur le Teamspeak", "BLACK FADED", 999999, true];
		waitUntil {(["YOUR TEAMSPEAK NAME", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)};
		diag_log "<INIT> Présence validé";

		diag_log "<INIT> En attente de validation de votre présence dans le channel TaskForceRadio...";
		("initLayer" call BIS_fnc_rscLayer) cutText ["En attente de validation de votre présence dans le channel TaskForceRadio", "BLACK FADED", 999999, true];
		waitUntil {((call TFAR_fnc_getTeamSpeakChannelName) isEqualTo "TaskForceRadio")};
		diag_log "<INIT> Présence dans le channel TaskForceRadio validé";
	};

	diag_log "<INIT> Ajouts des évènements joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Ajouts des évènements", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_eventHandlers;
	[] call AlysiaClient_fnc_init_keys;
	diag_log "<INIT> Evènements ajoutés";

	diag_log "<INIT> Création des objets et marqueurs locals au joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Création des objets et marqueurs locals", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_buildings;
	diag_log "<INIT> Objets et marqueurs locals crées";

	diag_log "<INIT> Récupération des données de personnage...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Récupération des données de personnage", "BLACK FADED", 999999, true];
	[player, profileNamespace getVariable "temp_inventory"] remoteExec ["AlysiaServer_fnc_query_select_connect", 2];
	waitUntil {!(isNil "g_session_query")};
	diag_log "<INIT> Données de personnage récupéré";

	diag_log "<INIT> Chargement des données personnage...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Chargement des données de personnage", "BLACK FADED", 999999, true];
	g_session_query call AlysiaClient_fnc_init_data;
	diag_log "<INIT> Données de personnage chargées";

	diag_log "<INIT> Initialisation des environnements de jeu...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Initialisation des environnements de jeu", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_loops;
	diag_log "<INIT> Environements initialisés";

	diag_log "<INIT> Ajouts des actions au joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Ajouts des actions joueur", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_actions;
	diag_log "<INIT> Actions ajoutées";

	diag_log "<INIT> Initialisation de la position du joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Initilisation de la dernière position connue", "BLACK FADED", 999999, true];
	[(g_session_query select 12), (g_session_query select 13), (g_session_query select 14)] call AlysiaClient_fnc_init_position;
	diag_log "<INIT> Joueur déplacé dans l'univers de jeu";

	diag_log "<INIT> Initialisation de l'interface joueur...";
	("initLayer" call BIS_fnc_rscLayer) cutText ["Initilisation de l'interface de jeu", "BLACK FADED", 999999, true];
	[] call AlysiaClient_fnc_init_hud;
	diag_log "<INIT> Interface joueur initialisée";

	player setVariable ["tf_globalVolume", 1];
	player setVariable ["realname", profileName, true];
	missionNamespace setVariable ["g_connected", true];

	("initLayer" call BIS_fnc_rscLayer) cutText ["", "BLACK IN", 6, false];
	6 fadeSound 1;

	[
		[
			["Archipel de Tanoa", "<t align = 'center' size = '1'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strDate), "<t align = 'center' size = '0.7'>%1</t><br/>"], ["", ""],
			[([] call AlysiaClient_fnc_strTime), "<t align = 'center' size = '0.7'>%1</t>"], ["", ""], ["", ""]
		]
	] spawn BIS_fnc_typeText;

	diag_log "---------------------------------------------------------------------------------------------------------";
	diag_log format["              End of Client Init :: Total Execution Time %1 seconds ", (diag_tickTime - _timeStamp)];
	diag_log "---------------------------------------------------------------------------------------------------------";
};
