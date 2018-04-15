/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_medecines", "_deseases", "_other", "_pouls", "_maxPouls", "_temp", "_target"];
_medecines = [_this, 0, [], [[]]] call BIS_fnc_param;
_deseases = [_this, 1, [], [[]]] call BIS_fnc_param;
_target = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if (["Diagnostic médical", 15, _target] call AlysiaClient_fnc_showProgress) then
{
	createDialog "RscDisplayDefaultText";

	disableSerialization;
	_display = findDisplay 68000;
	if (isNull _display) exitWith {};

	_other = "";
	_pouls = random((90 - 50) + 50);
	_maxPouls = 0;
	_temp = 36 + random(1);

	{
		_config = missionConfigFile >> "ALYSIA_DESEASES" >> (_x select 0);
		_sentences = getArray(_config >> "sentences");
		if (count(_sentences) > 0) then {
			_other = _other + format["- %1<br/>", (_sentences call BIS_fnc_selectRandom)];
		};

		if (getNumber(_config >> "pouls") > _maxPouls) then {
			_maxPouls = getNumber(_config >> "pouls");
		};

		_temp = _temp + getNumber(_config >> "temperature");
	} forEach _deseases;
	_pouls = _pouls + _maxPouls;

	(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Examen médical</t>";
	(_display displayCtrl 68001) ctrlSetStructuredText parseText format
	[
			"<t align='left'>Pouls</t><t align='right'>%1</t><br/>"
		+	"<t align='left'>Température</t><t align='right'>%2</t><br/>"
		+	"<t align='left'>Autre(s) :</t><br/>"
		+	"%3",
		_pouls,
		_temp,
		_other
	];
};
