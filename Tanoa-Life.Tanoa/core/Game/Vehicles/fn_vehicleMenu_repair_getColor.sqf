/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_damage"];
_damage = [_this, 0, 0, [0]] call BIS_fnc_param;

switch (true) do
{
	case (_damage >= 0 && _damage < 25): {[[1, 0.3411764705882353, 0.1333333333333333, 1], "#FF5722"]};
	case (_damage >= 25 && _damage < 50): {[[1, 0.7568627450980392, 0.0274509803921569, 1], "#FFC107"]};
	case (_damage >= 50 && _damage < 75): {[[1, 0.9215686274509804, 0.2313725490196078, 1], "#FFEB3B"]};
	case (_damage >= 75 && _damage < 100): {[[0.803921568627451, 0.8627450980392157, 0.2235294117647059, 1], "#CDDC39"]};
	case (_damage isEqualTo 100): {[[0.5450980392156863, 0.7647058823529412, 0.2901960784313725, 1], "#8BC34A"]};
};
