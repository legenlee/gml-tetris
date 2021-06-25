function scrGetHardDropY() {
	var result = currentY;
	while (!scrPlaceTetrimino(currentX, result)) {
		result += 1;
	}
	
	return result - 1;
}