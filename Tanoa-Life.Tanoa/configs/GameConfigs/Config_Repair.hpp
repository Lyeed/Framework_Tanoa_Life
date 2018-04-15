class ALYSIA_REPAIR
{
	class HitFuel
	{
		name="Réservoir";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_fuel";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitFuel.paa";
		time=8;
	};
	class HitFuelTank: HitFuel {};

	class HitEngine
	{
		name="Moteur";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_engine";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitEngine.paa";
		time=17;
	};
	class HitEngine1: HitEngine {};
	class HitEngine2: HitEngine {};
	class HitEngine3: HitEngine {};

	class HitBody
	{
		name="Carrosserie";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_body";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitBody.paa";
		time=15;
	};

	class HitLTrack
	{
		name="Chenille gauche";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_track";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitLTrack.paa";
		time=13;
	};
	class HitRTrack: HitLTrack {
		name="Chenille droite";
	};

	class HitLFWheel
	{
		name="Roue gauche 1";
		tool="Alysia_repair_tireLever";
		item="Alysia_repair_tire";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitLFWheel.paa";
		time=8;
	};
	class HitLF2Wheel: HitLFWheel {
		name="Roue gauche 2";
	};
	class HitLMWheel: HitLFWheel {
		name="Roue gauche 3";
	};
	class HitLBWheel: HitLFWheel {
		name="Roue gauche 4";
	};
	class HitRFWheel: HitLFWheel {
		name="Roue droite 1";
	};
	class HitRF2Wheel: HitLFWheel {
		name="Roue droite 2";
	};
	class HitRMWheel: HitLFWheel {
		name="Roue droite 3";
	};
	class HitRBWheel: HitLFWheel {
		name="Roue droite 4";
	};

	class HitFWheel: HitLFWheel {
		name="Roue avant";
	};
	class HitBWheel: HitLFWheel {
		name="Roue arrière";
	};

	class HitGlass1
	{
		name="Vitre";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_glass";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitGlass1.paa";
		time=7;
	};
	class HitGlass2: HitGlass1 {};
	class HitGlass3: HitGlass1 {};
	class HitGlass4: HitGlass1 {};
	class HitGlass5: HitGlass1 {};
	class HitGlass6: HitGlass1 {};
	class HitGlass7: HitGlass1 {};
	class HitGlass8: HitGlass1 {};
	class HitGlass9: HitGlass1 {};
	class HitGlass10: HitGlass1 {};
	class HitRGlass: HitGlass1 {};
	class HitLGlass: HitGlass1 {};

	class HitTurret
	{
		name="Tourelle";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitTurret.paa";
		time=17;
	};

	class HitGun
	{
		name="Armement";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitGun.paa";
		time=20;
	};

	class HitAmmo
	{
		name="Soute à munitions";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitGun.paa";
		time=20;
	};

	class HitHull
	{
		name="Coque";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitHull.paa";
		time=14;
	};

	class HitAvionics
	{
		name="Avionique";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitAvionics.paa";
		time=13;
	};

	class HitHRotor
	{
		name="Rotor principal";
		tool="Alysia_repair_toolbox";
		item="Alysia_repair_rotor";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitRotor.paa";
		time=21;
	};
	class HitVRotor: HitHRotor {
		name="Rotor secondaire";
	};

	class HitMissiles
	{
		name="Missiles";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitMissiles.paa";
		time=21;
	};

	class HitWinch
	{
		name="Treuil";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitWinch.paa";
		time=11;
	};

	class HitTransmission
	{
		name="Transmission";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitTransmission.paa";
		time=9;
	};

	class HitLight
	{
		name="Phare";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitLight.paa";
		time=7;
	};

	class HitHydraulics
	{
		name="Suspenssion";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitHydraulics.paa";
		time=11;
	};

	class HitGear
	{
		name="Trains d'attérrissage";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitGear.paa";
		time=11;
	};

	class HitHStabilizerL1
	{
		name="Stabilisateur gauche";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitHStabilizerL1.paa";
		time=13;
	};
	class HitHStabilizerR1: HitHStabilizerL1 {
		name="Stabilisateur droit";
	};
	class HitVStabilizer1: HitHStabilizerL1 {
		name="Stabilisateur";
	};

	class HitTail
	{
		name="Queue";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitTail.paa";
		time=11;
	};

	class HitPitotTube
	{
		name="Tube de Pitot";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitPitotTube.paa";
		time=10;
	};

	class HitStaticPort
	{
		name="Instruments";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitStaticPort.paa";
		time=11;
	};

	class HitStarter1
	{
		name="Boite de démarrage";
		tool="Alysia_repair_toolbox";
		item="";
		picture="Alysia_Client_Texture\Data\vehicle\repair\parts\HitStarter1.paa";
		time=9;
	};
	class HitStarter2: HitStarter1 {};
	class HitStarter3: HitStarter1 {};
};
