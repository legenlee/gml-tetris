/// @description scrSRSRollRight()

function scrSRSRollRight() {
	var newRoll = (currentRoll + 1) % 4;
	var offsetX = 0;
	var offsetY = 0;
	
	switch (currentTetrimino) {
		case "J":
		case "L":
		case "S":
		case "T":
		case "Z":
		case "I": {
			for (var i = 0; i < 5; i += 1) 
			{
				var table = currentTetrimino == "I" ? tableI : tableJLSTZ;
				offsetX = ds_grid_get(table, i, currentRoll)[0] - ds_grid_get(table, i, newRoll)[0];
				offsetY = ds_grid_get(table, i, currentRoll)[1] - ds_grid_get(table, i, newRoll)[1];
			}
			
			break;
		}
		
		case "O": {
			offsetX = ds_grid_get(tableJLSTZ, 0, currentRoll)[0] - ds_grid_get(tableJLSTZ, 0, newRoll)[0];
			offsetY = ds_grid_get(tableJLSTZ, 0, currentRoll)[1] - ds_grid_get(tableJLSTZ, 0, newRoll)[1];
			break;
		}
	}
	
	if (!scrPlaceTetrimino(currentX + offsetX, currentY + offsetY)) {
		currentRoll = newRoll;
		currentX += offsetX;
		currentY += offsetY
	}
}