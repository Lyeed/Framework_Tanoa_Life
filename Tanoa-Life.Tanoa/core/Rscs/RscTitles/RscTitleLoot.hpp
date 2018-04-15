class RscTitleLoot
{
	name="RscTitleLoot";
	idd=-1;
	movingEnable=0;
	duration=9999999999999;
	fadein=1;
	fadeout=1;
	onLoad="uiNamespace setVariable [""RscTitleLoot"",(_this select 0)]";
	class controlsBackground
	{
		class list : RscListBox
		{
			idc=900;
			sizeEx=0.04;
			colorBackground[]={-1,-1,-1,0};
			colorSelectBackground[]={-1,-1,-1,0};
			colorSelectBackground2[]={-1,-1,-1,0};

			x=safezoneX + 0.02;
			y=safeZoneY + safezoneH * 2/3;
            w=0.4 * safezoneW;
            h=0.4;
		};
	};
};
