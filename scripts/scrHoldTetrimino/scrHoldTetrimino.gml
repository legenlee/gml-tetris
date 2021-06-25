function scrHoldTetrimino() {
	if (holdingTetrimino == noone) {
		holdingTetrimino = currentTetrimino;
		currentTetrimino = scrPickTetrimino();
	} else {
		var temp = holdingTetrimino;
		holdingTetrimino = currentTetrimino;
		currentTetrimino = temp;		
	}
	
	hold = false;
	currentX = 4;
	currentY = 1;
	currentRotate = 0;
	dropCooldown = maxDropCooldown;
	fallCooldown = game_get_speed(gamespeed_fps) / g;
}