/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[COMPANIES] Setup";

gServer_companies = [];

{
	private "_object";
	if ((_x select 9) isEqualTo 0) then
	{
		_object =
		[
			(_x select 0),
			(_x select 1),
			(_x select 2),
			(_x select 4),
			(_x select 11),
			[(_x select 5), (_x select 6), (_x select 7)],
			(_x select 8),
			[(_x select 10)] call AlysiaServer_fnc_mresToArray
		] call AlysiaServer_fnc_construction_init;
	} else {
		_object =
		[
			(_x select 0),
			(_x select 1),
			(_x select 2),
			(_x select 4),
			(_x select 11),
			[(_x select 5), (_x select 6), (_x select 7)],
			(_x select 8),
			[(_x select 12)] call AlysiaServer_fnc_mresToArray,
			(_x select 3),
			[(_x select 13)] call AlysiaServer_fnc_mresToArray,
			[(_x select 14)] call AlysiaServer_fnc_mresToArray,
			[format["SELECT TRANS_from,TRANS_date,TRANS_type,TRANS_value,TRANS_reason FROM companies_bank_transactions WHERE COMPANY_plate='%1'", (_x select 4)], 2] call ExtDB3_fnc_async,
			(_x select 15)
		] call AlysiaServer_fnc_company_init;
	};

	gServer_companies pushBack _object;
	diag_log format["Company [%1] | Type [%4] | Owner [%2] | Bank [%3]", (_x select 0), (_x select 1), (_x select 3), (_x select 2)];
} forEach (["SELECT companies.name,companies.owner,companies.type,companies.bank,companies.plate,companies.POS_x,companies.POS_y,companies.POS_z,companies.POS_direction,companies.CONSTRUCTION_built,companies.CONSTRUCTION_require,players.profileName,companies.members,companies.INV_virtual,companies.INV_arma,companies.link_percentage FROM companies INNER JOIN players ON companies.owner=players.uid", 2] call ExtDB3_fnc_async);
/*
	0 - name
	1 - owner
	2 - type
	3 - bank
	4 - plate
	5 - POS_x
	6 - POS_y
	7 - POS_z
	8 - POS_direction
	9 - CONSTRUCTION_built
	10 - CONSTRUCTION_require
	11 - owner name
	12 - members
	13 - INV_virtual
	14 - INV_arma
	15 - link_percentage
*/

diag_log format["%1 companie(s) loaded", count(gServer_companies)];

diag_log "[COMPANIES] Ready";
