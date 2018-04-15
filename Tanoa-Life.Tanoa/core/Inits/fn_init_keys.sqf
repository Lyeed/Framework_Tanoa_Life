/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

#include "\a3\editor_f\Data\Scripts\dikCodes.h"

g_keybinds = [];

["Alysia", "actionHandler", "Action", {[] call AlysiaEvent_fnc_actionKeyHandler}, {}, [DIK_LWIN, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionHandler";

["Alysia", "actionSilent", "Boules Quies", {[] call AlysiaClient_fnc_silence}, {}, [DIK_U, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionSilent";

["Alysia", "actionTablet", "Ouvrir tablette", {[] spawn AlysiaClient_fnc_tabletOpen}, {}, [DIK_Y, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionTablet";

["Alysia", "actionSurrender", "Mains sur la tête", {[] call AlysiaClient_fnc_surrender}, {}, [DIK_H, [false, false, true]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionSurrender";

["Alysia", "actionVictim", "Mode panique", {[] call AlysiaClient_fnc_panic_mod}, {}, [DIK_H, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionVictim";

["Alysia", "actionKnock", "Mettre un coup", {[] spawn AlysiaClient_fnc_knockoutAction}, {}, [DIK_G, [true, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionKnock";

["Alysia", "actionHoldster", "Holster", {[] call AlysiaClient_fnc_holdsterSwitch}, {}, [DIK_H, [true, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionHoldster";

["Alysia", "actionSifflet", "Utiliser (sifflet)", {[] call AlysiaClient_fnc_sifflet}, {}, [DIK_F, [false, false, true]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionSifflet";

["Alysia", "actionSirene", "Sirène du véhicule", {[] call AlysiaClient_fnc_sirene}, {}, [DIK_F, [true, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionSirene";

["Alysia", "actionNitro", "Nitro du véhicule", {[] call AlysiaClient_fnc_activateNitro}, {}, [DIK_1, [true, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionNitro";

["Alysia", "actionAnimPushup", "Animation : Pompe", {["AmovPercMstpSnonWnonDnon_exercisePushup"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD1, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimPushup";

["Alysia", "actionAnimKata", "Animation : Kata", {["AmovPercMstpSnonWnonDnon_exerciseKata"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD2, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimKata";

["Alysia", "actionAnimKneeBend", "Animation : Flexion", {["AmovPercMstpSnonWnonDnon_exercisekneeBendA"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD3, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimKneeBend";

["Alysia", "actionAnimSplit", "Animation : Grand écart", {["Acts_EpicSplit"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD4, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimSplit";

["Alysia", "actionAnimSitTired", "Animation : Assis (dépité, apeuré)", {["Acts_CivilShocked_2"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD5, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimSitTired";

["Alysia", "actionAnimPissing", "Animation : Uriner", {["Acts_AidlPercMstpSlowWrflDnon_pissing"] spawn AlysiaClient_fnc_animPlay}, {}, [DIK_NUMPAD6, [false, false, false]], false, 0, false] call CBA_fnc_addKeybind;
g_keybinds pushBack "actionAnimPissing";
