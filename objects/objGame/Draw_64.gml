/// @description DEBUG

if (debug_mode && screen == ScreenState.Game) {
	var tetriminoData = variable_struct_get(tetrimino, currentTetrimino);
	var tetriminoPattern = tetriminoData.pattern[currentRoll];
	var tetriminoOffset = tetriminoData.offset;
	var gridWidth = ds_grid_width(tetriminoPattern);
	var gridHeight = ds_grid_height(tetriminoPattern);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_font(fntDOSGothic);
	draw_text(16, 128, currentRoll);
	draw_text(16, 144, currentTetrimino);	
	draw_text(16, 160, tetriminoOffset);
	draw_text(16, 176, gridWidth);
	draw_text(16, 192, gridHeight);

	for (var i = 0; i < 4; i += 1) {
		var gridX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		var gridY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		
		draw_text(16, 208 + 16 * i, string(gridX + currentX) + ", " + string(gridY + currentY));
	}
}