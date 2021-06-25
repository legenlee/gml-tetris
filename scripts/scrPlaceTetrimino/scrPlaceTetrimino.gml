/// @description scrPlaceTetrimino(x, y)
/// @param x
/// @param y
/// @param key
/// @param roll

function scrPlaceTetrimino(x, y) {
	var tetriminoData = variable_struct_get(tetrimino, currentTetrimino);
	var tetriminoOffset = tetriminoData.offset;
	var tetriminoPattern = tetriminoData.pattern[currentRoll];
	
	var gridWidth = ds_grid_width(tetriminoPattern) - 1;
	var gridHeight = ds_grid_height(tetriminoPattern) - 1;
	
	for (var i = 0; i < 4; i += 1) {
		var gridX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + x - tetriminoOffset;
		var gridY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + y - tetriminoOffset;
		
		if (gridX < 0 || gridX >= WIDTH || gridY < 0 || gridY >= HEIGHT || ds_grid_get(field, gridX, gridY) != 0) {
			return true;
		}	
	}
	
	return false;
}