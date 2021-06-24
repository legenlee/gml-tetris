/// @description Insert description here

switch (screen) {
	case ScreenState.MainMenu: {
		if (keyboard_check_pressed(vk_enter)) {
			screen = ScreenState.Game;
			field = ds_grid_create(WIDTH, HEIGHT);
			queue = ds_queue_create();
		}
		
		break;
	}
}