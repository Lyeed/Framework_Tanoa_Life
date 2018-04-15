#define CT_MAP_MAIN		101
#define ST_PICTURE		48

class RscCheckBox
{
	idc=-1;
	type=77;
	style=0;
	checked=0;
	x="0.375 * safezoneW + safezoneX";
	y="0.36 * safezoneH + safezoneY";
	w="0.025 * safezoneW";
	h="0.04 * safezoneH";
	color[]={1,1,1,1};
	colorFocused[]={1,1,1,1};
	colorHover[]={1,1,1,1};
	colorPressed[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.2};
	colorBackground[]={0,0,0,0};
	colorBackgroundFocused[]={0,0,0,0};
	colorBackgroundHover[]={0,0,0,0};
	colorBackgroundPressed[]={0,0,0,0};
	colorBackgroundDisabled[]={0,0,0,0};
	textureChecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked="A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.65};
	soundEnter[]={"",0.1,1};
	soundPush[]={"",0.1,1};
	soundClick[]={"",0.1,1};
	soundEscape[]={"",0.1,1};
};

class RscScrollBar
{
	shadow=0;
	scrollSpeed=0.06;
	width=0;
	height=0;

	color[]={0,0,0,0.8};
	colorActive[]={0,0,0,0.8};
	colorDisabled[]={0,0,0,0.8};
	
	thumb="A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	arrowEmpty="A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	arrowFull="A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	border="A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";

	autoScrollEnabled=1;
	autoScrollSpeed=-1;
	autoScrollDelay=5;
	autoScrollRewind=0;
};

class RscText
{
	idc=-1;
	type=0;
	style=0;
	shadow=1;
	colorShadow[]={0,0,0,0.5};
	font="PuristaMedium";
	SizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text="";
	colorText[]={1,1,1,1.0};
	colorBackground[]={0,0,0,0};
	linespacing=1;
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.65};
};

class RscPicture
{
	idc=-1;
	shadow=0;
	type=0;
	text="";
	style=48;
	sizeEx=0.023;
	font="PuristaMedium";
	colorBackground[]={};
	colorText[]={};
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.65};
};

class RscStructuredText
{
	idc=-1;
	type=13;
	style=0;
	sizeEx=0.035;
	text="";
	size="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[]={1,1,1,1};
	shadow=0;
	colorBackground[]={0,0,0,0};
	class Attributes 
	{
		font="PuristaMedium";
		color="#ffffff";
		align="left";
		shadow=0;
	};
};

