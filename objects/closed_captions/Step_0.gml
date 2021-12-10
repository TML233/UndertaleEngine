//处理新增字幕队列
while(!ds_queue_empty(_queue_text)){
	var text=ds_queue_dequeue(_queue_text);
	var duration=ds_queue_dequeue(_queue_duration);
	
	var inst=instance_create_depth(0,0,0,text_typer);
	inst.text="{instant true}{alpha 1}{gui true}{scale 2}{depth "+string(DEPTH_UI.TEXT)+"}"+text+"&";
	with(inst){
		event_user(15);
	}
	inst.override_alpha_enabled=true;
	inst.override_alpha=0;
	Anim_Destroy(inst,"override_alpha");
	Anim_Create(inst,"override_alpha",0,0,0,1,10,5);
	ds_list_add(_list_inst,inst);
	ds_list_add(_list_time,duration);
}

//处理显示时间
var proc=0;
repeat(ds_list_size(_list_inst)){
	if(instance_exists(_list_inst[|proc])){
		if(_list_time[|proc]>0){
			_list_time[|proc]-=1;
		}
	}else{
		_list_time[|proc]=0;
	}
	proc+=1;
}

//处理字幕显示完毕
var proc=0;
repeat(ds_list_size(_list_inst)){
	if(_list_time[|proc]<=0){
		var inst=_list_inst[|proc];
		if(instance_exists(inst)){
			Anim_Destroy(inst,"override_alpha");
			Anim_Create(inst,"override_alpha",0,0,1,-1,10);
			ds_list_add(_list_destroy_inst,inst);
			ds_list_add(_list_destroy_time,10);
		}
		ds_list_delete(_list_inst,proc);
		ds_list_delete(_list_time,proc);
		//proc-=1;
	}else{
		break;
	}
}

//处理字幕高度
var proc=0;
var height=0;
repeat(ds_list_size(_list_inst)){
	var inst=_list_inst[|proc];
	if(instance_exists(inst)){
		height+=inst.height;
	}
	proc+=1;
}

if(_up_previous!=height){
	var delay=0;
	if(height<_up_previous){
		delay=10;
	}
	Anim_Destroy(id,"_up");
	Anim_Create(id,"_up",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,_up,height-_up,10,delay);
	_up_previous=height;
}

var up_show=0;
if(height>_up){
	up_show=_up;
}else{
	up_show=height;
}

//处理字幕位置
var proc=0;
var yy=_y-up_show;
repeat(ds_list_size(_list_inst)){
	var inst=_list_inst[|proc];
	if(instance_exists(inst)){
		inst.x=_x-_left;
		if(proc==ds_list_size(_list_inst)-1){
			inst.y=_y-inst.height;
		}else{
			inst.y=yy;
		}
		yy+=inst.height;
	}
	proc+=1;
}

//处理销毁实例列表
var proc=0;
repeat(ds_list_size(_list_destroy_inst)){
	if(_list_destroy_time[|proc]<=0){
		var inst=_list_destroy_inst[|proc];
		if(instance_exists(inst)){
			instance_destroy(inst);
		}
	}else{
		_list_destroy_time[|proc]-=1;
	}
	if(!instance_exists(_list_destroy_inst[|proc])){
		ds_list_delete(_list_destroy_inst,proc);
		ds_list_delete(_list_destroy_time,proc);
		proc-=1;
	}
	proc+=1;
}

if(!_showed&&!ds_list_empty(_list_inst)){
	_showed=true;
	Anim_Destroy(id,"_alpha");
	Anim_Create(id,"_alpha",0,0,0,1,10);
}else if(_showed&&ds_list_empty(_list_inst)){
	_showed=false;
	Anim_Destroy(id,"_alpha");
	Anim_Create(id,"_alpha",0,0,1,-1,10,5);
}