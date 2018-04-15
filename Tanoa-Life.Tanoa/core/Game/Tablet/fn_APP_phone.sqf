/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ([] call AlysiaClient_fnc_hasPhone) then
{
	if (((player getVariable ["number", ""]) isEqualTo "") || (g_phone_forfait in ["none", ""])) then {
		["store_forfait"] spawn AlysiaClient_fnc_tabletApp;
	} else {

		disableSerialization;
		_display = uiNamespace getVariable ["tablet", displayNull];
		if (isNull _display) exitWith {};

		(_display displayCtrl 8500) ctrlSetStructuredText parseText format
		[
			"<t font='PuristaBold'><t size='1.2'>Numéro</t> <t size='2.3' color='#190707'>%1</t></t>",
			(player getVariable ["number", ""])
		];

		(_display displayCtrl 8501) ctrlSetStructuredText parseText format
		[
			"<t font='PuristaBold' align='right'><t size='1.2'>Forfait</t> <t size='2' color='#190707'>%1</t></t>",
			getText(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "name")
		];

		_actual_idc = 8502;
		{
			if (call compile (_x select 3)) then
			{
				_image = _display displayCtrl _actual_idc;
				_image ctrlSetText (_x select 0);

				_button = _display displayCtrl (_actual_idc + 1);
				_button buttonSetAction (_x select 2);
				_button ctrlSetTooltip (_x select 4);
				if ((_x select 1) isEqualTo "") then
				{
					_button ctrlRemoveAllEventHandlers "MouseEnter";
					_button ctrlRemoveAllEventHandlers "MouseExit";
				} else {
					_button ctrlSetEventHandler ["MouseEnter", format["((uiNamespace getVariable 'tablet') displayCtrl %1) ctrlSetText '%2';", _actual_idc, (_x select 1)]];
					_button ctrlSetEventHandler ["MouseExit", format["((uiNamespace getVariable 'tablet') displayCtrl %1) ctrlSetText '%2';", _actual_idc, (_x select 0)]];
				};

				[_actual_idc, true] call AlysiaClient_fnc_tabletShow;
				[(_actual_idc + 1), true] call AlysiaClient_fnc_tabletShow;
				_actual_idc = _actual_idc + 2;
			};
		} forEach
		([
			[
				"Alysia_Client_Texture\Data\phone\main\call.paa",
				"Alysia_Client_Texture\Data\phone\main\call_select.paa",
				"['phone_call'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Appeler"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\sms.paa",
				"Alysia_Client_Texture\Data\phone\main\sms_select.paa",
				"['phone_messages_read'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Messages reçus"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\contact.paa",
				"Alysia_Client_Texture\Data\phone\main\contact_select.paa",
				"['phone_contacts'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Contacts"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\send.paa",
				"Alysia_Client_Texture\Data\phone\main\send_select.paa",
				"['phone_messages_send'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Envoyer un message"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\forfait.paa",
				"Alysia_Client_Texture\Data\phone\main\forfait_select.paa",
				"['store_forfait'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Changer de forfait"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\number.paa",
				"Alysia_Client_Texture\Data\phone\main\number_select.paa",
				"[] spawn AlysiaClient_fnc_APP_phone_change;",
				"getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'phone' >> 'change_number_price') != -1",
				"Changer de numéro"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\blacklist.paa",
				"Alysia_Client_Texture\Data\phone\main\blacklist_select.paa",
				"[""phone_blacklist""] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Bloquer un numéro"
			],
			[
				"Alysia_Client_Texture\Data\phone\main\config.paa",
				"Alysia_Client_Texture\Data\phone\main\config_select.paa",
				"['phone_settings'] spawn AlysiaClient_fnc_tabletApp;",
				"true",
				"Réglages"
			]
		]);
	};
} else {
	["Vous n'avez pas de téléphone."] call AlysiaClient_fnc_error;
	closeDialog 0;
};
