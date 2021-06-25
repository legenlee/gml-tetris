function TetriminoBase(_color, _offset) constructor {
	tintColor = _color ? _color : GRAY;
	offset = _offset ? _offset : 0;
	pattern = [];
}

function scrInitTetrimino() {
	tetrimino = {
		I: new TetriminoBase(CYAN, 2),
		J: new TetriminoBase(BLUE, 1),
		L: new TetriminoBase(ORANGE, 1),
		O: new TetriminoBase(YELLOW, 1),
		S: new TetriminoBase(GREEN, 1),
		T: new TetriminoBase(PURPLE, 1),
		Z: new TetriminoBase(RED, 1)
	};
	
	#region "I"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.I.pattern[i] = ds_grid_create(5, 5);
	}
	
	ds_grid_set(tetrimino.I.pattern[0], 1, 2, 1);
	ds_grid_set(tetrimino.I.pattern[0], 2, 2, 2);
	ds_grid_set(tetrimino.I.pattern[0], 3, 2, 3);
	ds_grid_set(tetrimino.I.pattern[0], 4, 2, 4);
	
	ds_grid_set(tetrimino.I.pattern[1], 2, 1, 1);
	ds_grid_set(tetrimino.I.pattern[1], 2, 2, 2);
	ds_grid_set(tetrimino.I.pattern[1], 2, 3, 3);
	ds_grid_set(tetrimino.I.pattern[1], 2, 4, 4);
	
	ds_grid_set(tetrimino.I.pattern[2], 0, 2, 1);
	ds_grid_set(tetrimino.I.pattern[2], 1, 2, 2);
	ds_grid_set(tetrimino.I.pattern[2], 2, 2, 3);
	ds_grid_set(tetrimino.I.pattern[2], 3, 2, 4);
	
	ds_grid_set(tetrimino.I.pattern[3], 2, 0, 1);
	ds_grid_set(tetrimino.I.pattern[3], 2, 1, 2);
	ds_grid_set(tetrimino.I.pattern[3], 2, 2, 3);
	ds_grid_set(tetrimino.I.pattern[3], 2, 3, 4);
	
	#endregion
	
	#region "J"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.J.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.J.pattern[0], 0, 0, 1);
	ds_grid_set(tetrimino.J.pattern[0], 0, 1, 2);
	ds_grid_set(tetrimino.J.pattern[0], 1, 1, 3);
	ds_grid_set(tetrimino.J.pattern[0], 2, 1, 4);
	
	ds_grid_set(tetrimino.J.pattern[1], 1, 0, 1);
	ds_grid_set(tetrimino.J.pattern[1], 2, 0, 2);
	ds_grid_set(tetrimino.J.pattern[1], 1, 1, 3);
	ds_grid_set(tetrimino.J.pattern[1], 1, 2, 4);
	
	ds_grid_set(tetrimino.J.pattern[2], 0, 1, 1);
	ds_grid_set(tetrimino.J.pattern[2], 1, 1, 2);
	ds_grid_set(tetrimino.J.pattern[2], 2, 1, 3);
	ds_grid_set(tetrimino.J.pattern[2], 2, 2, 4);
	
	ds_grid_set(tetrimino.J.pattern[3], 1, 0, 1);
	ds_grid_set(tetrimino.J.pattern[3], 1, 1, 2);
	ds_grid_set(tetrimino.J.pattern[3], 0, 2, 3);
	ds_grid_set(tetrimino.J.pattern[3], 1, 2, 4);
	
	#endregion
	
	#region "L"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.L.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.L.pattern[0], 2, 0, 1);
	ds_grid_set(tetrimino.L.pattern[0], 0, 1, 2);
	ds_grid_set(tetrimino.L.pattern[0], 1, 1, 3);
	ds_grid_set(tetrimino.L.pattern[0], 2, 1, 4);
	
	ds_grid_set(tetrimino.L.pattern[1], 1, 0, 1);
	ds_grid_set(tetrimino.L.pattern[1], 1, 1, 2);
	ds_grid_set(tetrimino.L.pattern[1], 1, 2, 3);
	ds_grid_set(tetrimino.L.pattern[1], 2, 2, 4);
	
	ds_grid_set(tetrimino.L.pattern[2], 0, 1, 1);
	ds_grid_set(tetrimino.L.pattern[2], 1, 1, 2);
	ds_grid_set(tetrimino.L.pattern[2], 2, 1, 3);
	ds_grid_set(tetrimino.L.pattern[2], 0, 2, 4);

	ds_grid_set(tetrimino.L.pattern[3], 0, 0, 1);
	ds_grid_set(tetrimino.L.pattern[3], 1, 0, 2);
	ds_grid_set(tetrimino.L.pattern[3], 1, 1, 3);
	ds_grid_set(tetrimino.L.pattern[3], 1, 2, 4);
	
	#endregion
	
	#region "O"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.O.pattern[i] = ds_grid_create(4, 4);
	}
	
	ds_grid_set(tetrimino.O.pattern[0], 1, 0, 1);
	ds_grid_set(tetrimino.O.pattern[0], 2, 0, 2);
	ds_grid_set(tetrimino.O.pattern[0], 1, 1, 3);
	ds_grid_set(tetrimino.O.pattern[0], 2, 1, 4);
	
	ds_grid_set(tetrimino.O.pattern[1], 1, 1, 1);
	ds_grid_set(tetrimino.O.pattern[1], 2, 1, 2);
	ds_grid_set(tetrimino.O.pattern[1], 1, 2, 3);
	ds_grid_set(tetrimino.O.pattern[1], 2, 2, 4);
	
	ds_grid_set(tetrimino.O.pattern[2], 0, 1, 1);
	ds_grid_set(tetrimino.O.pattern[2], 1, 1, 2);
	ds_grid_set(tetrimino.O.pattern[2], 0, 2, 3);
	ds_grid_set(tetrimino.O.pattern[2], 1, 2, 4);
	
	ds_grid_set(tetrimino.O.pattern[3], 0, 0, 1);
	ds_grid_set(tetrimino.O.pattern[3], 1, 0, 2);
	ds_grid_set(tetrimino.O.pattern[3], 0, 1, 3);
	ds_grid_set(tetrimino.O.pattern[3], 1, 1, 4);
	
	#endregion
	
	#region "S"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.S.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.S.pattern[0], 1, 0, 1);
	ds_grid_set(tetrimino.S.pattern[0], 2, 0, 2);
	ds_grid_set(tetrimino.S.pattern[0], 0, 1, 3);
	ds_grid_set(tetrimino.S.pattern[0], 1, 1, 4);
	
	ds_grid_set(tetrimino.S.pattern[1], 1, 0, 1);
	ds_grid_set(tetrimino.S.pattern[1], 1, 1, 2);
	ds_grid_set(tetrimino.S.pattern[1], 2, 1, 3);
	ds_grid_set(tetrimino.S.pattern[1], 2, 2, 4);
	
	ds_grid_set(tetrimino.S.pattern[2], 1, 1, 1);
	ds_grid_set(tetrimino.S.pattern[2], 2, 1, 2);
	ds_grid_set(tetrimino.S.pattern[2], 0, 2, 3);
	ds_grid_set(tetrimino.S.pattern[2], 1, 2, 4);
	
	ds_grid_set(tetrimino.S.pattern[3], 0, 0, 1);
	ds_grid_set(tetrimino.S.pattern[3], 0, 1, 2);
	ds_grid_set(tetrimino.S.pattern[3], 1, 1, 3);
	ds_grid_set(tetrimino.S.pattern[3], 1, 2, 4);
	
	#endregion
	
	#region "T"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.T.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.T.pattern[0], 1, 0, 1);
	ds_grid_set(tetrimino.T.pattern[0], 0, 1, 2);
	ds_grid_set(tetrimino.T.pattern[0], 1, 1, 3);
	ds_grid_set(tetrimino.T.pattern[0], 2, 1, 4);
	
	ds_grid_set(tetrimino.T.pattern[1], 1, 0, 1);
	ds_grid_set(tetrimino.T.pattern[1], 1, 1, 2);
	ds_grid_set(tetrimino.T.pattern[1], 2, 1, 3);
	ds_grid_set(tetrimino.T.pattern[1], 1, 2, 4);
	
	ds_grid_set(tetrimino.T.pattern[2], 0, 1, 1);
	ds_grid_set(tetrimino.T.pattern[2], 1, 1, 2);
	ds_grid_set(tetrimino.T.pattern[2], 2, 1, 3);
	ds_grid_set(tetrimino.T.pattern[2], 1, 2, 4);
	
	ds_grid_set(tetrimino.T.pattern[3], 1, 0, 1);
	ds_grid_set(tetrimino.T.pattern[3], 0, 1, 2);
	ds_grid_set(tetrimino.T.pattern[3], 1, 1, 3);
	ds_grid_set(tetrimino.T.pattern[3], 1, 2, 4);
	
	#endregion
	
	#region "Z"형 미노
	
	for (var i = 0; i < 4; i += 1) {
		tetrimino.Z.pattern[i] = ds_grid_create(3, 3);
	}
	
	ds_grid_set(tetrimino.Z.pattern[0], 0, 0, 1);
	ds_grid_set(tetrimino.Z.pattern[0], 1, 0, 2);
	ds_grid_set(tetrimino.Z.pattern[0], 1, 1, 3);
	ds_grid_set(tetrimino.Z.pattern[0], 2, 1, 4);
	
	ds_grid_set(tetrimino.Z.pattern[1], 2, 0, 1);
	ds_grid_set(tetrimino.Z.pattern[1], 1, 1, 2);
	ds_grid_set(tetrimino.Z.pattern[1], 2, 1, 3);
	ds_grid_set(tetrimino.Z.pattern[1], 1, 2, 4);
	
	ds_grid_set(tetrimino.Z.pattern[2], 0, 1, 1);
	ds_grid_set(tetrimino.Z.pattern[2], 1, 1, 2);
	ds_grid_set(tetrimino.Z.pattern[2], 1, 2, 3);
	ds_grid_set(tetrimino.Z.pattern[2], 2, 2, 4);
	
	ds_grid_set(tetrimino.Z.pattern[3], 1, 0, 1);
	ds_grid_set(tetrimino.Z.pattern[3], 0, 1, 2);
	ds_grid_set(tetrimino.Z.pattern[3], 1, 1, 3);
	ds_grid_set(tetrimino.Z.pattern[3], 0, 2, 4);
	
	#endregion
}