class RscDisplayTablet: RscDisplayDefault
{
	idd=7500;
	name="RscDisplayTablet";
	onLoad="uiNamespace setVariable[""tablet"", _this select 0];uiNamespace setVariable[""main_status"", 0];";
	
	class controlsBackground
	{
		class FRAME: RscPicture
		{
			text="Alysia_Client_Texture\Data\tablet\frame.paa";

			x=0.292971 * safezoneW + safezoneX;
			y=0.30191 * safezoneH + safezoneY;
			w=0.4125 * safezoneW;
			h=0.451 * safezoneH;
		};
		class BACKGROUND: RscPicture
		{
			idc=7502;
			text="Alysia_Client_Texture\Data\tablet\backgrounds\loading_screen.jpg";

			x=0.316437 * safezoneW + safezoneX;
			y=0.3394 * safezoneH + safezoneY;
			w=0.369167 * safezoneW;
			h=0.375852 * safezoneH;
		};
	};

	class controls
	{
		class STATUS_BAR: RscStructuredText
		{
			idc=7501;
			font="PuristaSemiBold";
			colorBackground[]={0,0,0,0.6};

			x=0.316231 * safezoneW + safezoneX;
			y=0.6925 * safezoneH + safezoneY;
			w=0.369186 * safezoneW;
			h=0.022 * safezoneH;
		};

		class MAIN_BUTTON_IMAGE: RscPicture
		{
			idc=7507;
			text="Alysia_Client_Texture\Data\tablet\home_basic.paa";

			x=0.680469 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class MAIN_BUTTON_BUTTON: RscButtonSilent
		{
			action="uiNamespace setVariable['main_status', 0];['MAIN'] spawn AlysiaClient_fnc_tabletApp;if (!(player getVariable ['tablet_on', false])) then {player setVariable ['tablet_on', true]};";
			onMouseEnter="ctrlSetText[7507,""Alysia_Client_Texture\Data\tablet\home_select.paa""];";
			onMouseExit="ctrlSetText[7507,""Alysia_Client_Texture\Data\tablet\home_basic.paa""];";
			tooltip="Menu principal";

			x=0.680469 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		#include "RscDisplayTablet_apps\main.hpp"
		#include "RscDisplayTablet_apps\solde.hpp"
		#include "RscDisplayTablet_apps\settings.hpp"
		#include "RscDisplayTablet_apps\vehicles.hpp"
		#include "RscDisplayTablet_apps\server.hpp"
		#include "RscDisplayTablet_apps\store.hpp"
		#include "RscDisplayTablet_apps\help.hpp"
		#include "RscDisplayTablet_apps\phone.hpp"
		#include "RscDisplayTablet_apps\licenses.hpp"
		#include "RscDisplayTablet_apps\faction.hpp"
		#include "RscDisplayTablet_apps\market.hpp"
		#include "RscDisplayTablet_apps\staff.hpp"
		#include "RscDisplayTablet_apps\fuel.hpp"
		#include "RscDisplayTablet_apps\announces.hpp"
		#include "RscDisplayTablet_apps\gov.hpp"
		#include "RscDisplayTablet_apps\dab.hpp"
		#include "RscDisplayTablet_apps\annuaire.hpp"
		#include "RscDisplayTablet_apps\compagnies.hpp"
	};
};
