function scrTetrisLine() {
	for (var i = HEIGHT - 1; i >= 0; i -= 1) {
		var mino = 0;
		
		for (var j = 0; j < WIDTH; j += 1) {
			if (ds_grid_get(field, j, i) != 0) {
				mino += 1;
			}
		}
		
		if (mino == WIDTH) {
			for (var h = i; h > 0; h -= 1) {
				for (var w = 0; w < WIDTH; w += 1) {
					ds_grid_set(field, w, h, ds_grid_get(field, w, h - 1));
				}
			}
			
			for (var w = 0; w < WIDTH; w += 1) {
				ds_grid_set(field, w, 0, 0);
			}
			
			i += 1;
		}
	}
}