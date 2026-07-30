event_inherited();

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable) {
    var SPD = Player_GetSpdTotal();
    var SPD = (Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
    
    repeat (SPD * 10) {
        if (Input_IsHeld(INPUT.UP)) {
            if (!position_meeting(x, y - sprite_height/2, block)) {
                y -= 0.1;
            }
        }
        if (Input_IsHeld(INPUT.DOWN)) {
            if (!position_meeting(x, y + sprite_height/2, block)) {
                y += 0.1;
            }
        }
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
    
    // Shoot yellow bullet when confirm is pressed
    if (Input_IsPressed(INPUT.CONFIRM)) {
        instance_create_depth(x, y - 8, DEPTH_BATTLE.SOUL - 1, battle_bullet_yellow);
        audio_play_sound(snd_menu_switch, 0, false);
    }
}
