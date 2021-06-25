/// @description scrSRSRotateLeft()

function scrSRSRotateLeft() {
	var newRotate = (currentRotate - 1 + 4) % 4;
	
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
				var rotateOffset = ds_grid_get(table, i, currentRotate);
				var newRotateOffset = ds_grid_get(table, i, newRotate);
				
				var offsetX = rotateOffset[0] - newRotateOffset[0];
				var offsetY = rotateOffset[1] - newRotateOffset[1];
				
				if (!scrPlaceTetrimino(currentX + offsetX, currentY + offsetY, newRotate)) {
					currentRotate = newRotate;
					currentX += offsetX;
					currentY += offsetY
					
					return;
				}
			}
			
			break;
		}
		
		case "O": {
			var rotateOffset = ds_grid_get(tableO, 0, currentRotate);
			var newRotateOffset = ds_grid_get(tableO, 0, newRotate);
			
			var offsetX = rotateOffset[0] - newRotateOffset[0];
			var offsetY = rotateOffset[1] - newRotateOffset[1];
			
				if (!scrPlaceTetrimino(currentX + offsetX, currentY + offsetY, newRotate)) {
					currentRotate = newRotate;
					currentX += offsetX;
					currentY += offsetY;
				}
				
			break;
		}
	}
}