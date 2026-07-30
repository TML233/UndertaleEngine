event_inherited();

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable) {
    var SPD = Player_GetSpdTotal();
    var SPD = (Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
    
    // Horizontal movement along threads
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
    
    // Switch between lines
    if (Input_IsPressed(INPUT.UP)) {
        if (_line > 0) {
            _line -= 1;
            audio_play_sound(snd_encounter_soul_move, 0, false);
        }
    }
    if (Input_IsPressed(INPUT.DOWN)) {
        if (_line < 2) {
            _line += 1;
            audio_play_sound(snd_encounter_soul_move, 0, false);
        }
    }
    
    // Calculate thread y positions
    var y_top = battle_board.y - battle_board.up + 20;
    var y_mid = battle_board.y;
    var y_bot = battle_board.y + battle_board.down - 20;
    
    var target_y = y_mid;
    if (_line == 0) target_y = y_top;
    else if (_line == 2) target_y = y_bot;
    
    y += (target_y - y) * 0.25;
}
