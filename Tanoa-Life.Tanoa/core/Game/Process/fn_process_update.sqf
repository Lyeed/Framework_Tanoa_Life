/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list_require", "_maxAmount", "_can", "_receive_weight", "_require_weight", "_newWeight", "_list_receive", "_config"];

disableSerialization;
_display = findDisplay 53000;
if (isNull _display) exitWith {};

_config = missionConfigFile >> "ALYSIA_PROCESS" >> g_interaction_process_type;

_maxAmount = round(parseNumber(ctrlText 53006));
if (_maxAmount < 1) then
{
	_maxAmount = 1;
	ctrlSetText[53006, "1"];
} else {
	if (_maxAmount > 150) then
	{
		_maxAmount = 150;
		ctrlSetText[53006, "150"];
	};
};

_can = true;

_list_require = _display displayCtrl 53005;
lbClear _list_require;
_require_weight = 0;
{
	_index = _list_require lbAdd format["%1x %2", (_maxAmount * (_x select 1)), [(_x select 0)] call AlysiaClient_fnc_itemGetName];
	if ([(_x select 0)] call AlysiaClient_fnc_itemCount >= (_maxAmount * (_x select 1))) then {
		_list_require lbSetPicture [_index, "Alysia_Client_Texture\Data\process\items_ok.paa"];
	} else {
		_list_require lbSetPicture [_index, "Alysia_Client_Texture\Data\process\items_missing.paa"];
		_can = false;
	};

	_require_weight = _require_weight + ((([(_x select 0)] call AlysiaClient_fnc_itemGetWeight) * (_x select 1)) * _maxAmount);
} forEach getArray(_config >> "require" >> "items_virtual");

_list_receive = _display displayCtrl 53014;
lbClear _list_receive;

_receive_weight = 0;
{
	_index = _list_receive lbAdd format["%1x %2", (_maxAmount * (_x select 1)), [(_x select 0)] call AlysiaClient_fnc_itemGetName];
	_list_receive lbSetPicture [_index, [(_x select 0)] call AlysiaClient_fnc_itemGetImage];

	_receive_weight = _receive_weight + ((([(_x select 0)] call AlysiaClient_fnc_itemGetWeight) * (_x select 1)) * _maxAmount);
} forEach getArray(_config >> "receive" >> "items_virtual");

{
	_info = [_x] call AlysiaClient_fnc_fetchcfgDetails;
	for "_i" from 1 to _maxAmount do
	{
		_index = _list_receive lbAdd (_info select 1);
		_list_receive lbSetPicture [_index, (_info select 2)];
	};
} forEach getArray(_config >> "receive" >> "items_arma");

if (getNumber(_config >> "receive" >> "money") > 0) then
{
	_index = _list_receive lbAdd format["%1$", [(getNumber(_config >> "receive" >> "money") * _maxAmount)] call AlysiaClient_fnc_numberText];
	_list_receive lbSetPicture [_index, "Alysia_Client\Textures\Items_virtual\money.paa"];
};

(_display displayCtrl 53007) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	[
		(getNumber(_config >> "time_per_item") * _maxAmount) + getNumber(_config >> "time_default"),
		"M:SS"
	] call CBA_fnc_formatElapsedTime
];

_newWeight = g_carryWeight - _require_weight + _receive_weight;
if (_newWeight > g_maxWeight) then {
	_can = false;
};
if (_newWeight < 0) then {
	_newWeight = 0;
};

(_display displayCtrl 53013) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1/%3 <t size='0.8'><img image='Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_single_select.paa'/></t> <t color='%4'>%2</t>/%3</t>",
	g_carryWeight,
	_newWeight,
	g_maxWeight,
	if (_newWeight <= g_maxWeight) then {"#8cff9b"} else {"#ff8c8c"}
];

if (_can) then
{
	ctrlShow[53008, true];
	ctrlShow[53009, true];
	ctrlShow[53010, true];
	ctrlShow[53011, true];
	ctrlShow[53012, true];
} else {
	ctrlShow[53008, false];
	ctrlShow[53009, false];
	ctrlShow[53010, false];
	ctrlShow[53011, false];
	ctrlShow[53012, false];
};
