/// @description Trigger

event_inherited();
Cutscene_End();
for (var i = 0; i < array_length(_order_list); i++) {
	Cutscene_ChangeOrder(i, _order_list[i][0], _order_list[i][1]);
}
Cutscene_Begin();
instance_destroy();