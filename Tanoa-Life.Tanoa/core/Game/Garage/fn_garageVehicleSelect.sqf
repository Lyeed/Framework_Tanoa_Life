/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private
[
    "_ctrl_trunk",
    "_ctrl_vehicles",
    "_sel",
    "_className",
    "_data",
    "_vehicleInfo",
    "_fuel",
    "_storePos",
    "_display",
    "_arrayIndex",
    "_idc",
    "_price",
    "_price_condition",
    "_rank",
    "_rank_condition",
    "_licenses",
    "_licenses_text",
    "_license_condition",
    "_faction_condition"
];

disableSerialization;
_ctrl_vehicles = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};

_display = findDisplay 2800;
if (isNull _display) exitWith {};

_arrayIndex = _ctrl_vehicles lbValue _sel;
if (_arrayIndex isEqualTo -1) exitWith {};

_data = g_garage_vehicles select _arrayIndex;
_className = _data select 0;

(_display displayCtrl 2806) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", _data select 5];

_ctrl_trunk = _display displayCtrl 2804;
lbClear _ctrl_trunk;

{
    _index = _ctrl_trunk lbAdd format["%1x %2", [(_x select 1)] call AlysiaClient_fnc_numberText, [(_x select 0)] call AlysiaClient_fnc_itemGetName];
    _ctrl_trunk lbSetPicture [_index, ([(_x select 0)] call AlysiaClient_fnc_itemGetImage)];
} forEach (_data select 4);
if ((lbSize _ctrl_trunk) isEqualTo 0) then {
    _ctrl_trunk lbAdd "Vide";
};

_ctrl_trunk lbSetCurSel -1;

_fuel = _data select 3;
_vehicleInfo = [_className] call AlysiaClient_fnc_fetchVehInfo;
_storePos = [_data select 6, _data select 7, _data select 8];

_price = _vehicleInfo select 17;
if ((g_atm >= _price) && (_price > 0)) then {
    _price_condition = true;
} else {
    _price_condition = false;
};

_rank = _vehicleInfo select 15;
if ((_rank isEqualTo 0) || ((_rank > 0) && ((player getVariable ["rank", 0]) >= _rank))) then {
    _rank_condition = true;
} else {
    _rank_condition = false;
};

