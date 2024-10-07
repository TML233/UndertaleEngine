if(emotion!=_emotion_previous || talking!=_talking_previous){
	if(talking){
		sprite_index=((emotion>=0 && emotion<array_length(talk_sprite)) ? talk_sprite[emotion] : spr_default);
		image_index=((emotion>=0 && emotion<array_length(talk_image)) ? talk_image[emotion] : 0);
		image_speed=((emotion>=0 && emotion<array_length(talk_speed)) ? talk_speed[emotion] : 0);
	}else{
		sprite_index=((emotion>=0 && emotion<array_length(idle_sprite)) ? idle_sprite[emotion] : spr_default);
		image_index=((emotion>=0 && emotion<array_length(idle_image)) ? idle_image[emotion] : 0);
		image_speed=((emotion>=0 && emotion<array_length(idle_speed)) ? idle_speed[emotion] : 0);
	}
	_emotion_previous=emotion;
	_talking_previous=talking;
}