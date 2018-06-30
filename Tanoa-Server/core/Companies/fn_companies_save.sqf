/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[COMPANIES] Saving ...";

diag_log " Cleaning companies_bank_transactions table...";
["DELETE FROM companies_bank_transactions", 1] call ExtDB3_fnc_async;

{
	_info = _x getVariable ["company_info", []];
	if (_info isEqualTo []) then {
		diag_log format["[ERROR] Can't save company %1 (no info)", _x];
	} else {
		_bank = _x getVariable ["company_bank", 0];
		diag_log format["Saving company [%1] | Type [%2] | Owner [%3] | Bank [%4]", (_info select 0), (_info select 2), (_info select 1), _bank];

		if (_x getVariable ["construction", false]) then
		{
			[
				format
				[
					"UPDATE companies SET bank='%1',CONSTRUCTION_require='%2',CONSTRUCTION_built='0' WHERE plate='%3'",
					_bank,
					[(_x getVariable ["construction_require", []])] call AlysiaServer_fnc_mresArray,
					(_info select 3)
				], 1
			] call ExtDB3_fnc_async;
		} else {
			[
				format
				[
					"UPDATE companies SET bank='%1',CONSTRUCTION_built='1',CONSTRUCTION_require='""[]""',members='%3',INV_virtual='%4',owner='%5',INV_arma='%6',link_percentage='%7' WHERE plate='%2'",
					_bank,
					(_info select 3),
					[(_x getVariable ["company_members", []])] call AlysiaServer_fnc_mresArray,
					[(_x getVariable ["company_inv_virtual", []])] call AlysiaServer_fnc_mresArray,
					(_info select 1),
					[(_x getVariable ["company_inv_arma", []])] call AlysiaServer_fnc_mresArray,
					(_x getVariable ["company_link_percentage", 0])
				], 1
			] call ExtDB3_fnc_async;

			{
				[
					format
					[
						"INSERT INTO companies_bank_transactions (COMPANY_plate,TRANS_from,TRANS_date,TRANS_type,TRANS_value,TRANS_reason) VALUES ('%1','%2','%3','%4','%5','%6')",
						(_info select 3),
						(_x select 0),
						(_x select 1),
						(_x select 2),
						(_x select 3),
						(_x select 4)
					], 1
				] call ExtDB3_fnc_async;
			} forEach (_x getVariable ["company_bank_history", []]);
		};
	};
} forEach gServer_companies;

diag_log "[COMPANIES] Saved";
