event_inherited();

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable) {
    var SPD = Player_GetSpdTotal();
    var SPD = (Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
    
    // Horizontal movement (sub-steps for collision precision)
    repeat (SPD * 10) {
        if (Input_IsHeld(INPUT.LEFT)) {
            if (!position_meeting(x - sprite_width/2, y, block)) {
                x -= 0.1;
            }
        }
        if (Input_IsHeld(INPUT.RIGHT)) {
            if (!position_meeting(x + sprite_width/2, y, block)) {
                x += 0.1;
            }
        }
    }
    
    // Check if on ground
    _on_ground = position_meeting(x, y + sprite_height/2 + 0.5, block);
    
    if (_on_ground) {
        _vspd = 0;
        // Jump!
        if (Input_IsPressed(INPUT.UP)) {
            _vspd = _jump_spd;
            audio_play_sound(snd_encounter_soul_move, 0, false);
        }
    } else {
        // Apply gravity
        _vspd += _gravity;
        // Limit terminal velocity
        if (_vspd > 6) {
            _vspd = 6;
        }
        
        // Variable jump height: release UP to cut jump short
        if (!Input_IsHeld(INPUT.UP) && _vspd < 0) {
            _vspd = max(_vspd, -1);
        }
    }
    
    // Vertical movement and collision resolution
    var v_step = _vspd / 10;
    repeat (10) {
        if (v_step > 0) {
            // Moving down (falling)
            if (!position_meeting(x, y + sprite_height/2 + v_step, block)) {
                y += v_step;
            } else {
                // Align to ground
                while (!position_meeting(x, y + sprite_height/2 + 0.1, block)) {
                    y += 0.1;
                }
                _vspd = 0;
                break;
            }
        } else if (v_step < 0) {
            // Moving up (jumping)
            if (!position_meeting(x, y - sprite_height/2 + v_step, block)) {
                y += v_step;
            } else {
                // Hit ceiling
                _vspd = 0;
                break;
            }
        }
    }
}
