/// @description Carrying input state

var _horizontalKey = keyboard_check(keyConfig.right) - keyboard_check(keyConfig.left);
var _horizontalKeyPressed = keyboard_check_pressed(keyConfig.right) - keyboard_check_pressed(keyConfig.left);

var _verticalKey = keyboard_check(keyConfig.down) - keyboard_check(keyConfig.up);
var _verticalKeyPressed = keyboard_check_pressed(keyConfig.down) - keyboard_check_pressed(keyConfig.up);

var _rotateLeftKeyPressed = keyboard_check_pressed(keyConfig.rotateLeft);
var _rotateRightKeyPressed = keyboard_check_pressed(keyConfig.rotateRight);

var _softDropKeyPressed = keyboard_check_pressed(keyConfig.softDrop);
var _hardDropKeyPressed = keyboard_check_pressed(keyConfig.hardDrop);

var _holdKeyPressed = keyboard_check_pressed(keyConfig.hold);

with (objGame) {
	 horizontalKey = _horizontalKey;
	 horizontalKeyPressed = _horizontalKeyPressed;
	 
	 verticalKey = _verticalKey;
	 verticalKeyPressed = _verticalKeyPressed;
	 
	 rotateLeftKeyPressed = _rotateLeftKeyPressed;
	 rotateRightKeyPressed = _rotateRightKeyPressed;
	 
	 softDropKeyPressed = _softDropKeyPressed;
	 hardDropKeyPressed = _hardDropKeyPressed;
	 
	 holdKeyPressed = _holdKeyPressed;
}