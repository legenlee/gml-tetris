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
}