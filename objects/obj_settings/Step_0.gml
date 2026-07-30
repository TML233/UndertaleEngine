if (_binding) {
    if (keyboard_check_pressed(vk_anykey)) {
        var key = keyboard_lastkey;
        if (key != vk_escape) {
            var input_to_bind = _inputs[_choice];
            Input_Unbind(input_to_bind);
            Input_Bind(input_to_bind, INPUT_TYPE.KEYBOARD, 0, key);
            Settings_Save();
        }
        _binding = false;
        audio_play_sound(snd_menu_confirm, 0, false);
    }
    exit;
}

var move_up = keyboard_check_pressed(vk_up) || Input_IsPressed(INPUT.UP);
var move_down = keyboard_check_pressed(vk_down) || Input_IsPressed(INPUT.DOWN);
var confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) || Input_IsPressed(INPUT.CONFIRM);
var cancel = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")) || Input_IsPressed(INPUT.CANCEL);

var change_left = keyboard_check_pressed(vk_left) || Input_IsPressed(INPUT.LEFT);
var change_right = keyboard_check_pressed(vk_right) || Input_IsPressed(INPUT.RIGHT);

if (move_up) {
    if (_choice > 0) {
        _choice -= 1;
        audio_play_sound(snd_menu_switch, 0, false);
    }
}
if (move_down) {
    if (_choice < array_length(_options) - 1) {
        _choice += 1;
        audio_play_sound(snd_menu_switch, 0, false);
    }
}

// Volume and Fullscreen adjustment
if (_choice == 7) { // MASTER VOLUME
    var vol = Storage_GetSettings().Get("general").Get("vol_master", 1);
    if (change_left && vol > 0) {
        vol = max(0, vol - 0.1);
        audio_master_gain(vol);
        Storage_GetSettings().Get("general").Set("vol_master", vol);
        Storage_GetSettings().SaveToFile();
        audio_play_sound(snd_menu_switch, 0, false);
    }
    if (change_right && vol < 1) {
        vol = min(1, vol + 0.1);
        audio_master_gain(vol);
        Storage_GetSettings().Get("general").Set("vol_master", vol);
        Storage_GetSettings().SaveToFile();
        audio_play_sound(snd_menu_switch, 0, false);
    }
} else if (_choice == 8) { // BGM VOLUME
    var vol = Storage_GetSettings().Get("general").Get("vol_bgm", 1);
    if (change_left && vol > 0) {
        vol = max(0, vol - 0.1);
        Storage_GetSettings().Get("general").Set("vol_bgm", vol);
        Storage_GetSettings().SaveToFile();
        for (var i = 0; i < 6; i++) {
            if (BGM_IsPlaying(i)) {
                audio_sound_gain(BGM_GetID(i), vol, 0);
            }
        }
        audio_play_sound(snd_menu_switch, 0, false);
    }
    if (change_right && vol < 1) {
        vol = min(1, vol + 0.1);
        Storage_GetSettings().Get("general").Set("vol_bgm", vol);
        Storage_GetSettings().SaveToFile();
        for (var i = 0; i < 6; i++) {
            if (BGM_IsPlaying(i)) {
                audio_sound_gain(BGM_GetID(i), vol, 0);
            }
        }
        audio_play_sound(snd_menu_switch, 0, false);
    }
} else if (_choice == 9) { // SFX VOLUME
    var vol = Storage_GetSettings().Get("general").Get("vol_sfx", 1);
    if (change_left && vol > 0) {
        vol = max(0, vol - 0.1);
        Storage_GetSettings().Get("general").Set("vol_sfx", vol);
        Storage_GetSettings().SaveToFile();
        var asset = 0;
        while (audio_exists(asset)) {
            var name = audio_get_name(asset);
            if (string_pos("snd_", name) == 1) {
                audio_sound_gain(asset, vol, 0);
            }
            asset++;
        }
        audio_play_sound(snd_menu_switch, 0, false);
    }
    if (change_right && vol < 1) {
        vol = min(1, vol + 0.1);
        Storage_GetSettings().Get("general").Set("vol_sfx", vol);
        Storage_GetSettings().SaveToFile();
        var asset = 0;
        while (audio_exists(asset)) {
            var name = audio_get_name(asset);
            if (string_pos("snd_", name) == 1) {
                audio_sound_gain(asset, vol, 0);
            }
            asset++;
        }
        audio_play_sound(snd_menu_switch, 0, false);
    }
} else if (_choice == 10) { // FULLSCREEN
    if (change_left || change_right || confirm) {
        var fs = Storage_GetSettings().Get("general").Get("fullscreen", false);
        fs = !fs;
        window_set_fullscreen(fs);
        Storage_GetSettings().Get("general").Set("fullscreen", fs);
        Storage_GetSettings().SaveToFile();
        audio_play_sound(snd_menu_confirm, 0, false);
    }
}

if (confirm) {
    if (_choice < 7) {
        _binding = true;
        keyboard_lastkey = -1;
        audio_play_sound(snd_menu_confirm, 0, false);
    } else if (_choice == 11) {
        // Reset to default bindings and default volumes
        var defaults = [vk_up, vk_down, vk_left, vk_right, vk_enter, vk_shift, vk_control];
        for (var i = 0; i < 7; i++) {
            Input_Unbind(_inputs[i]);
            Input_Bind(_inputs[i], INPUT_TYPE.KEYBOARD, 0, defaults[i]);
        }
        
        Input_Bind(INPUT.CONFIRM, INPUT_TYPE.KEYBOARD, 0, ord("Z"));
        Input_Bind(INPUT.CANCEL, INPUT_TYPE.KEYBOARD, 0, ord("X"));
        Input_Bind(INPUT.MENU, INPUT_TYPE.KEYBOARD, 0, ord("C"));
        
        var z = Storage_GetSettings().Get("general");
        z.Set("vol_master", 1);
        z.Set("vol_bgm", 1);
        z.Set("vol_sfx", 1);
        z.Set("fullscreen", false);
        
        audio_master_gain(1);
        window_set_fullscreen(false);
        for (var i = 0; i < 6; i++) {
            if (BGM_IsPlaying(i)) {
                audio_sound_gain(BGM_GetID(i), 1, 0);
            }
        }
        var asset = 0;
        while (audio_exists(asset)) {
            var name = audio_get_name(asset);
            if (string_pos("snd_", name) == 1) {
                audio_sound_gain(asset, 1, 0);
            }
            asset++;
        }
        
        Settings_Save();
        audio_play_sound(snd_menu_confirm, 0, false);
    } else if (_choice == 12) {
        audio_play_sound(snd_menu_cancel, 0, false);
        room_goto(room_menu);
    }
}

if (cancel) {
    audio_play_sound(snd_menu_cancel, 0, false);
    room_goto(room_menu);
}
