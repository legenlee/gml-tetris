function scrPickTetrimino() {
	var next = ds_list_find_value(tetriminoQueue, 0);
	ds_list_delete(tetriminoQueue, 0);
	
	if (ds_list_size(tetriminoQueue) <= DISPLAY_MAX_QUEUE) {
		ds_list_shuffle(tetriminoBag);
		
		for (var i = 0; i < ds_list_size(tetriminoBag); i += 1) {
			ds_list_add(tetriminoQueue, ds_list_find_value(tetriminoBag, i));
		}
		
	}	
	
	return next;
}