function TetriminoBase(_color, _pattern) constructor {
	color = _color ? _color : GRAY;
	pattern = _pattern ? _pattern : [];
}

function scrInitTetritetriminos() {
	tetrimino = {
		I: new TetriminoBase(CYAN),
		J: new TetriminoBase(BLUE),
		L: new TetriminoBase(ORANGE),
		O: new TetriminoBase(YELLOW),
		S: new TetriminoBase(GREEN),
		T: new TetriminoBase(PURPLE),
		Z: new TetriminoBase(RED),
	};
	
	#region I형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.I.pattern[i] = ds_grid_create(5, 5);
	}
	
	ds_grid_set(tetrimino.I.pattern[0], 1, 2, "I");
	ds_grid_set(tetrimino.I.pattern[0], 2, 2, "I");
	ds_grid_set(tetrimino.I.pattern[0], 3, 2, "I");
	ds_grid_set(tetrimino.I.pattern[0], 4, 2, "I");
	
	ds_grid_set(tetrimino.I.pattern[1], 2, 1, "I");
	ds_grid_set(tetrimino.I.pattern[1], 2, 2, "I");
	ds_grid_set(tetrimino.I.pattern[1], 2, 3, "I");
	ds_grid_set(tetrimino.I.pattern[1], 2, 4, "I");
	
	ds_grid_set(tetrimino.I.pattern[2], 0, 2, "I");
	ds_grid_set(tetrimino.I.pattern[2], 1, 2, "I");
	ds_grid_set(tetrimino.I.pattern[2], 2, 2, "I");
	ds_grid_set(tetrimino.I.pattern[2], 3, 2, "I");
	
	ds_grid_set(tetrimino.I.pattern[3], 2, 0, "I");
	ds_grid_set(tetrimino.I.pattern[3], 2, 1, "I");
	ds_grid_set(tetrimino.I.pattern[3], 2, 2, "I");
	ds_grid_set(tetrimino.I.pattern[3], 2, 3, "I");
	
	#endregion
	
	#region J형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.J.pattern = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.J.pattern[0], 0, 0, "J");
	ds_grid_set(tetrimino.J.pattern[0], 0, 1, "J");
	ds_grid_set(tetrimino.J.pattern[0], 1, 1, "J");
	ds_grid_set(tetrimino.J.pattern[0], 2, 1, "J");
	
	ds_grid_set(tetrimino.J.pattern[1], 1, 0, "J");
	ds_grid_set(tetrimino.J.pattern[1], 2, 0, "J");
	ds_grid_set(tetrimino.J.pattern[1], 1, 1, "J");
	ds_grid_set(tetrimino.J.pattern[1], 1, 2, "J");
	
	ds_grid_set(tetrimino.J.pattern[2], 0, 1, "J");
	ds_grid_set(tetrimino.J.pattern[2], 1, 1, "J");
	ds_grid_set(tetrimino.J.pattern[2], 2, 1, "J");
	ds_grid_set(tetrimino.J.pattern[2], 2, 2, "J");
	
	ds_grid_set(tetrimino.J.pattern[3], 1, 0, "J");
	ds_grid_set(tetrimino.J.pattern[3], 1, 1, "J");
	ds_grid_set(tetrimino.J.pattern[3], 0, 2, "J");
	ds_grid_set(tetrimino.J.pattern[3], 1, 2, "J");
	
	#endregion
	
	#region L형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.L.pattern = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.L.pattern[0], 2, 0, "L");
	ds_grid_set(tetrimino.L.pattern[0], 0, 1, "L");
	ds_grid_set(tetrimino.L.pattern[0], 1, 1, "L");
	ds_grid_set(tetrimino.L.pattern[0], 2, 1, "L");
	
	ds_grid_set(tetrimino.L.pattern[1], 1, 0, "L");
	ds_grid_set(tetrimino.L.pattern[1], 1, 1, "L");
	ds_grid_set(tetrimino.L.pattern[1], 1, 2, "L");
	ds_grid_set(tetrimino.L.pattern[1], 2, 2, "L");
	
	ds_grid_set(tetrimino.L.pattern[2], 0, 1, "L");
	ds_grid_set(tetrimino.L.pattern[2], 1, 1, "L");
	ds_grid_set(tetrimino.L.pattern[2], 2, 1, "L");
	ds_grid_set(tetrimino.L.pattern[2], 0, 2, "L");

	ds_grid_set(tetrimino.L.pattern[3], 0, 0, "L");
	ds_grid_set(tetrimino.L.pattern[3], 1, 0, "L");
	ds_grid_set(tetrimino.L.pattern[3], 1, 1, "L");
	ds_grid_set(tetrimino.L.pattern[3], 1, 2, "L");
	
	#endregion
	
	#region O형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.O.pattern = ds_grid_create(4, 4);
	}
	
	ds_grid_set(tetrimino.O.pattern[0], 1, 0, "O");
	ds_grid_set(tetrimino.O.pattern[0], 2, 0, "O");
	ds_grid_set(tetrimino.O.pattern[0], 1, 1, "O");
	ds_grid_set(tetrimino.O.pattern[0], 2, 1, "O");
	
	ds_grid_set(tetrimino.O.pattern[1], 1, 0, "O");
	ds_grid_set(tetrimino.O.pattern[1], 2, 0, "O");
	ds_grid_set(tetrimino.O.pattern[1], 1, 1, "O");
	ds_grid_set(tetrimino.O.pattern[1], 2, 1, "O");
	
	ds_grid_set(tetrimino.O.pattern[2], 1, 0, "O");
	ds_grid_set(tetrimino.O.pattern[2], 2, 0, "O");
	ds_grid_set(tetrimino.O.pattern[2], 1, 1, "O");
	ds_grid_set(tetrimino.O.pattern[2], 2, 1, "O");
	
	ds_grid_set(tetrimino.O.pattern[3], 1, 0, "O");
	ds_grid_set(tetrimino.O.pattern[3], 2, 0, "O");
	ds_grid_set(tetrimino.O.pattern[3], 1, 1, "O");
	ds_grid_set(tetrimino.O.pattern[3], 2, 1, "O");
	
	#endregion
	
	#region S형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.S.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.S.pattern[0], 1, 0, "S");
	ds_grid_set(tetrimino.S.pattern[0], 2, 0, "S");
	ds_grid_set(tetrimino.S.pattern[0], 0, 1, "S");
	ds_grid_set(tetrimino.S.pattern[0], 1, 1, "S");
	
	ds_grid_set(tetrimino.S.pattern[1], 1, 0, "S");
	ds_grid_set(tetrimino.S.pattern[1], 1, 1, "S");
	ds_grid_set(tetrimino.S.pattern[1], 2, 1, "S");
	ds_grid_set(tetrimino.S.pattern[1], 2, 2, "S");
	
	ds_grid_set(tetrimino.S.pattern[2], 1, 1, "S");
	ds_grid_set(tetrimino.S.pattern[2], 2, 1, "S");
	ds_grid_set(tetrimino.S.pattern[2], 0, 2, "S");
	ds_grid_set(tetrimino.S.pattern[2], 1, 2, "S");
	
	ds_grid_set(tetrimino.S.pattern[3], 0, 0, "S");
	ds_grid_set(tetrimino.S.pattern[3], 0, 1, "S");
	ds_grid_set(tetrimino.S.pattern[3], 1, 1, "S");
	ds_grid_set(tetrimino.S.pattern[3], 1, 2, "S");
	
	#endregion
	
	#region T형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.T.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.T.pattern[0], 1, 0, "T");
	ds_grid_set(tetrimino.T.pattern[0], 0, 1, "T");
	ds_grid_set(tetrimino.T.pattern[0], 1, 1, "T");
	ds_grid_set(tetrimino.T.pattern[0], 2, 1, "T");
	
	ds_grid_set(tetrimino.T.pattern[1], 1, 0, "T");
	ds_grid_set(tetrimino.T.pattern[1], 1, 1, "T");
	ds_grid_set(tetrimino.T.pattern[1], 2, 1, "T");
	ds_grid_set(tetrimino.T.pattern[1], 1, 2, "T");
	
	ds_grid_set(tetrimino.T.pattern[2], 0, 1, "T");
	ds_grid_set(tetrimino.T.pattern[2], 1, 1, "T");
	ds_grid_set(tetrimino.T.pattern[2], 2, 1, "T");
	ds_grid_set(tetrimino.T.pattern[2], 1, 2, "T");
	
	ds_grid_set(tetrimino.T.pattern[3], 1, 0, "T");
	ds_grid_set(tetrimino.T.pattern[3], 0, 1, "T");
	ds_grid_set(tetrimino.T.pattern[3], 1, 1, "T");
	ds_grid_set(tetrimino.T.pattern[3], 1, 2, "T");
	
	#endregion
	
	#region Z형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.Z.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.Z.pattern[0], 0, 0, "Z");
	ds_grid_set(tetrimino.Z.pattern[0], 1, 0, "Z");
	ds_grid_set(tetrimino.Z.pattern[0], 1, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[0], 2, 1, "Z");
	
	ds_grid_set(tetrimino.Z.pattern[1], 2, 0, "Z");
	ds_grid_set(tetrimino.Z.pattern[1], 1, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[1], 2, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[1], 1, 2, "Z");
	
	ds_grid_set(tetrimino.Z.pattern[2], 0, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[2], 1, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[2], 1, 2, "Z");
	ds_grid_set(tetrimino.Z.pattern[2], 2, 2, "Z");
	
	ds_grid_set(tetrimino.Z.pattern[3], 1, 0, "Z");
	ds_grid_set(tetrimino.Z.pattern[3], 0, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[3], 1, 1, "Z");
	ds_grid_set(tetrimino.Z.pattern[3], 0, 2, "Z");
	
	#endregion
}