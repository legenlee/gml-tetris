/// @description Handle game state

switch (screen) {
	case ScreenState.MainMenu: {
		if (keyboard_check_pressed(vk_enter)) {
			field = ds_grid_create(WIDTH, HEIGHT);
			scrInitTetriminoQueue();
			currentTetrimino = scrPickTetrimino();
			
			screen = ScreenState.Game;
			audio_play_sound(musBradinsky, 0, true);
		}
		
		break;
	}
	
	case ScreenState.Game: {
		fallCooldown -= 1;
		
		if (!scrPlaceTetrimino(currentX, currentY + 1, currentRotate) && fallCooldown <= 0) {
			fallCooldown = game_get_speed(gamespeed_fps) / g;
			currentY += 1;
		}
		
		if (currentY == scrGetHardDropY()) {
			if (dropCooldown > 0) {
				dropCooldown -= 1;
			} else {
				scrDropTetrimino();
			}
		} else {
			dropCooldown = maxDropCooldown;
		}
		
		if (!scrPlaceTetrimino(currentX + horizontalKeyPressed, currentY, currentRotate)) {
			currentX += horizontalKeyPressed;
		}
		
		if (verticalKeyPressed == 1) {
			if (scrPlaceTetrimino(currentX, currentY + 1, currentRotate)) {
				scrDropTetrimino();
			} else {
				currentY += 1;
				dropCooldown = maxDropCooldown;
			}
		}
		
		
		if (rotateLeftKeyPressed) {
			scrSRSRotateLeft();
		}
		
		if (rotateRightKeyPressed) {
			scrSRSRotateRight();
		}
		
		
		if (holdKeyPressed && hold) {
			scrHoldTetrimino();
		}
		
		if (hardDropKeyPressed) {
			scrDropTetrimino();
		}
		
		break;
	}
	
	case ScreenState.GameOver: {
		if (audio_is_playing(musBradinsky)) {
			audio_stop_sound(musBradinsky);
		}
		
		if (keyboard_check_pressed(vk_anykey)) {
			ds_grid_destroy(field);
			ds_list_destroy(tetriminoQueue);
			ds_list_destroy(tetriminoBag);
			
			field = noone;
			tetriminoQueue = noone;
			tetriminoBag = noone;
			
			screen = ScreenState.MainMenu;
		}
		
		break;
	}
}