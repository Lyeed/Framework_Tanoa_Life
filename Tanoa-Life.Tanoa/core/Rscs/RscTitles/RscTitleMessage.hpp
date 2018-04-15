class RscTitleMessage
{
	idd=-1;
	movingEnable=0;
	fadein=0;
	duration=10;
	fadeout=3;
	name="RscTitleMessage";
	onLoad="uiNamespace setVariable ['RscTitleMessage',(_this select 0)];";

	class controlsBackground 
	{
		class TEXT: RscStructuredText
		{
			idc=95000;
			colorBackground[]={0,0,0,0.6};

			x=-0.000156274 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.232031 * safezoneW;
			h=0.121 * safezoneH;
		};
		class TITLE: RscText
		{
			idc=95001;
			text="Information";
			colorBackground[]={0,0,0,0.8};

			x=-0.000156274 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class FRAME: RscFrame
		{
			idc=95002;

			x=-0.00531252 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.237187 * safezoneW;
			h=0.121 * safezoneH;
		};
	};

	class controls {};
};
