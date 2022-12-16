function cutscene_create() {
	var inst = instance_create_depth(0, 0, 0, obj_cutscene_inst);
	return inst;
}

function cutscene_custom(cut, action) {
	if cut._process_actions {
		array_push(cut.actions_new, action);
	} else {
		array_push(cut.actions, action);
	}
}

function cutscene_play(cut) {
	cut.suspend = false;	
}

function cutscene_stop(cut) {
	cut.suspend = true;	
}

// Useful default cutscene functions

// waits for X frames
function cutscene_wait(cut, frames) {
	cutscene_custom(cut, {
		frames: frames,
		
		update: function() {
			if frames == 0 {
				return false;
			} else {
				frames--;
				return true;
			}
		},
	})	
}

function cutscene_dialogue(cut, dialogue) {
	cutscene_custom(cut, {
		dialogue: dialogue,
		init: function() {
			if is_array(dialogue) {
				var len = array_length(dialogue);
				for (var i = 0; i < len; ++i) {
				    Dialog_Add(dialogue[i]);
				}
			} else {
				Dialog_Add(dialogue);	
			}
			Dialog_Start();
		},
		
		update: function() {
			return !Dialog_IsEmpty() || (instance_exists(ui_dialog) && instance_exists(ui_dialog._inst));
		},
	})	
}

function cutscene_choice(cut, dialogue, options, response) {
	cutscene_custom(cut, {
		dialogue: dialogue,
		options: options,
		response: response,
		init: function() {
			Dialog_Add(dialogue + "&&" + options + "{choice `TMP`}");
			Dialog_Start();
		},
		
		update: function(cut) {
			if (!Dialog_IsEmpty() || (instance_exists(ui_dialog) && instance_exists(ui_dialog._inst))) {
				return true;
			} else {
				response(cut, Player_GetTextTyperChoice());
				return false;
			}
		},
	})	
}

function cutscene_player_move(cut, can_move) {
	cutscene_func(cut, function(can_move) {char_player.moveable = can_move}, can_move);
}


function cutscene_start_encounter(cut, encounter_id, anim = true, exclam = true) {
	cutscene_custom(cut, {
		encounter_id: encounter_id,
		anim: anim,
		exclam: exclam,
		init: function() {
			Encounter_Start(encounter_id, anim, exclam)	
		},
		update: function() {
			return (instance_exists(encounter_anim) || room == room_battle);
		}
	});
}

function cutscene_create_anim(cut, inst, var_name, tween, ease, start, change, duration, delay = 0, arg_0 = -1, arg_1 = -1, mode = ANIM_MODE.ONESHOT, relative = true, wait = 0) {
	cutscene_custom(cut, {
		inst: inst,
		var_name: var_name,
		tween: tween,
		ease: ease,
		start: start,
		change: change,
		duration: duration,
		delay: delay,
		arg_0: arg_0,
		arg_1: arg_1,
		mode: mode,
		relative: relative,
		init: function() {
			Anim_Create(inst,var_name,tween,ease,start,change,duration,delay,arg_0,arg_1,mode,relative);
		},
		update: function() {
			if(wait==0){
				return true;
			}
			else if(wait==1){
				return !Anim_IsExists(inst,var_name);
			}
		}
	});
}

function cutscene_char_move(cut, chars, dir, amt, wait = true) {
	cutscene_custom(cut, {
		chars: chars,
		dir: dir,
		amt: amt,
		wait: wait,
		init: function() {
			chars.move[dir] = amt;
		},
		update: function() {
			return wait && chars.move[dir] != 0;	
		}
	});
}

function cutscene_play_sound(cut, soundid, priority, loops) {
	cutscene_func(cut, function(args) {audio_play_sound(args[0], args[1], args[2])}, [soundid, priority, loops]);
}

function cutscene_func(cut, scr, args) {
	cutscene_custom(cut, {
		scr: scr,
		args: args,
		update: function(cut) {
			scr(args);
			return false;
		}
	});
};

