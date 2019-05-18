var buffer=buffer_create(1,buffer_grow,1);
buffer_write(buffer,buffer_u32,_seed);
var num=Demo_GetInputNumber();
buffer_write(buffer,buffer_u8,num);
var proc=0;
repeat(num){
	buffer_write(buffer,buffer_u8,Demo_GetInput(proc));
	proc+=1;
}
buffer_write(buffer,buffer_u32,_frame_number);
buffer_copy(_buffer,0,buffer_tell(_buffer),buffer,buffer_tell(buffer));

var base64=buffer_base64_encode(buffer,0,buffer_get_size(buffer));
Flag_Set(FLAG_TYPE.DEMO,FLAG_DEMO.DATA,base64);
buffer_delete(buffer);

buffer_delete(_buffer);