function scrInitSRSTable() {
	tableJLSTZ = ds_grid_create(5, 4);
	tableI = ds_grid_create(5, 4);
	tableO = ds_grid_create(1, 4);
	
	#region JLSTZ Table
	
	ds_grid_set(tableJLSTZ, 0, 0, [0, 0]);
	ds_grid_set(tableJLSTZ, 1, 0, [0, 0]);
	ds_grid_set(tableJLSTZ, 2, 0, [0, 0]);
	ds_grid_set(tableJLSTZ, 3, 0, [0, 0]);
	ds_grid_set(tableJLSTZ, 4, 0, [0, 0]);
		
	ds_grid_set(tableJLSTZ, 0, 1, [0, 0]);
	ds_grid_set(tableJLSTZ, 1, 1, [1, 0]);
	ds_grid_set(tableJLSTZ, 2, 1, [1, -1]);
	ds_grid_set(tableJLSTZ, 3, 1, [0, 2]);
	ds_grid_set(tableJLSTZ, 4, 1, [1, 2]);
	
	ds_grid_set(tableJLSTZ, 0, 2, [0, 0]);
	ds_grid_set(tableJLSTZ, 1, 2, [0, 0]);
	ds_grid_set(tableJLSTZ, 2, 2, [0, 0]);
	ds_grid_set(tableJLSTZ, 3, 2, [0, 0]);
	ds_grid_set(tableJLSTZ, 4, 2, [0, 0]);
	
	ds_grid_set(tableJLSTZ, 0, 3, [0, 0]);
	ds_grid_set(tableJLSTZ, 1, 3, [-1, 0]);
	ds_grid_set(tableJLSTZ, 2, 3, [-1, -1]);
	ds_grid_set(tableJLSTZ, 3, 3, [0, 2]);
	ds_grid_set(tableJLSTZ, 4, 3, [-1, 2]);
	
	#endregion
	
	#region I Table
	
	ds_grid_set(tableI, 0, 0, [0, 0]);
	ds_grid_set(tableI, 1, 0, [-1, 0]);
	ds_grid_set(tableI, 2, 0, [2, 0]);
	ds_grid_set(tableI, 3, 0, [-1, 0]);
	ds_grid_set(tableI, 4, 0, [2, 0]);
		
	ds_grid_set(tableI, 0, 1, [-1, 0]);
	ds_grid_set(tableI, 1, 1, [0, 0]);
	ds_grid_set(tableI, 2, 1, [0, 0]);
	ds_grid_set(tableI, 3, 1, [0, 1]);
	ds_grid_set(tableI, 4, 1, [1, -2]);
	
	ds_grid_set(tableI, 0, 2, [-1, 1]);
	ds_grid_set(tableI, 1, 2, [1, 1]);
	ds_grid_set(tableI, 2, 2, [-2, 1]);
	ds_grid_set(tableI, 3, 2, [1, 0]);
	ds_grid_set(tableI, 4, 2, [-2, 0]);
	
	ds_grid_set(tableI, 0, 3, [0, 1]);
	ds_grid_set(tableI, 1, 3, [0, 1]);
	ds_grid_set(tableI, 2, 3, [0, 1]);
	ds_grid_set(tableI, 3, 3, [0, -1]);
	ds_grid_set(tableI, 4, 3, [0, 2]);
	
	#endregion
	
	#region O Table
	
	ds_grid_set(tableI, 0, 0, [0, 0]);
	
	ds_grid_set(tableI, 0, 1, [0, -1]);
	
	ds_grid_set(tableI, 0, 2, [-1, -1]);
	
	ds_grid_set(tableI, 0, 3, [-1, 0]);
	
	#endregion
}