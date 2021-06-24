function scrPickTetrimino() {
	var keys = variable_struct_get_names(tetrimino);
	var index = irandom(array_length(keys) - 1);
	return keys[index];
}