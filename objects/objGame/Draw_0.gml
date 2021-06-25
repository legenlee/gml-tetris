/// @description Draw screen

if (screen != ScreenState.MainMenu) {
	var tetriminoData = variable_struct_get(tetrimino, currentTetrimino);
	var tetriminoPattern = tetriminoData.pattern[currentRotate];
	var tetriminoOffset = tetriminoData.offset;
	
	var gridWidth = ds_grid_width(tetriminoPattern) - 1;
	var gridHeight = ds_grid_height(tetriminoPattern) - 1;
	
	var hardDropY = scrGetHardDropY();
	
	// 떨어지는 테트리미노
	for (var i = 0; i < 4; i += 1) {
		var tetriminoX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + currentX - tetriminoOffset;
		var tetriminoY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + currentY - tetriminoOffset;
		
		var drawX = 8 + (tetriminoWidth + margin) * tetriminoX;
		var drawY = 8 + (tetriminoHeight + margin) * tetriminoY;
		
		draw_sprite_ext(sprTetrimino, 0, drawX, drawY, 1, 1, 0, tetriminoData.tintColor, 1);		
	}
	
	// 테트리미노 고스트
	for (var i = 0; i < 4; i += 1) {
		var tetriminoX = ds_grid_value_x(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + currentX - tetriminoOffset;
		var tetriminoY = ds_grid_value_y(tetriminoPattern, 0, 0, gridWidth, gridHeight, i + 1) + hardDropY - tetriminoOffset;
		
		var drawX = 8 + (tetriminoWidth + margin) * tetriminoX;
		var drawY = 8 + (tetriminoHeight + margin) * tetriminoY;
		
		draw_sprite_ext(sprTetrimino, 0, drawX, drawY, 1, 1, 0, tetriminoData.tintColor, 0.3);		
	}
			
	// 배경 화면
	for (var w = 0; w < WIDTH; w += 1) {
		for (var h = 0; h < HEIGHT; h += 1) {
			var drawX = 8 + (tetriminoWidth + margin) * w;
			var drawY = 8 + (tetriminoHeight + margin) * h;
			var item = ds_grid_get(field, w, h);
			
			draw_rectangle_color(drawX, drawY, drawX + tetriminoWidth - 1, drawY + tetriminoHeight - 1, BLACK, BLACK, BLACK, BLACK, true);
			
			// 공간에 테트리미노 있으면
			if (item != 0) {
				var tetriminoItem = variable_struct_get(tetrimino, item);
				draw_sprite_ext(tetriminoSprite, 0, drawX, drawY, 1, 1, 0, tetriminoItem.tintColor, 1);
			}
		}
	}
}

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
	
	case ScreenState.GameOver: {
		draw_set_halign(fa_center);
		draw_set_halign(fa_middle);
		draw_set_color(c_red);
		draw_text_transformed(room_width / 2, room_height / 2, "Game over", 2, 2, 0);
		
		break;
	}
}