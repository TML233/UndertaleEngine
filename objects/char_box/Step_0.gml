/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if gra == 1 && instance_exists(text_typer) {
	if Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.TEXT_TYPER_CHOICE,noone) != noone {
		gra = 0
		instance_destroy(text_typer)
		if Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.TEXT_TYPER_CHOICE) == 0
			instance_create_depth(0,0,0,ui_box);
		else
			char_player.moveable = true
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TEXT_TYPER_CHOICE,noone)
	}
}