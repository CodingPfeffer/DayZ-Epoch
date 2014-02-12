    _pathtoscripts = "fixes\actions\";
    _EXECscript1 = 'player execVM "'+_pathtoscripts+'%1"';
		ActionMenu =
		[
			["",true],
				 ["Fun Menu", [2], "#USER:FunMenu", -5, [["expression", ""]], "1", "1"],
				 ["Team", [3], "", -5, [["expression", format[_EXECscript1,"team.sqf"]]], "1", "1"],
				 ["TS/Hompage", [4],  "", -5, [["expression", format[_EXECscript1,"ts.sqf"]]], "1", "1"],
				 ["Einstellungen", [5],  "", -5, [["expression", format[_EXECscript1,"Scripts.sqf"]]], "1", "1"],
				 ["Scripts", [6],  "", -5, [["expression", format[_EXECscript1,"Scripts2.sqf"]]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];
FunMenu =
[
	["",true],
		["",true],
		["Boxing", [2],  "", -5, [["expression", format[_EXECscript1,"boxing.sqf"]]], "1", "1"],
		["Dance 1", [3], "", -5, [["expression", format[_EXECscript1, "dance1.sqf"]]], "1", "1"],
		["Dance 2", [4],  "", -5, [["expression", format[_EXECscript1,"dance2.sqf"]]], "1", "1"],
		["Handstand", [5],  "", -5, [["expression", format[_EXECscript1,"handstand.sqf"]]], "1", "1"],
		["Laydown", [6],  "", -5, [["expression", format[_EXECscript1,"Laydown.sqf"]]], "1", "1"],
		["Suicide", [7], "", -5, [["expression", format[_EXECscript1, "suicide.sqf"]]], "1", "1"],
		["Play Dead", [8], "", -5, [["expression", format[_EXECscript1, "deathflop.sqf"]]], "1", "1"],
		//["rainbow", [9], "", -5, [["expression", format[_EXECscript1, "rainbow.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

    showCommandingMenu "#USER:ActionMenu";

