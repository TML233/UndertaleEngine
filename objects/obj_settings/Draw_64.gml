draw_set_color(c_white);
draw_set_font(font_mars_needs_cunnilingus);

draw_set_halign(fa_center);
draw_text_transformed(320, 20, "--- CONTROL & AUDIO SETTINGS ---", 2, 2, 0);

draw_set_halign(fa_left);
var start_y = 65;
var spacing = 28;

for (var i = 0; i < array_length(_options); i++) {
    var option_text = _options[i];
    var text_y = start_y + i * spacing;
    
    if (i < 7) {
        var key_code = Input_GetBindButton(_inputs[i]);
        var key_name = GetKeyName(key_code);
        
        if (_binding && _choice == i) {
            draw_text_transformed(160, text_y, option_text + ": [Press a key...]", 2, 2, 0);
        } else {
            draw_text_transformed(160, text_y, option_text + ": " + key_name, 2, 2, 0);
        }
    } else if (i == 7) {
        var vol = Storage_GetSettings().Get("general").Get("vol_master", 1);
        draw_text_transformed(160, text_y, option_text + ": " + string(round(vol * 100)) + "%", 2, 2, 0);
    } else if (i == 8) {
        var vol = Storage_GetSettings().Get("general").Get("vol_bgm", 1);
        draw_text_transformed(160, text_y, option_text + ": " + string(round(vol * 100)) + "%", 2, 2, 0);
    } else if (i == 9) {
        var vol = Storage_GetSettings().Get("general").Get("vol_sfx", 1);
        draw_text_transformed(160, text_y, option_text + ": " + string(round(vol * 100)) + "%", 2, 2, 0);
    } else if (i == 10) {
        var fs = Storage_GetSettings().Get("general").Get("fullscreen", false);
        draw_text_transformed(160, text_y, option_text + ": " + (fs ? "ON" : "OFF"), 2, 2, 0);
    } else {
        draw_text_transformed(160, text_y, option_text, 2, 2, 0);
    }
}

var indicator_y = start_y + _choice * spacing + 12;
draw_sprite_ext(spr_battle_soul_red, 0, 130, indicator_y, 2, 2, 0, c_white, 1);
