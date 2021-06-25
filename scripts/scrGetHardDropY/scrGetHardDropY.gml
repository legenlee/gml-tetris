function scrGetHardDropY() {
	var result = currentY;
	while (!scrPlaceTetrimino(currentX, result, currentRotate)) {
		result += 1;
	}
	
	return result - 1;
}