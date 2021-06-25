/// @description DEBUG

if (debug_mode && screen == ScreenState.Game) {
	var tetriminoData = variable_struct_get(tetrimino, currentTetrimino);
	var tetriminoPattern = tetriminoData.pattern[currentRotate];
	var tetriminoOffset = tetriminoData.offset;
	var gridWidth = ds_grid_width(tetriminoPattern);
	var gridHeight = ds_grid_height(tetriminoPattern);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fntDOSGothic);
	draw_text(16, 160, currentRotate);
	draw_text(16, 176, currentTetrimino);	
	draw_text(16, 192, tetriminoOffset);
	draw_text(16, 208, gridWidth);
	draw_text(16, 224, gridHeight);

	for (var i = 0; i < 4; i += 1) {
		var gridX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		var gridY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		
		draw_text(16, 240 + 16 * i, string(gridX + currentX) + ", " + string(gridY + currentY));
	}
}