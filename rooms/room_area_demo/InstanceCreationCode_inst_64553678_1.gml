cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"* This is some dialogue.",
"* Did you know?"
]);

cutscene_dialogue(cutscene, [
"* You can even define dialogue&  in separate actions.",
"* Even more, using this..."
]);

cutscene_dialogue(cutscene, [
"* The textbox doesn't even&  disappear for a single frame!",
]);

cutscene_wait(cutscene, 30);
cutscene_char_move(cutscene, char_player, DIR.DOWN, 40);
cutscene_wait(cutscene, 30);
cutscene_char_move(cutscene, char_player, DIR.UP, 40);

cutscene_choice(cutscene,
"* Pretty cool, right?",
"    {choice 0}No               {choice 1}Yes         ",
function(cutscene, choice) {
	if choice == 0 {
		cutscene_play_sound(cutscene, snd_damage, 0, 0);
		cutscene_dialogue(cutscene, "* Oh... it isn't...");
	} else {
		cutscene_dialogue(cutscene, "* Knew you would agree!");	
	}
});

cutscene_start_encounter(cutscene, 0);

cutscene_dialogue(cutscene, "* That sure was a tough battle");

cutscene_player_move(cutscene, true);