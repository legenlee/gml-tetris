/// @description scrPlaceTetrimino(x, y, tetriminoKey, tetriminoRoll)
/// @param x
/// @param y
/// @param tetriminoKey
/// @param tetriminoRoll

function scrPlaceTetrimino(x, y, tetriminoKey, tetriminoRoll) {
	var tetriminoData = variable_struct_get(tetrimino, tetriminoKey);
	var tetriminoOffset = tetriminoData.offset;
	var tetriminoPattern = tetriminoData.pattern[tetriminoRoll];
	
	var gridWidth = ds_grid_width(tetriminoPattern) - 1;
	var gridHeight = ds_grid_height(tetriminoPattern) - 1;
	
	for (var i = 0; i < 4; i += 1) {
		var gridX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		var gridY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) - tetriminoOffset;
		
		if (
			x + gridX < 0 ||
			x + gridX >= WIDTH ||
			y + gridY < 0 ||
			y + gridY >= HEIGHT
		) {
			return true;
		}	
	}
	
	return false;
}