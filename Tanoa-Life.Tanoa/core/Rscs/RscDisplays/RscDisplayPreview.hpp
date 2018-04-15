class RscDisplayPreview: RscDisplayDefault
{
	idd=34000;
	name="RscDisplayPreview";
	class controlsBackground {};
	class controls
	{
		class HEADER: RscStructuredText
		{
			idc=34001;

			x=-0.00531505 * safezoneW + safezoneX;
			y=0.06 * safezoneH + safezoneY;
			w=1.00547 * safezoneW;
			h=0.066 * safezoneH;
		};
		class EXIT_INFO: RscStructuredText
		{
			idc=34002;
			text="<t align='center' size='1.5'>Appuyez sur une touche pour QUITTER</t>";

			x=0.29375 * safezoneW + safezoneX;
			y=0.83 * safezoneH + safezoneY;
			w=0.4125 * safezoneW;
			h=0.044 * safezoneH;
		};
	};
};
