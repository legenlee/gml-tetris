function scrInitTetriminoQueue() {
	tetriminoQueue = ds_list_create();
	tetriminoBag = ds_list_create();
	
	var keys = variable_struct_get_names(tetrimino);
	
	for (var i = 0; i < array_length(keys); i += 1) {
		ds_list_add(tetriminoBag, keys[i]);
	}
	
	ds_list_shuffle(tetriminoBag);
	ds_list_copy(tetriminoQueue, tetriminoBag);
}