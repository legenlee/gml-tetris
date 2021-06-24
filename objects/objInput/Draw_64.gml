/// @description DEBUG

if (debug_mode) {
	var keys = variable_struct_get_names(keyConfig);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fntDOSGothic);
	
	for (var index = 0; index < array_length(keys); index += 1) {
		var keyName = keys[index];
		draw_text(16, 16 * index, keyName + ": " + string(variable_struct_get(keyConfig, keyName)));
	}
}