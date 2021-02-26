/// @description Initialize the variables
image_speed = 0;
image_index = 0;

for (var i = 0; i < 12; i++;) {
	_text[i] = Lang_GetString("story." + string(i));
}
_prefix = "{skippable false}{space_x 1.5}{voice 1}{speed 2}";
_text_no = 0;
_text_end = array_length_1d(_text) - 1;

_callonce = false;
_write = false;
_fading = false;

_draw[0] = false;
_draw_y[0] = 0;

_timer = 0;

alarm[2] = 8;
Music_Play(0, "story", false);
Music_SetPitch(0, 0.91);