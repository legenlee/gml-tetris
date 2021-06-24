/// @description Insert description here

switch (screen) {
	case ScreenState.MainMenu: {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_yellow);
		draw_set_font(fntDOSGothic);
		draw_text_transformed(room_width / 2, 140, "Tetris", 2, 2, 0);
		
		draw_set_color(c_white);
		draw_text(room_width / 2, room_height / 2 + 24, "Press Enter to play");
		break;
	}
	
	case ScreenState.Game: {
		for (var w = 0; w < WIDTH; w += 1) {
			for (var h = 0; h < HEIGHT; h += 1) {
				var viewX = 8 + (minoWidth + margin) * w;
				var viewY = 8 + (minoHeight + margin) * h;
				var item = ds_grid_get(field, w, h);
				
				draw_rectangle_color(viewX, viewY, viewX + minoWidth - 1, viewY + minoHeight - 1, BLACK, BLACK, BLACK, BLACK, true);
			
				if (item) {
					draw_sprite(viewX, viewY, 0, minoSprite);
				}
			}
		}
	}
}