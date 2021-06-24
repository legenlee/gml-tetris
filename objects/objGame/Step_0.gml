/// @description Handle game state

switch (screen) {
	case ScreenState.MainMenu: {
		if (keyboard_check_pressed(vk_enter)) {
			field = ds_grid_create(WIDTH, HEIGHT);
			queue = ds_queue_create();
			currentTetrimino = scrPickTetrimino();
			
			screen = ScreenState.Game;
		}
		
		break;
	}
	
	case ScreenState.Game: {
		if (!scrPlaceTetrimino(currentX + horizontalKeyPressed, currentY, currentTetrimino, currentRoll)) {
			currentX += horizontalKeyPressed;
		}
	}
	
	case ScreenState.GameOver: {
		if (keyboard_check_pressed(vk_enter)) {
			ds_grid_destroy(field);
			ds_queue_destroy(queue);
			
			screen = ScreenState.MainMenu;
		}
	}
}