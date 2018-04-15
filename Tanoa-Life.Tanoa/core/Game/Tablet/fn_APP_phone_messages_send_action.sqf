/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_data", "_display", "_sent", "_info"];

_data = [(ctrlText 8334), ([(ctrlText 8336), ","] call CBA_fnc_split), (cbChecked ((findDisplay 7500) displayCtrl 8338))] call AlysiaClient_fnc_phone_message_send;
_sent = _data select 0;
_info = _data select 1;

if (_sent > 0) then
{
	disableSerialization;
	_display = uiNamespace getVariable["tablet", displayNull];

	if (!(isNull _display)) then
	{
		(_display displayCtrl 8334) ctrlSetText "";
		(_display displayCtrl 8336) ctrlSetText "";
		(_display displayCtrl 8338) ctrlSetChecked false;
		(_display displayCtrl 8332) lbSetCurSel -1;
	};
	playSound "message_sent";
	[_info] call AlysiaClient_fnc_info;
} else {
	[_info] call AlysiaClient_fnc_error;
};
