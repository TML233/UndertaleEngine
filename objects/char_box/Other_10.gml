Dialog_Add("* Use the box?&&         {instant true}{choice 0}Yes         {choice 1}No{choice `TMP`}{pause}");
Dialog_Start();

_interact = true;
char_player.moveable = false;