class RscButton 
{
	style=2;
	x=0;
	y=0;
	w=0.095589;
	h=0.039216;
	shadow=2;
	font="PuristaMedium";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[]={1,1,1,1.0};
	colorDisabled[]={0.4,0.4,0.4,1};
	colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.7};
	colorBackgroundActive[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundDisabled[]={0.95,0.95,0.95,1};
	offsetX=0.003;
	offsetY=0.003;
	offsetPressedX=0.002;
	offsetPressedY=0.002;
	colorFocused[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorShadow[]={0,0,0,1};
	colorBorder[]={0,0,0,1};
	borderSize=0.0;
	soundEnter[]={"A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
	soundPush[]={"A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
	soundClick[]={"A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
	soundEscape[]={"A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
};

class RscShortcutButton
{
	idc=-1;
	style=0;
	default=0;
	shadow=1;
	w=0.183825;
	h="((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	color[]={1,1,1,1.0};
	colorFocused[]={1,1,1,1.0};
	color2[]={0.95,0.95,0.95,1};
	colorDisabled[]={1,1,1,0.25};
	colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundFocused[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackground2[]={1,1,1,1};
	animTextureDefault="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed="A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus=1.2;
	periodOver=0.8;
	class HitZone
	{
		left=0.0;
		top=0.0;
		right=0.0;
		bottom=0.0;
	};
	class ShortcutPos
	{
		left=0;
		top="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.005;
		bottom=0.0;
	};
	period=0.4;
	font="PuristaMedium";
	size="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text="";
	soundEnter[]={"A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
	soundPush[]={"A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
	soundClick[]={"A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
	soundEscape[]={"A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
	action="";
	class Attributes
	{
		font="PuristaMedium";
		color="#E5E5E5";
		align="left";
		shadow=0;
	};
	class AttributesImage
	{
		font="PuristaMedium";
		color="#E5E5E5";
		align="left";
	};
};

class RscButtonMenu
{
	textureNoShortcut="";
	idc=-1;
	type=16;
	style="0x02 + 0xC0";
	text="";
	default=0;
	shadow=0;
	x=0;
	y=0;
	w=0.095589;
	h=0.039216;
	animTextureNormal="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled="#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver="#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused="#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault="#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[]=
	{
		0,
		0,
		0,
		0.8
	};
	colorBackgroundFocused[]=
	{
		1,
		1,
		1,
		1
	};
	colorBackground2[]=
	{
		0.75,
		0.75,
		0.75,
		1
	};
	color[]=
	{
		1,
		1,
		1,
		1
	};
	colorFocused[]=
	{
		0,
		0,
		0,
		1
	};
	color2[]=
	{
		0,
		0,
		0,
		1
	};
	colorText[]=
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[]=
	{
		1,
		1,
		1,
		0.25
	};
	font="PuristaBold";
	tooltipColorText[]=
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[]=
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[]=
	{
		0,
		0,
		0,
		0.65
	};
	class HitZone
	{
		left=0;
		top=0;
		right=0;
		bottom=0;
	};
	class TextPos
	{
		left="0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.005;
		bottom=0;
	};
	class Attributes
	{
		valign="middle";
		font="PuristaLight";
		color="#E5E5E5";
		align="center";
		shadow=0;
	};
	class ShortcutPos
	{
		left="5.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top=0;
		w="1 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h="1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
	textSecondary="";
	colorSecondary[]=
	{
		1,
		1,
		1,
		1
	};
	colorFocusedSecondary[]=
	{
		0,
		0,
		0,
		1
	};
	color2Secondary[]=
	{
		0,
		0,
		0,
		1
	};
	colorDisabledSecondary[]=
	{
		1,
		1,
		1,
		0.25
	};
	sizeExSecondary="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary="PuristaLight";
	period=1.2;
	periodFocus=1.2;
	periodOver=1.2;
	size="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
};

class RscProgress
{
	type=8;
	style=0;
	texture="";
	shadow=0;
	colorFrame[]={0,0,0,1};
	colorBackground[]={0,0,0,1};
	colorBar[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
};

class RscListBox
{
	idc=-1;
	style=16;
	type=5;
	text="";
	arrowFull="A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty="A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	wholeHeight=0.45;
	rowHeight=0.04;
	deletable=0;
	fade=0;
	access=0;
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,1};
	colorScrollbar[]={1,0,0,0};
	colorSelect[]={0,0,0,1};
	colorSelect2[]={0,0,0,1};
	colorSelectBackground[]={0.95,0.95,0.95,1};
	colorSelectBackground2[]={1,1,1,0.5};
	colorBackground[]={0,0,0,0.6};
	soundSelect[]={"A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
	colorPicture[]={1,1,1,1};
	colorPictureDisabled[]={1,1,1,1};
	colorPictureRight[]={1,1,1,1};
	colorPictureRightSelected[]={1,1,1,1};
	colorPictureRightDisabled[]={1,1,1,1};
	colorPictureSelected[]={1,1,1,1};
	colorTextRight[]={1,1,1,1};
	colorSelectRight[]={0,0,0,1};
	colorSelect2Right[]={0,0,0,1};
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.65};
	color[]={0.7,0.7,0.7,1};
	colorActive[]={0,0,0,1};
	soundExpand[]={"",0.1,1};
	soundCollapse[]={"",0.1,1};
	autoScrollSpeed=-1;
	autoScrollDelay=5;
	autoScrollRewind=0;
	font="PuristaMedium";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow=0;
	colorShadow[]={0,0,0,0.5};
	period=1.2;
	maxHistoryDelay=1;
	class ListScrollBar: RscScrollBar {};
};

class RscEdit
{
	deletable=0;
	fade=0;
	access=0;
	type=2;
	colorBackground[]={0,0,0,0.6};
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	colorSelection[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",1};
	autocomplete="";
	text="";
	size=0.2;
	style="0x00 + 0x40";
	font="PuristaMedium";
	shadow=0;
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify=1;
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.65};
};

class RscFrame
{
	type=0;
	idc=-1;
	style=64;
	shadow=2;
	colorBackground[]={0,0,0,0};
	colorText[]={0,0,0,0.8};
	font="PuristaMedium";
	sizeEx=0.02;
	text="";
};

class RscMapControl
{
	access=0;
	idc=-1;
	type=CT_MAP_MAIN;
	style=ST_PICTURE;

	x=0.10;
	y=0.10;
	w=0.80;
	h=0.60;

	colorBackground[]={1,1,1,1};
	colorText[]={0,0,0,1};
	colorSea[]={0.345,0.675,0.98,0.5};
	colorForest[]={0.6,0.8,0.2,0.5};
	colorRocks[]={0.404,0.298,0.086,0.5};
	colorCountlines[]={0.65,0.45,0.27,0.5};
	colorMainCountlinesWater[]={0,0.53,1,1};
	colorMainCountlines[]={0.65,0.45,0.27,1};
	colorCountlinesWater[]={0,0.53,1,0.5};
	colorForestBorder[]={0.4,0.8,0,1};
	colorRocksBorder[]={0.5,0.5,0.5,1};
	colorPowerLines[]={0,0,0,1};
	colorNames[]={0,0,0,1};
	colorInactive[]={1,1,1,0.5};
	colorLevels[]={0,0,0,1};
	colorOutside[]={0,0,0,1};
    colorTracks[]={0.2,0.13,0,1};
    colorTracksFill[]={1,0.88,0.65,0.3};
    colorRoads[]={0.49,0.49,0.424,1};
    colorRoadsFill[]={0.729,0.729,0.627,1};
    colorMainRoads[]={0.525,0.525,0.098,1};
    colorMainRoadsFill[]={0.82,0.82,0.161,1};
    colorRailWay[]={0.8,0.2,0,1};
    colorGrid[]={0,0,0,0.6};
    colorGridMap[]={0.05,0.1,0,0.4};

	font="TahomaB";
	sizeEx=0.040000;

	fontLabel="TahomaB";
	sizeExLabel=0.02;
	fontGrid="TahomaB";
	sizeExGrid=0.02;
	fontUnits="TahomaB";
	sizeExUnits=0.02;
	fontNames="TahomaB";
	sizeExNames=0.02;
	fontInfo="TahomaB";
	sizeExInfo=0.02;
	fontLevel="TahomaB";
	sizeExLevel=0.02;

	stickX[]={0.20,{"Gamma",1.00,1.50}};
	stickY[]={0.20,{"Gamma",1.00,1.50}};
	ptsPerSquareSea=6;
	ptsPerSquareTxt=8;
	ptsPerSquareCLn=8;
	ptsPerSquareExp=8;
	ptsPerSquareCost=8;
	ptsPerSquareFor="4.0f";
	ptsPerSquareForEdge="10.0f";
	ptsPerSquareRoad=2;
	ptsPerSquareObj=10;

	text="#(argb,8,8,3)color(1,1,1,1)";
	onMouseButtonClick="";
	onMouseButtonDblClick="";
	showCountourInterval=2;

	scaleDefault=0.1;
	scaleMin=0;
	scaleMax=1.5;

	alphaFadeStartScale=1;
	alphaFadeEndScale=1;
	maxSatelliteAlpha=0;

 	class LineMarker
 	{
 		lineDistanceMin=3e-005;
 		lineLengthMin=5;
 		lineWidthThick=0.014;
 		lineWidthThin=0.008;
 		textureComboBoxColor="#(argb,8,8,3)color(1,1,1,1)";
 	};

	class ActiveMarker
	{
		color[]={0.30,0.10,0.90,1.00};
		size=50;
	};
	class Bunker
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=14;
		importance="1.5 * 14 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Bush
	{
		icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=14;
		importance="0.2 * 14 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class BusStop
	{
		icon="\A3\ui_f\data\map\mapcontrol\busstop_ca.paa";
		color[]={0.00,0.00,1.00,1.00};
		size=10;
		importance="1 * 10 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Command
	{
		icon="#(argb,8,8,3)color(1,1,1,1)";
		color[]={0,0,0,1};
		size=18;
		importance=1.00;
		coefMin=1;
		coefMax=1;
	};
	class Cross
	{
		icon="\A3\ui_f\data\map\mapcontrol\cross_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="0.7 * 16 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Fortress
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2 * 16 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Fuelstation
	{
		icon="\A3\ui_f\data\map\mapcontrol\fuelstation_ca.paa";
		color[]={1.00,0.35,0.35,1.00};
		size=16;
		importance="2 * 16 * 0.05";
		coefMin=0.75;
		coefMax=4;
	};
	class Fountain
	{
		icon="\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=12;
		importance="1 * 12 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Hospital
	{
		icon="\A3\ui_f\data\map\mapcontrol\hospital_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="2 * 16 * 0.05";
		coefMin=0.50;
		coefMax=4;
	};
	class Chapel
	{
		icon="\A3\ui_f\data\map\mapcontrol\chapel_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="1 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class Church
	{
		icon="\A3\ui_f\data\map\mapcontrol\church_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class Lighthouse
	{
		icon="\A3\ui_f\data\map\mapcontrol\lighthouse_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=20;
		importance="3 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class Quay
	{
		icon="\A3\ui_f\data\map\mapcontrol\quay_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2 * 16 * 0.05";
		coefMin=0.50;
		coefMax=4;
	};
	class Rock
	{
		icon="\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[]={0.35,0.35,0.35,1.00};
		size=12;
		importance="0.5 * 12 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Ruin
	{
		icon="\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="1.2 * 16 * 0.05";
		coefMin=1;
		coefMax=4;
	};
	class Stack
	{
		icon="\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class Tree
	{
		icon="\A3\ui_f\data\map\mapcontrol\tree_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=12;
		importance="0.9 * 16 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class SmallTree
	{
		icon="\A3\ui_f\data\map\mapcontrol\smalltree_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=12;
		importance="0.6 * 12 * 0.05";
		coefMin=0.25;
		coefMax=4;
	};
	class Tourism
	{
		icon="\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="1 * 16 * 0.05";
		coefMin=0.70;
		coefMax=4;
	};
	class Transmitter
	{
		icon="\A3\ui_f\data\map\mapcontrol\transmitter_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class ViewTower
	{
		icon="\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2.5 * 16 * 0.05";
		coefMin=0.50;
		coefMax=4;
	};
	class Watertower
	{
		icon="\A3\ui_f\data\map\mapcontrol\watertower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=32;
		importance="1.2 * 16 * 0.05";
		coefMin=0.90;
		coefMax=4;
	};
	class Waypoint
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1.00;
		coefMin=1;
		coefMax=1;
	};
	class WaypointCompleted
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypointcompleted_ca.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1.00;
		coefMin=1;
		coefMax=1;
	};
	class powersolar
	{
		icon="\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class powerwave
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class powerwind
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class shipwreck
	{
		icon="\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class CustomMark
	{
		icon="\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		color[]={0,0,0,1};
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
};

class RscCombo
{
	style=16;
	type=4;
	shadow=0;
	maxHistoryDelay=1.0;
	wholeHeight=0.45;

	colorDisabled[]={1,1,1,0.25};
	colorScrollbar[]={0.54,0.54,0.54,1};

	soundExpand[]={"A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
	soundCollapse[]={"A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
	soundSelect[]={"A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};

	font="PuristaMedium";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[]={1,1,1,1};
	colorSelect[]={0,0,0,1};

	colorBackground[]={0,0,0,0.6};
	colorSelectBackground[]={1,1,1,1};

	colorPicture[]={1,1,1,1};
	colorPictureSelected[]={1,1,1,1};
	colorPictureDisabled[]={1,1,1,1};

	arrowFull="A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty="A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";

	class ComboScrollBar: RscScrollBar {};
};

class RscButtonSilent
{
	idc=-1;
	access=0;
	type=1;
	text="";
	colorText[]={0,0,0,0};
	colorDisabled[]={0,0,0,1};
	colorBackground[]={0,0,0,0};
	colorBackgroundDisabled[]={0,0,0,0};
	colorBackgroundActive[]={0,0,0,0};
	colorFocused[]={0,0,0,0};
	colorShadow[]={0,0,0,0};
	colorBorder[]={0,0,0,1};
	soundEnter[]={"",0.09,1};
	soundPush[]={"Alysia_Client_Son\Sons_Divers\click",0.3,1};
	soundClick[]={"",0.09,1};
	soundEscape[]={"",0.09,1};
	style=2;
	x=0;
	y=0;
	w=0.095589;
	h=0.039216;
	shadow=2;
	font="EtelkaNarrowMediumPro";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	offsetX=0.003;
	offsetY=0.003;
	offsetPressedX=0.002;
	offsetPressedY=0.002;
	borderSize=0;
};

class RscSlider
{
	deletable=0;
	fade=0;
	access=0;
	type=3;
	style=1024;
	w=0.3;
	color[]=
	{
		1,
		1,
		1,
		0.8
	};
	colorActive[]=
	{
		1,
		1,
		1,
		1
	};
	shadow=0;
	h=0.025;
};
