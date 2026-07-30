dist -= spd;

x = battle_board.x + lengthdir_x(dist, dir);
y = battle_board.y + lengthdir_y(dist, dir);

// Shield collision check
if (dist <= 26 && dist >= 18) {
    if (instance_exists(battle_soul_green) && battle_soul_green._dir == dir) {
        audio_play_sound(snd_menu_confirm, 0, false); // Block sound
        instance_destroy();
        exit;
    }
}

// Soul hit check
if (dist <= 0) {
    Battle_CallSoulEventHurt();
    instance_destroy();
}
