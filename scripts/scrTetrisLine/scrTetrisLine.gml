function scrTetrisLine() {
	var line = ds_list_create();
	
	for (var i = 0; i < HEIGHT; i += 1) {
		var mino = 0;
		
		for (var j = 0; j < WIDTH; j += 1) {
			if (ds_grid_get(field, j, i) != 0) {
				mino += 1;
			}
		}
		
		ds_list_add(line, mino == WIDTH ? 1 : 0);
	}
	
	for (var i = HEIGHT - 1; i >= 0; i -= 1) {
		
	}
}