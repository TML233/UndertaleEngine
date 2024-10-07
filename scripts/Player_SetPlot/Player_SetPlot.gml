///@arg plot
function Player_SetPlot() {
	var PLOT=argument[0];

	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PLOT,PLOT);

	return true;


}
