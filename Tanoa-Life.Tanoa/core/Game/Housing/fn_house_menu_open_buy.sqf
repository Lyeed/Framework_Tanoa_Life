/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_display", "_rank", "_rank_condition", "_license", "_license_condition", "_price", "_price_condition"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayHousingBuy";

disableSerialization;
_display = findDisplay 45000;
g_interaction_target = _target;

_config = missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_target);

_rank = getNumber(_config >> "factions" >> str(playerSide) >> "rank");
if ((_rank isEqualTo 0) || ((_rank > 0) && ((player getVariable ["rank", 0]) >= _rank))) then {
	_rank_condition = true;
} else {
	_rank_condition = false;
};

_license = getText(_config >> "factions" >> str(playerSide) >> "license");
if ((_license isEqualTo "") || ((_license != "") && ([_license] call AlysiaClient_fnc_hasLicense))) then {
	_license_condition = true;
} else {
	_license_condition = false;
};

_price = getNumber(_config >> "price");
if ((_price > 0) && (g_atm >= _price)) then {
	_price_condition = true;
} else {
	_price_condition = false;
};

(_display displayCtrl 45006) ctrlSetStructuredText parseText format
[
	"<t font='EtelkaMonospacePro' size='0.8'>" +
	"<t align='center'>- Prérequis -</t><br/>" +
	"<t align='left'>Rank</t><t align='right' color='%1'>%2</t><br/>" +
	"<t align='left'>Licence</t><t align='right' color='%3'>%4</t><br/>" +
	"<t align='left'>Prix</t><t align='right' color='%5'>%6$</t><br/>" +
	"<t align='center'>- Description - </t><br/>" +
	"<t align='left'>Peut contenir un coffre</t><t align='right'>%7</t><br/>%9" +
	"<t align='left'>Possède un garage</t><t align='right'>%8</t><br/>" +
	"</t>",
	if (_rank_condition) then {"#31B404"} else {"#DF0101"},
	[playerSide, _rank] call AlysiaClient_fnc_rankToStr,
	if (_license_condition) then {"#31B404"} else {"#DF0101"},
	if (_license isEqualTo "") then {"Aucune"} else {getText(missionConfigFile >> "ALYSIA_LICENSES" >> _license >> "name")},
	if (_price_condition) then {"#31B404"} else {"#DF0101"},
	[_price] call AlysiaClient_fnc_numberText,
	if (isClass(_config >> "storage")) then {"<t color='#8cff9b'>Oui</t>"} else {"<t color='#ff8c8c'>Non</t>"},
	if (isClass(_config >> "garage")) then {"<t color='#8cff9b'>Oui</t>"} else {"<t color='#ff8c8c'>Non</t>"},
	if (isClass(_config >> "storage")) then {
		format
		[
			"<t align='left'>Inventaire virtuel</t><t align='right'>%1</t><br/><t align='left'>Inventaire physique</t><t align='right'>%2</t><br/>",
			getNumber(missionConfigFile >> "ALYSIA_STORAGES" >> getText(_config >> "storage" >> "type") >> "inventory"),
			getNumber(configFile >> "CfgVehicles" >> getText(_config >> "storage" >> "type") >> "maximumLoad")
		];
	} else {""}
];

if (_price_condition && _rank_condition && _license_condition) then
{
	ctrlShow[45001, true];
	ctrlShow[45002, true];
	ctrlShow[45003, true];
	ctrlShow[45004, true];
	ctrlShow[45005, true];
} else {
	ctrlShow[45001, false];
	ctrlShow[45002, false];
	ctrlShow[45003, false];
	ctrlShow[45004, false];
	ctrlShow[45005, false];
};
