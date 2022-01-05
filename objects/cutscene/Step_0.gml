if (!global._gmu_cutscene) exit;

var order = global._gmu_cutscene_order[_current_order];
switch (array_length(order) - 1) {
	case 0: script_execute(order[0]); break;
	case 1: script_execute(order[0], order[1]); break;
	case 2: script_execute(order[0], order[1], order[2]); break;
	case 3: script_execute(order[0], order[1], order[2], order[3]); break;
	case 4: script_execute(order[0], order[1], order[2], order[3], order[4], ); break;
	case 5: script_execute(order[0], order[1], order[2], order[3], order[4], order[5]); break;
	case 6: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6]); break;
	case 7: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7]); break;
	case 8: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8]); break;
	case 9: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9]); break;
	case 10: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10]); break;
	case 11: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11]); break;
	case 12: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11], order[12]); break;
	case 13: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11], order[12], order[13]); break;
	case 14: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11], order[12], order[13], order[14]); break;
	case 15: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11], order[12], order[13], order[14], order[15]); break;
	case 16: script_execute(order[0], order[1], order[2], order[3], order[4], order[5], order[6], order[7], order[8], order[9], order[10], order[11], order[12], order[13], order[14], order[15], order[16]); break;
}