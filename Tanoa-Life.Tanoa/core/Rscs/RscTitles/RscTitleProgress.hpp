class RscTitleProgress
{
	name="RscTitleProgress";
	idd=38200;
	fadein=0;
	duration=9999999999999;
	fadeout=0;
	movingEnable=0;
	onLoad="uiNamespace setVariable ['RscTitleProgress',(_this select 0)];";

	class controlsBackground 
	{
		class background : RscText
		{
			colorBackground[]={0,0,0,0.6};

			x=0.38140 * safezoneW + safezoneX;
			y=0.06 * safezoneH + safezoneY;
			w=0.65;h=0.05;
		};
		class ProgressBar : RscProgress
		{
			idc=38201;

			x=0.38140 * safezoneW + safezoneX;
			y=0.06 * safezoneH + safezoneY;
			w=0.65;h=0.05;
		};
		
		class ProgressText : RscText
		{
			idc=38202;

			x=0.386 * safezoneW + safezoneX;
			y=0.0635 * safezoneH + safezoneY;
			w=0.65;
			h=(1 / 25);
		};
	};
};
