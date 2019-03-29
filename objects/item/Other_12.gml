///@desc Drop
var rand=irandom(18);
var sub=0;
if(rand>3){
	sub=0;
}else if(rand==0){
	sub=1;
}else if(rand==1){
	sub=2;
}else if(rand==2){
	sub=3;
}else if(rand==3){
	sub=4;
}
Dialog_Add("{define `ITEM` `"+_name+"`}"+Lang_GetString("item.drop."+string(sub)));
Dialog_Start();

Item_Remove(_item_slot);

instance_destroy();