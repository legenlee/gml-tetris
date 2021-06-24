/// @description Insert description here

enum ScreenState {
	MainMenu,
	Game,
	GameOver
}

screen = ScreenState.MainMenu;

queue = noone;
field = noone;

margin = 2;

minoSprite = sprMino;
minoWidth = sprite_get_width(minoSprite);
minoHeight = sprite_get_height(minoSprite);

horizontalKey = 0;
horizontalKeyPressed = 0;
verticalKey = 0;
verticalKeyPressed = 0;
rotateLeftKeyPressed = 0;
rotateRightKeyPressed = 0;
softDropKeyPressed = 0;
hardDropKeyPressed = 0;
holdKeyPressed = 0;