_licenses = _vehicleInfo select 13;
if (count(_licenses) > 0) then
{
    _licenses_text = "";
    _license_condition = true;

    {
        if ([_x] call AlysiaClient_fnc_hasLicense) then {
            _licenses_text = _licenses_text + format["<t color='#31B404'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
        } else {
            _licenses_text = _licenses_text + format["<t color='#DF0101'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
            _license_condition = false;
        };
    } forEach _licenses;
} else {
    _licenses_text = "<t color='#31B404'>Aucune</t><br/>";
    _license_condition = true;
};

if (((_vehicleInfo select 11) isEqualTo str(playerSide)) || ((_vehicleInfo select 11) isEqualTo "CIV")) then {
    _faction_condition = true;
} else {
    _faction_condition = false;
};

(_display displayCtrl 2825) ctrlSetStructuredText parseText format
[
    "<t font='EtelkaMonospacePro' size='0.8'>" +
    "<t align='center'>- Prérequis de sortie de garage -</t><br/>" +
    "<t align='left'>Faction</t><t align='right' color='%19'>%20</t><br/>" +
    "<t align='left'>Rank</t><t align='right' color='%14'>%15</t><br/>" +
    "<t align='left'>Licence(s)</t><t align='right'>%16</t>" +
    "<t align='left'>Prix</t><t align='right' color='%13'>%4$</t><br/>" +
    "<br/><t align='center'>- Informations générales -</t><br/>" +
	"<t align='left'>Immatriculation</t><t align='right'>%1</t><br/>" +
    "<t align='left'>Assuré</t><t align='right'>%2</t><br/>" +
    "<t align='left'>Prix de l'assurance</t><t align='right'><t color='#8cff9b'>%3</t>$</t><br/>" +
    "<t align='left'>Prix de vente</t><t align='right'><t color='#8cff9b'>%5</t>$</t><br/>" +
    "<t align='left'>Vitesse max</t><t align='right'>%6 km/h</t><br/>" +
    "<t align='left'>Puissance du moteur</t><t align='right'>%7 ch</t><br/>" +
    "<t align='left'>Sièges passagers</t><t align='right'>%8</t><br/>" +
    "<t align='left'>Capacité virtuelle du coffre</t><t align='right'>%9</t><br/>" +
    "<t align='left'>Capacité physique du coffre</t><t align='right'>%21</t><br/>" +
    "<t align='left'>Réservoir</t><t align='right'>%10/%11L(%17%18)</t><br/>" +
    "<t align='left'>Carburant</t><t align='right'>%12</t><br/>" +
    "<t align='left'>Equipé de ceintures de sécurité</t><t align='right'>%22</t><br/>" +
    "<t align='left'>Crochetable</t><t align='right'>%23</t>" +
    "</t>",
    if ((_vehicleInfo select 22) isEqualTo 0) then {(_data select 1)} else {"Inconnue"},
    if ((_data select 2) isEqualTo 1) then {"<t color='#8cff9b'>Oui</t>"} else {"<t color='#ff8c8c'>Non</t>"},
    [_vehicleInfo select 18] call AlysiaClient_fnc_numberText,
    [_price] call AlysiaClient_fnc_numberText,
  	[_vehicleInfo select 19] call AlysiaClient_fnc_numberText,
  	_vehicleInfo select 3,
  	_vehicleInfo select 6,
  	_vehicleInfo select 5,
  	_vehicleInfo select 10,
    round((_fuel * (_vehicleInfo select 7)) / 100),
  	round(_vehicleInfo select 7),
    getText(missionConfigFile >> "ALYSIA_FUEL" >> (_vehicleInfo select 14) >> "name"),
    if (_price_condition) then {"#31B404"} else {"#DF0101"},
    if (_rank_condition) then {"#31B404"} else {"#DF0101"},
    [[_vehicleInfo select 11] call AlysiaClient_fnc_strToSide, _rank] call AlysiaClient_fnc_rankToStr,
    _licenses_text,
    _fuel,
    "%",
    if (_faction_condition) then {"#31B404"} else {"#DF0101"},
    getText(missionConfigFile >> "ALYSIA_FACTIONS" >> (_vehicleInfo select 11) >> "name_full"),
    getNumber(configFile >> "CfgVehicles" >> _className >> "maximumload"),
    if (_className isKindOf "Car") then {"Oui"} else {"Non"},
    if ((_vehicleInfo select 23) isEqualTo 1) then {"Non"} else {"Oui"}
];

_idc = 2810;

{
    if (call compile (_x select 4)) then
    {
        (_display displayCtrl _idc) ctrlSetText (_x select 2);

        _btn = _display displayCtrl (_idc + 1);
        _btn buttonSetAction (_x select 1);
        _btn ctrlSetTooltip (_x select 0);
        _btn ctrlSetEventHandler["MouseEnter", format["ctrlSetText[%1,'%2'];", _idc, (_x select 3)]];
        _btn ctrlSetEventHandler["MouseExit", format["ctrlSetText[%1,'%2'];", _idc, (_x select 2)]];

        ctrlShow[_idc, true];
        ctrlShow[(_idc + 1), true];

        _idc = _idc + 2;
    };
} forEach
([
    [
        "Récupérer",
        "[] spawn AlysiaClient_fnc_garageVehicleGet;",
        "Alysia_Client_Texture\Data\garage\action_get.paa",
        "Alysia_Client_Texture\Data\garage\action_get_select.paa",
        "
            (
                _license_condition &&
                _rank_condition &&
                _price_condition &&
                _faction_condition &&
                (
                    (_storePos isEqualTo [0,0,0]) ||
                    (
                        !(_storePos isEqualTo [0,0,0]) &&
                        ((player distance _storePos) < 20)
                    )
                )
            )
        "
    ],[
        "Localiser",
        "[] spawn AlysiaClient_fnc_garageVehicleFind;",
        "Alysia_Client_Texture\Data\garage\action_localize.paa",
        "Alysia_Client_Texture\Data\garage\action_localize_select.paa",
        "!(_storePos isEqualTo [0,0,0]) && ((player distance _storePos) > 20)"
    ],[
        "Assurer",
        "[] spawn AlysiaClient_fnc_garageVehicleAssure;",
        "Alysia_Client_Texture\Data\garage\action_insurrance.paa",
        "Alysia_Client_Texture\Data\garage\action_insurrance_select.paa",
        "((_data select 2) isEqualTo 0)"
    ],[
        "Importer",
        "[] spawn AlysiaClient_fnc_garageVehicleImport;",
        "Alysia_Client_Texture\Data\garage\action_import.paa",
        "Alysia_Client_Texture\Data\garage\action_import_select.paa",
        "
            !(_storePos isEqualTo [0,0,0]) &&
            ((player distance _storePos) > 20) &&
            !([_storePos] call AlysiaClient_fnc_nearFourriere) &&
            !([getPos player] call AlysiaClient_fnc_nearFourriere) &&
            ((_data select 4) isEqualTo [])
        "
    ],[
        "Renommer",
        "[] spawn AlysiaClient_fnc_garageVehicleRename;",
        "Alysia_Client_Texture\Data\garage\action_rename.paa",
        "Alysia_Client_Texture\Data\garage\action_rename_select.paa",
        "true"
    ],[
        "Vendre",
        "[] spawn AlysiaClient_fnc_garageVehicleSell;",
        "Alysia_Client_Texture\Data\garage\action_sell.paa",
        "Alysia_Client_Texture\Data\garage\action_sell_select.paa",
        "true"
    ]
]);

if (_idc < 2824) then
{
    for "_i" from _idc to 2823 do
    {
        ctrlShow[_i, false];
    };
};
