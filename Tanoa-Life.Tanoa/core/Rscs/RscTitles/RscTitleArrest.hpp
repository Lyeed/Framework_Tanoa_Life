class RscTitleArrest
{
	idd=-1;
	name="RscTitleArrest";
	movingEnable=0;
	duration=9999999999999;
	fadein=3;
	fadeout=3;
	onLoad="uiNamespace setVariable ['RscTitleArrest', (_this select 0)]";
	class controlsBackground
	{
		class ARREST_INFOS: RscStructuredText
		{
			idc=13500;
			
			x=0.190625 * safezoneW + safezoneX;
			y=0.06 * safezoneH + safezoneY;
			w=0.603281 * safezoneW;
			h=0.319 * safezoneH;
		};
	};
};
