_inst_typer = -1;
_last_frame = false;
_last_frame_y = 138;

_text_no = 0;
text = [
	"Long ago, two races&ruled over EARTH:&HUMANS and MONSTERS.{sleep 120}{event 0}",
	"One day, war broke&out between the two&races.{sleep 120}{event 0}",
	"After a long battle,&the humans were&victorious.{sleep 120}{event 0}",
	"They sealed the monsters&underground with a magic&spell.{sleep 120}{event 0}",
	"Many years later...{sleep 120}{event 0}",
	"      MT. EBOTT&        201X{sleep 120}{event 0}",
	"Legends say that those&who climb the mountain&never return.{sleep 120}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 120}{event 1}{sleep 1200}{event 2}",
];

BGM_Play(0, bgm_intro, false);
BGM_SetPitch(0, 0.91);
image_speed = 0;
image_index = 0;

writeText = function () {
	_inst_typer = Typer_Type(60, 160, text[_text_no], "{skip_space false}{skippable false}{voice 1}{speed 1}{space_x 1}", true);
}
writeText();