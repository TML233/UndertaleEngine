///@desc Group & Macro
ds_map_add(_map_macro,"true",true);
ds_map_add(_map_macro,"false",false);

ds_map_add(_map_macro,"DIR.UP",DIR.UP);
ds_map_add(_map_macro,"DIR.DOWN",DIR.DOWN);
ds_map_add(_map_macro,"DIR.LEFT",DIR.LEFT);
ds_map_add(_map_macro,"DIR.RIGHT",DIR.RIGHT);

ds_map_add(_map_macro,"FONT.DIALOG",0);
ds_map_add(_map_macro,"FONT.MENU",1);
ds_map_add(_map_macro,"FONT.BATTLE",2);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);

_group_font[0,0]=Lang_GetFont(Lang_GetString("font.dialog.0"));
_group_font_scale_x[0,0]=real(Lang_GetString("font.dialog.0.scale.x"));
_group_font_scale_y[0,0]=real(Lang_GetString("font.dialog.0.scale.y"));
_group_font_space_x[0,0]=real(Lang_GetString("font.dialog.0.space.x"));
_group_font[0,1]=Lang_GetFont(Lang_GetString("font.dialog.1"));
_group_font_scale_x[0,1]=real(Lang_GetString("font.dialog.1.scale.x"));
_group_font_scale_y[0,1]=real(Lang_GetString("font.dialog.1.scale.y"));
_group_font_space_x[0,1]=real(Lang_GetString("font.dialog.1.space.x"));
_group_font_space_y[0]=real(Lang_GetString("font.dialog.space.y"));

_group_font[1,0]=Lang_GetFont(Lang_GetString("font.menu.0"));
_group_font_scale_x[1,0]=real(Lang_GetString("font.menu.0.scale.x"));
_group_font_scale_y[1,0]=real(Lang_GetString("font.menu.0.scale.y"));
_group_font_space_x[1,0]=real(Lang_GetString("font.menu.0.space.x"));
_group_font[1,1]=Lang_GetFont(Lang_GetString("font.menu.1"));
_group_font_scale_x[1,1]=real(Lang_GetString("font.menu.1.scale.x"));
_group_font_scale_y[1,1]=real(Lang_GetString("font.menu.1.scale.y"));
_group_font_space_x[1,1]=real(Lang_GetString("font.menu.1.space.x"));
_group_font_space_y[1]=real(Lang_GetString("font.menu.space.y"));

_group_font[2,0]=Lang_GetFont(Lang_GetString("font.battle.0"));
_group_font_scale_x[2,0]=real(Lang_GetString("font.battle.0.scale.x"));
_group_font_scale_y[2,0]=real(Lang_GetString("font.battle.0.scale.y"));
_group_font_space_x[2,0]=real(Lang_GetString("font.battle.0.space.x"));
_group_font[2,1]=Lang_GetFont(Lang_GetString("font.battle.1"));
_group_font_scale_x[2,1]=real(Lang_GetString("font.battle.1.scale.x"));
_group_font_scale_y[2,1]=real(Lang_GetString("font.battle.1.scale.y"));
_group_font_space_x[2,1]=real(Lang_GetString("font.battle.1.space.x"));
_group_font_space_y[2]=real(Lang_GetString("font.battle.space.y"));

_group_voice[0,0]=snd_text_voice_default;
_group_voice[1,0]=snd_text_voice_typer;

_group_face[0]=face;