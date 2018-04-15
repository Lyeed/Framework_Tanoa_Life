class ALYSIA_MELEE
{
	class Skyline_SwingAnim_Outils
	{
		sleep=0.3;
		damage=420;
		fatigue=0.18;
	};

	class MOCAP_Man_Act_Non_CivPace_Non_Punch_Hand_Left_Direct
	{
		sleep=0.7;
		damage=190;
		fatigue=0.07;
	};
	class MOCAP_Man_Act_Non_CivPace_Non_Punch_Hand_Right_Direct: MOCAP_Man_Act_Non_CivPace_Non_Punch_Hand_Left_Direct {};

	class MOCAP_Man_Act_Rfl_Stroke_DirectCurve
	{
		sleep=0.6;
		damage=360;
		fatigue=0.15;
	};
	class MOCAP_Man_Act_Rfl_Stroke_RightCurve: MOCAP_Man_Act_Rfl_Stroke_DirectCurve {};

	class MOCAP_Man_Act_Pstl_Stroke_RightCurve
	{
		sleep=0.6;
		damage=220;
		fatigue=0.1;
	};
	class MOCAP_Man_Act_Pstl_Stroke_LeftCurve: MOCAP_Man_Act_Pstl_Stroke_RightCurve {};

	class MOCAP_Man_Act_Lnr_Stroke_DirectCurve
	{
		sleep=0.6;
		damage=290;
		fatigue=0.2;
	};
};
