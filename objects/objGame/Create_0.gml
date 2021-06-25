/// @description Initialize variables

show_debug_overlay(debug_mode);

enum ScreenState {
	MainMenu,
	Game,
	GameOver
}

screen = ScreenState.MainMenu;

queue = noone;
field = noone;

margin = 2;

tetriminoSprite = sprTetrimino;
tetriminoWidth = sprite_get_width(tetriminoSprite);
tetriminoHeight = sprite_get_height(tetriminoSprite);

scrInitTetrimino();
scrInitSRSTable();

horizontalKey = 0;
horizontalKeyPressed = 0;
verticalKey = 0;
verticalKeyPressed = 0;
rotateLeftKeyPressed = 0;
rotateRightKeyPressed = 0;
softDropKeyPressed = 0;
hardDropKeyPressed = 0;
holdKeyPressed = 0;

g = 1;

hold = true;
holdTetrimino = noone;

currentTetrimino = noone;
currentRotate = 0;
currentX = 4;
currentY = 1;

maxDropCooldown = game_get_speed(gamespeed_fps) * 1.5;
dropCooldown = maxDropCooldown;

fallCooldown = game_get_speed(gamespeed_fps) / 1;