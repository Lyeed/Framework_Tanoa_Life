/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_filter", "_type", "_light_1", "_light_2"];
_type = [_this, 3, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {};
if (!isClass(missionConfigFile >> "ALYSIA_SHOPS_CLOTHING" >> _type)) exitWith
{
	[format["Impossible de trouver les informations concernant le magasin<br/><t align='center' color='#FF8000'>%1</t>", _type]] call AlysiaClient_fnc_error;
	diag_log format["[ALYSIA:ERROR] Weapon shop %1 not defined in ALYSIA_SHOPS_CLOTHING (class not found)", _type];
};

_side = getText(missionConfigFile >> "ALYSIA_SHOPS_CLOTHING" >> _type >> "side");
if ((_side != "") && (str(playerSide) != _side)) exitWith {
	[format[
		"Votre faction <t color='#04B404'>%1</t> n'est pas autorisé à acheter ici.<br/>Ce magasin <t color='#2EFE9A'>%2</t> est <t color='#FF0000'>réservé</t>.",
		([playerSide] call AlysiaClient_fnc_sideToStr),
		getText(missionConfigFile >> "ALYSIA_SHOPS_CLOTHING" >> _type >> "name")
	]] call AlysiaClient_fnc_error;
};

if (!(createDialog "RscDisplayShopClothing")) exitWith {};

disableSerialization;
_display = findDisplay 3100;
if (isNull _display) exitWith {};

(_display displayCtrl 3101) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.5'>%1</t>",
	getText(missionConfigFile >> "ALYSIA_SHOPS_CLOTHING" >> _type >> "name")
];

_list = _display displayCtrl 3102;
lbClear _list;

if ((currentWeapon player) != "") then {
	[] call AlysiaClient_fnc_holdsterSwitch;
};

titleText["", "BLACK IN"];

g_shop_clothing_head = headgear player;
g_shop_clothing_goggles = goggles player;
g_shop_clothing_vest = vest player;
g_shop_clothing_vest_items = vestItems player;
g_shop_clothing_uniform = uniform player;
g_shop_clothing_uniform_items = uniformItems player;
g_shop_clothing_backpack = backpack player;
g_shop_clothing_backpack_items = backpackItems player;

g_shop_clothing_type = _type;
g_shop_clothing_active = false;
g_shop_clothing_oldList = [];
g_shop_clothing_oldSelection = "";

g_shop_camera = "CAMERA" camCreate getPos player;
showCinemaBorder false;
g_shop_camera cameraEffect ["Internal", "Back"];
g_shop_camera camSetTarget (player modelToWorld [0, 0, 1]);
g_shop_camera camSetPos (player modelToWorld [1, 4, 2]);
g_shop_camera camSetFOV 0.33;
g_shop_camera camSetFocus [50, 0];
g_shop_camera camCommit 0;

_light_1 = "#lightpoint" createVehicleLocal [0,0,0];
_light_1 lightAttachObject [player, [0, 6, 4]];
_light_1 setLightColor [250, 150, 50];
_light_1 setLightIntensity 70;
_light_1 setLightUseFlare true;
_light_1 setLightFlareSize 0.6;
_light_1 setLightFlareMaxDistance 50;

_light_2 = "#lightpoint" createVehicleLocal [0,0,0];
_light_2 lightAttachObject [player, [0, -6, 4]];
_light_2 setLightColor [250, 150, 50];
_light_2 setLightIntensity 70;
_light_2 setLightUseFlare true;
_light_2 setLightFlareSize 0.6;
_light_2 setLightFlareMaxDistance 50;

_list lbAdd "Tenues";
_list lbSetData [0, "uniforms"];

_list lbAdd "Hauts de tête";
_list lbSetData [1, "headgear"];

_list lbAdd "Lunettes";
_list lbSetData [2, "goggles"];

_list lbAdd "Gilets";
_list lbSetData [3, "vests"];

_list lbAdd "Sacs à dos";
_list lbSetData [4, "backpacks"];

_list lbSetCurSel 0;

waitUntil {isNull _display};

titleText["", "BLACK IN"];

removeVest player;
if (g_shop_clothing_vest != "") then
{
	player addVest g_shop_clothing_vest;
	{
		if (player canAddItemToVest _x) then {
			player addItemToVest _x;
		} else {
			if (player canAdd _x) then {
				player addItem _x;
			};
		};
	} forEach (g_shop_clothing_vest_items);
};

removeUniform player;
if (g_shop_clothing_uniform != "") then
{
	player forceAddUniform g_shop_clothing_uniform;
	{
		if (player canAddItemToUniform _x) then {
			player addItemToUniform _x;
		} else {
			if (player canAdd _x) then {
				player addItem _x;
			};
		};
	} forEach (g_shop_clothing_uniform_items);
};

removeBackpack player;
if (g_shop_clothing_backpack != "") then
{
	player addBackpack g_shop_clothing_backpack;
	{
		if (player canAddItemToBackpack _x) then {
			player addItemToBackpack _x
		} else {
			if (player canAdd _x) then {
				player addItem _x;
			};
		};
	} forEach (g_shop_clothing_backpack_items);
};

removeGoggles player;
if (g_shop_clothing_goggles != "") then {
	player addGoggles g_shop_clothing_goggles;
};

removeHeadgear player;
if (g_shop_clothing_head != "") then {
	player addHeadgear g_shop_clothing_head;
};

if (!(g_shop_clothing_oldList isEqualTo [])) then
{
	_txt = "";
	{
		if (player canAdd _x) then {
			_txt = format["%1%2<br/>", _txt, ([_x] call AlysiaClient_fnc_fetchCfgDetails) select 1];
		} else {
			g_shop_clothing_oldList = g_shop_clothing_oldList - [_x];
		};
	} forEach g_shop_clothing_oldList;

	if (_txt != "") then
	{
		_action =
		[
			format["Voulez-vous récupérer vos anciens articles ?<br/><t align='center' color='#3ADF00'>%1</t>", _txt],
			"Friperie",
			"Oui",
			"Non"
		] call BIS_fnc_guiMessage;
		if (_action) then
		{
			{
				player addItem _x;
			} forEach g_shop_clothing_oldList;
		};
	};
};

deleteVehicle _light_1;
deleteVehicle _light_2;

g_shop_camera cameraEffect ["TERMINATE", "BACK"];
camDestroy g_shop_camera;
