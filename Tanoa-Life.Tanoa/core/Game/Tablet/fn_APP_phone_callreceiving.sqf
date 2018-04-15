/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_txt";

if ((call AlysiaClient_fnc_hasPhone) && !(missionNamespace getVariable ['calling', false]) && ((missionNamespace getVariable ['calling_number', '']) != '')) then
{
	if (missionNamespace getVariable ["calling_hide", false]) then {
		_txt = "<t size='2.5' align='center'>Inconnu</t>";
	} else {
		_name = [(missionNamespace getVariable ["calling_number", ""])] call AlysiaClient_fnc_phone_number_to_name;
		if (_name isEqualTo (missionNamespace getVariable ["calling_number", ""])) then {
			_txt = format["<t size='3.5' align='center'>%1</t>", _name];
		} else {
			_txt = format["<t size='2' align='center'>%1</t>", _name];
		};
	};

	((uiNamespace getVariable ["tablet", displayNull]) displayCtrl 14006) ctrlSetStructuredText parseText _txt;
} else {
	['MAIN'] spawn AlysiaClient_fnc_tabletApp;
};
