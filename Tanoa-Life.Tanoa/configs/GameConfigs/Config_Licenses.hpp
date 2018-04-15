class ALYSIA_LICENSES
{
	class rebelle_1
	{
		name="Licence rebelle";
		class factions
		{
			class CIV
			{
				price=500000;
				search_shown[]={};
				lostOnDeath=1;
			};
		};
	};

	class driver
	{
		name="Permis de conduire";
		class factions
		{
			class CIV
			{
				price=900;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class moto
	{
		name="Permis moto";
		class factions
		{
			class CIV
			{
				price=1100;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class pilot
	{
		name="Permis de pilotage";
		class factions
		{
			class CIV
			{
				price=250000;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV
			{
				pad_store=0;
			};
			class WEST: CIV {};
		};
	};
	class boat
	{
		name="Permis bateau";
		class factions
		{
			class CIV
			{
				price=1500;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class truck
	{
		name="Permis poids lourd";
		class factions
		{
			class CIV
			{
				price=50000;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class skydive
	{
		name="Licence de saut en parachute";
		class factions
		{
			class CIV
			{
				price=1980;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class dive
	{
		name="Licence de plongée";
		class factions
		{
			class CIV
			{
				price=400;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class home
	{
		name="Licence de propriété";
		class factions
		{
			class CIV
			{
				price=150000;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class gun
	{
		name="Licence d'armes à feu";
		class factions
		{
			class CIV
			{
				price=80000;
				pad_store=1;
				search_shown[]={"WEST","EAST","GUER","CIV"};
				lostOnDeath=1;
			};
		};
	};

	class archeologie
	{
		name="Licence d'archéologie";
		class factions
		{
			class CIV
			{
				price=29500;
				search_shown[]={};
			};
		};
	};

	class politique_pnt_member
	{
		name="Membre du Parti National Tanocien";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class politique_pnt_sec
	{
		name="Secrétaire général du PNT";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class GUER: CIV {};
		};
	};
	class politique_pnt_militant
	{
		name="Militant du PNT";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class politique_pnt_coryphee
	{
		name="Coryphée du PNT";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};

	class company_farming
	{
		name="Agriculteur";
		class factions
		{
			class CIV
			{
				price=9000;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'farming')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_garagist
	{
		name="Garagiste";
		class factions
		{
			class CIV
			{
				price=7500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'garagist')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_money_tranfer
	{
		name="Convoyeur de fonds";
		class factions
		{
			class CIV
			{
				price=26000;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'money_transfer')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_fuel
	{
		name="Technicien pétrolier";
		class factions
		{
			class CIV
			{
				price=28500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'fuel')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_construction
	{
		name="Ouvrier BTP";
		class factions
		{
			class CIV
			{
				price=16900;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'construction')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_location_land
	{
		name="Agent de location terrestre";
		class factions
		{
			class CIV
			{
				price=13500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'location_land')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_location_sea
	{
		name="Agent de location maritime";
		class factions
		{
			class CIV
			{
				price=13500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'location_sea')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_transport_people
	{
		name="Chauffeur";
		class factions
		{
			class CIV
			{
				price=7500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'transport_people')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_security
	{
		name="Agent de sécurité";
		class factions
		{
			class CIV
			{
				price=35500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'security')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_press
	{
		name="Journaliste";
		class factions
		{
			class CIV
			{
				price=19500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'press')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_service
	{
		name="Licence de service";
		class factions
		{
			class CIV
			{
				price=12250;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'service')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_driving_school
	{
		name="Moniteur d'auto école";
		class factions
		{
			class CIV
			{
				price=13500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'driving_school')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_tourism
	{
		name="Guide touristique";
		class factions
		{
			class CIV
			{
				price=10800;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'tourism')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_cook
	{
		name="Restaurateur";
		class factions
		{
			class CIV
			{
				price=10150;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'cook')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_music_label
	{
		name="Label de musique";
		class factions
		{
			class CIV
			{
				price=12000;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'music_label')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_textile
	{
		name="Ouvrier textile";
		class factions
		{
			class CIV
			{
				price=13600;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'textile')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_car_shop
	{
		name="Employé de concesionnaire";
		class factions
		{
			class CIV
			{
				price=21150;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'car_shop')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_night_club
	{
		name="Employé de boite de nuit";
		class factions
		{
			class CIV
			{
				price=15150;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'night_club')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_event
	{
		name="Technicien évènementiel";
		class factions
		{
			class CIV
			{
				price=12050;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'event')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_steel
	{
		name="Ouvrier en métallurgie";
		class factions
		{
			class CIV
			{
				price=13050;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'steel')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_wood
	{
		name="Technicien de scierie";
		class factions
		{
			class CIV
			{
				price=12050;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'wood')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_sugar
	{
		name="Ouvrier de sucrerie";
		class factions
		{
			class CIV
			{
				price=12450;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'sugar')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_glass
	{
		name="Ouvrier de soufflerie";
		class factions
		{
			class CIV
			{
				price=12050;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'glass')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_cacao
	{
		name="Ouvrier de torréfaction du cacao";
		class factions
		{
			class CIV
			{
				price=11025;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'cacao')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_rhum
	{
		name="Ouvrier de distillerie";
		class factions
		{
			class CIV
			{
				price=11025;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'rhum')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_coffee
	{
		name="Ouvrier de torréfaction du café";
		class factions
		{
			class CIV
			{
				price=11025;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'coffee')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_furniture
	{
		name="Menuisier";
		class factions
		{
			class CIV
			{
				price=13025;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'furniture')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_tabac
	{
		name="Ouvrier du tabac";
		class factions
		{
			class CIV
			{
				price=17500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'tabac')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_gun
	{
		name="Armurier";
		class factions
		{
			class CIV
			{
				price=25500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'gun')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class company_fish
	{
		name="Poissonnier";
		class factions
		{
			class CIV
			{
				price=10500;
				condition="!(isNull g_company) && {(((g_company getVariable ['company_info',['','','']]) select 2) isEqualTo 'fish')}";
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};

	class coop_agri
	{
		name="Responsable coopérative agricole";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};

	class assr_medical
	{
		name="Assurance médicale";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class medical
	{
		name="Certificat médical";
		class factions
		{
			class CIV
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
			class EAST: CIV {};
			class GUER: CIV {};
			class WEST: CIV {};
		};
	};
	class guer_medical
	{
		name="Docteur généraliste";
		class factions
		{
			class GUER
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class guer_gen
	{
		name="Généticien";
		class factions
		{
			class GUER
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class guer_chirurgien
	{
		name="Chirurgien";
		class factions
		{
			class GUER
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};
	class guer_inspector
	{
		name="Inspecteur de la médecine du travail";
		class factions
		{
			class GUER
			{
				search_shown[]={"WEST","EAST","GUER","CIV"};
			};
		};
	};

	class east_tank
	{
		name="Formation d'équipage de blindé";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_tank_resp
	{
		name="Responsable formation d'équipage de blindé";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_medic
	{
		name="Formation d'infirmier de terrain";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_medic_resp
	{
		name="Responsable formation d'infirmier de terrain";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_fm
	{
		name="Formation de fusilier mitrailleur";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_fm_resp
	{
		name="Responsable formation de fusilier mitrailleur";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_dog
	{
		name="Formation d'escouade canine";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_dog_resp
	{
		name="Responsable formation d'escouade canine";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_tp
	{
		name="Formation tireur de précision";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_tp_resp
	{
		name="Responsable formation tireur de précision";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_cook
	{
		name="Formation de cuisinier";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_cook_resp
	{
		name="Responsable formation de cuisinier";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_pilot
	{
		name="Formation de pilote";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_pilot_resp
	{
		name="Responsable de formation de pilote";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_ope_radio
	{
		name="Formation opérateur radio";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
	class east_ope_radio_resp
	{
		name="Responsable de formation opérateur radio";
		class factions
		{
			class EAST
			{
				search_shown[]={"WEST","EAST"};
			};
		};
	};
};
