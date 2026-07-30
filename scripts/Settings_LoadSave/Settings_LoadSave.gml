function GetKeyName(key) {
    if (key >= ord("A") && key <= ord("Z")) return ansi_char(key);
    if (key >= ord("0") && key <= ord("9")) return ansi_char(key);
    switch (key) {
        case vk_enter: return "ENTER";
        case vk_shift: return "SHIFT";
        case vk_control: return "CTRL";
        case vk_alt: return "ALT";
        case vk_space: return "SPACE";
        case vk_up: return "UP";
        case vk_down: return "DOWN";
        case vk_left: return "LEFT";
        case vk_right: return "RIGHT";
        case ord("Z"): return "Z";
        case ord("X"): return "X";
        case ord("C"): return "C";
        case vk_escape: return "ESCAPE";
        case vk_backspace: return "BACKSPACE";
        case vk_tab: return "TAB";
        default: return "KEY " + string(key);
    }
}

function Input_GetBindButton(input) {
    var map = global._gmu_input;
    if (ds_map_exists(map, input)) {
        var list = ds_map_find_value(map, input);
        if (ds_list_size(list) > 0) {
            var map_bind = ds_list_find_value(list, 0);
            return ds_map_find_value(map_bind, "button");
        }
    }
    return -1;
}

function Settings_Load() {
    var s = Storage_GetSettings();
    s.LoadFromFile();
    var z = s.Get("general");
    
    var inputs = [INPUT.UP, INPUT.DOWN, INPUT.LEFT, INPUT.RIGHT, INPUT.CONFIRM, INPUT.CANCEL, INPUT.MENU];
    var defaults = [vk_up, vk_down, vk_left, vk_right, vk_enter, vk_shift, vk_control];
    var default_names = ["key_up", "key_down", "key_left", "key_right", "key_confirm", "key_cancel", "key_menu"];
    
    for (var i = 0; i < array_length(inputs); i++) {
        var key_name = default_names[i];
        var key_code = z.Get(key_name, -1);
        if (key_code == -1) {
            key_code = defaults[i];
            z.Set(key_name, key_code);
        }
        
        Input_Unbind(inputs[i]);
        Input_Bind(inputs[i], INPUT_TYPE.KEYBOARD, 0, key_code);
        
        // Bind secondary default keys for convenience
        if (inputs[i] == INPUT.CONFIRM && key_code != ord("Z")) {
            Input_Bind(INPUT.CONFIRM, INPUT_TYPE.KEYBOARD, 0, ord("Z"));
        }
        if (inputs[i] == INPUT.CANCEL && key_code != ord("X")) {
            Input_Bind(INPUT.CANCEL, INPUT_TYPE.KEYBOARD, 0, ord("X"));
        }
        if (inputs[i] == INPUT.MENU && key_code != ord("C")) {
            Input_Bind(INPUT.MENU, INPUT_TYPE.KEYBOARD, 0, ord("C"));
        }
    }
    
    // Load audio and window settings
    var master_vol = z.Get("vol_master", 1);
    var bgm_vol = z.Get("vol_bgm", 1);
    var sfx_vol = z.Get("vol_sfx", 1);
    var fs = z.Get("fullscreen", false);
    
    audio_master_gain(master_vol);
    window_set_fullscreen(fs);
    
    // Apply SFX volume to SFX assets
    var asset = 0;
    while (audio_exists(asset)) {
        var name = audio_get_name(asset);
        if (string_pos("snd_", name) == 1) {
            audio_sound_gain(asset, sfx_vol, 0);
        }
        asset++;
    }
    
    s.SaveToFile();
}

function Settings_Save() {
    var s = Storage_GetSettings();
    var z = s.Get("general");
    
    var inputs = [INPUT.UP, INPUT.DOWN, INPUT.LEFT, INPUT.RIGHT, INPUT.CONFIRM, INPUT.CANCEL, INPUT.MENU];
    var default_names = ["key_up", "key_down", "key_left", "key_right", "key_confirm", "key_cancel", "key_menu"];
    
    for (var i = 0; i < array_length(inputs); i++) {
        var key_code = Input_GetBindButton(inputs[i]);
        z.Set(default_names[i], key_code);
    }
    
    s.SaveToFile();
}
