/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_ressource", "_config", "_price", "_sync", "_diff"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_ressource = _list lbData _sel;
if (_ressource isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _ressource;

_price = [_ressource] call AlysiaClient_fnc_market_getPrice;
_sync = missionNamespace getVariable [format["market_sync_%1", _ressource], _price];
_diff = _price - _sync;

(_display displayCtrl 8805) ctrlSetStructuredText parseText format
[
	"<t font='EtelkaMonospacePro' align='center' size='1.3' color='#00BFFF'>%1</t>",
	([_ressource] call AlysiaClient_fnc_itemGetName)
];

(_display displayCtrl 8806) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='0.8'>"
	+	"<t align='center' color='#086A87'>- Prix -</t><br/>"
	+	"<t align='left'>Actuel</t><t align='right'><t color='#8cff9b'>%1</t>$</t><br/>"
	+	"<t align='left'>Maximum</t><t align='right'><t color='#8cff9b'>%2</t>$</t><br/>"
	+	"<t align='left'>Minimum</t><t align='right'><t color='#8cff9b'>%3</t>$</t><br/>"
	+	"<t align='left'>Depuis dernier évènement</t><t align='right'>%5<t color='%6'>%7</t>$</t><br/><br/>"
	+	"<t align='center' color='#086A87'>- Informations - </t><br/>"
	+	"<t align='left'>Légal</t><t align='right'>%4</t><br/>"
	+	"</t>",
	[_price] call AlysiaClient_fnc_numberText,
	[getNumber(_config >> "market" >> "max")] call AlysiaClient_fnc_numberText,
	[getNumber(_config >> "market" >> "min")] call AlysiaClient_fnc_numberText,
	if (getNumber(_config >> "illegal") isEqualTo 1) then {"Non"} else {"Oui"},
	if (_diff >= 0) then {"+"} else {"-"},
	if (_diff >= 0) then {"#3ADF00"} else {"#DF0101"},
	[abs _diff] call AlysiaClient_fnc_numberText
];

missionNamespace setVariable ["market_sync_id", _sel];
